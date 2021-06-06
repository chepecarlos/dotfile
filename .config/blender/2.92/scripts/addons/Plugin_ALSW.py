import bpy

from bpy.props import (
        BoolProperty,
        FloatProperty,
        EnumProperty,
        IntProperty,
        )

bl_info = {
    "name": "Heramientas ALSW",
    "author": "Jose Carlos (ALSW)",
    "version": (0, 0, 1),
    "blender": (2, 92, 0),
    "license": "GPL",
    "description": "Heramientas Extra para Sequencer",
    "category": "Object",
}

def MostarMensajeBox(message="", title="Message Box", icon='INFO'):
    def draw(self, context):
        self.layout.label(text=message)
    bpy.context.window_manager.popup_menu(draw, title=title, icon=icon)


class audioespecial(bpy.types.Operator):
    bl_idname = "scene.audioespecial"
    bl_label = "Insert Video"
    bl_description = "Insertar pista de audio sobre otra clip"
    bl_options = {"REGISTER", "UNDO"}

    # pista : EnumProperty(
    #         items=(
    #             (0, 'alsw', "ALSW"),
    #             (1, 'mrtee', "MrTee"),
    #             ),
    #         name="Pista",
    #         default= 0,
    #         description="Pista de audio"
    #         )

    pollo : FloatProperty(
            name="pollo",
            description="zoon para clip",
            default=1,
            min=-10, max=10
            )

    pista: EnumProperty(
        name="Type of radius",
        description="Choose type of atom radius",
        items=(('alsw', "ALSW", "Use pre-defined radius"),
               ('mrtee', "MrTee", "Use atomic radius"),
               ('p', "van der Waals", "Use van der Waals radius")),
        default='mrtee',)

    # Verifica que este alguna secuencia selecionada
    @classmethod
    def poll(cls, context):
        return context.selected_sequences

    def execute(self, context):
        print("Pista ", self.pista)
        VideoActual = "/home/chepecarlos/2.VideoMusicales/demo/POP.mkv"

        # context.area.type = 'SEQUENCE_EDITOR'
        # FrameActual = bpy.context.scene.frame_current

        if len(context.selected_sequences) > 0:
            Inicio = context.selected_sequences[0].frame_final_start
            Final = context.selected_sequences[0].frame_final_end
            Canal = context.selected_sequences[0].channel + 1

            bpy.ops.sequencer.sound_strip_add(filepath=VideoActual, frame_start=Inicio, channel=Canal)

            context.selected_sequences[0].show_waveform = True

            bpy.ops.sequencer.split(frame=Final, channel=Canal, type='SOFT', side='RIGHT')

            bpy.ops.sequencer.delete()

            # bpy.context.selected_sequences[0].use_proxy = True
        else:
            MostarMensajeBox("Selecione una pista", title="Error", icon="ERROR")
        return{'FINISHED'}

class superzoon(bpy.types.Operator):
    bl_idname = "scene.superzoon"
    bl_label = "Super Zoon"
    bl_description = "Cambia el zoon en clip"
    bl_options = {"REGISTER", "UNDO"}

    zoon : FloatProperty(
            name="zoon",
            description="zoon para clip",
            default=1,
            min=-10, max=10
            )

    # Verifica que este alguna secuencia selecionada
    @classmethod
    def poll(cls, context):
        return context.selected_sequences

    def execute(self, context):

        if len(bpy.context.selected_sequences) > 0:
            print("zoon ",self.zoon)

            # ClipActual = bpy.context.selected_sequences[0]
            # PosicionX = ClipActual.transform.offset_x
            # PosicionY = ClipActual.transform.offset_y
            # EscalaX = ClipActual.transform.scale_x
            # EscalaY = ClipActual.transform.scale_y
            # ClipActual.transform.scale_x = EscalaX*2
            # ClipActual.transform.scale_y = EscalaY*2
        else:
            ShowMessageBox("Selecione una pista", title="Error", icon="ERROR")

        return{'FINISHED'}


class MyPanel(bpy.types.Panel):
    """Creates a Panel in the Object properties window"""
    bl_label = "Panel ALSW"
    bl_idname = "my.panel"
    bl_space_type = 'SEQUENCE_EDITOR'
    bl_region_type = 'UI'

    def draw(self, context):
        layout = self.layout

        row = layout.row()
        row.label(text="Musica sobre clip")
        row = layout.row()
        ops = row.operator("scene.audioespecial", text="MrTee")
        ops.pista = "mrtee"
        ops = row.operator("scene.audioespecial", text="ALSW")
        ops.pista = "alsw"

        layout.separator()
        row = layout.row()
        row.label(text="Alineacion")
        row = layout.row()
        row.operator("scene.audioespecial", text="Izquierda")
        row.operator("scene.audioespecial", text="Centro")
        row.operator("scene.audioespecial", text="Derecha")
        row = layout.row()
        row.operator("scene.audioespecial", text="Abajo")
        row.operator("scene.audioespecial", text="Centro")
        row.operator("scene.audioespecial", text="Ariba")

        row = layout.row()
        row.label(text="Zoon", icon="ZOOM_IN")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="0.5X")
        ops.zoon = 0.5
        ops = row.operator("scene.superzoon", text="1X")
        ops.zoon = 1
        ops = row.operator("scene.superzoon", text="2X")
        ops.zoon = 2

addon_keymaps = []

# Registar clases
classes = [
    MyPanel,
    audioespecial,
    superzoon
]

def add_hotkey():
    print("Agregando Teclas Rapida")
    wm = bpy.context.window_manager
    kc = wm.keyconfigs.addon

    km = kc.keymaps.new(name='Sequencer', space_type='SEQUENCE_EDITOR')

    kmi = km.keymap_items.new("scene.audioespecial", 'M', 'PRESS', ctrl=True, shift=False)

    kmi = km.keymap_items.new("scene.superzoon", type="P", value="PRESS", ctrl=True, shift=False)
    kmi.properties.zoon = 1

    addon_keymaps.append((km, kmi))

def remove_hotkey():
    for km, kmi in addon_keymaps:
        km.keymap_items.remove(kmi)
    addon_keymaps.clear()

def register():
    from bpy.utils import register_class

    for cls in classes:
        register_class(cls)
    add_hotkey()


def unregister():
    remove_hotkey()
    from bpy.utils import unregister_class
    for cls in reversed(classes):
        unregister_class(cls)

if __name__ == "__main__":
    register()
