import bpy
import math

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

    pista : EnumProperty(
        name="Type of radius",
        description="Choose type of atom radius",
        items=(('alsw', "ALSW", "ALSW base"),
               ('mrtee', "MrTee", "Musica MrTee"),
               ('p', "pollo", "musica pollo")),
        default='mrtee',)

    # Verifica que este alguna secuencia selecionada
    @classmethod
    def poll(cls, context):
        return context.selected_sequences

    def execute(self, context):

        if self.pista == 'alsw':
            return{'FINISHED'}
        elif self.pista == 'mrtee':
            VideoActual = "/home/chepecarlos/2.VideoMusicales/demo/POP.mkv"
        else:
            return{'FINISHED'}

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

class superaliniar(bpy.types.Operator):
    bl_idname = "scene.superaliniar"
    bl_label = "super Aliniar"
    bl_description = "Alinea los clips"
    bl_options = {"REGISTER", "UNDO"}

    alineacion_horizontal : EnumProperty(
        name="Alineacion Horizontal de clip",
        description="Alina el clip",
        items=(('derecha', "Derecha", "ALSW base"),
               ('izquierda', "Izquierda", "Musica MrTee"),
               ('centro', "Centro", "musica pollo"),
               ('nada', "Nada", "ninguna")),
        default='nada',)

    alineacion_vertical : EnumProperty(
        name="Alineacion Vertical de clip",
        description="Alina el clip",
        items=(('ariba', "Ariba", "ALSW base"),
               ('abajo', "Abajo", "Musica MrTee"),
               ('centro', "Centro", "musica pollo"),
               ('nada', "Nada", "ninguna")),
        default='nada',)

    # Verifica que este alguna secuencia selecionada
    @classmethod
    def poll(cls, context):
        # Todo: Solo activar con clip de video
        if len(bpy.context.selected_sequences) > 0:
            ClipActual = context.selected_sequences[0]
            if ClipActual.type != "MOVIE":
                return False
        return context.selected_sequences

    def execute(self, context):

        if len(bpy.context.selected_sequences) > 0:
            ClipActual = context.selected_sequences[0]
            if ClipActual.type != "MOVIE":
                return{'FINISHED'}

            ClipActual = context.selected_sequences[0]
            EsenaActual = context.scene.sequence_editor.active_strip.elements[0]
            AnchoCanva = context.scene.render.resolution_x
            AltoCanva = context.scene.render.resolution_y
            Alto = EsenaActual.orig_height
            Ancho = EsenaActual.orig_width
            PosicionX = ClipActual.transform.offset_x
            PosicionY = ClipActual.transform.offset_y
            EscalaX = ClipActual.transform.scale_x
            EscalaY = ClipActual.transform.scale_y

            if self.alineacion_vertical == "centro":
                ClipActual.transform.offset_y = 0
            elif self.alineacion_vertical == "ariba":
                AltoClip = Alto * EscalaY
                ValorY =  AltoCanva/2 - AltoClip/2
                ClipActual.transform.offset_y = ValorY
            elif self.alineacion_vertical == "abajo":
                AltoClip = Alto * EscalaY
                ValorY =  AltoCanva/2 - AltoClip/2
                ClipActual.transform.offset_y = -ValorY


            if self.alineacion_horizontal == "centro":
                ClipActual.transform.offset_x = 0
            elif self.alineacion_horizontal == "izquierda":
                AnchoClip = Ancho * EscalaX
                ValorX = AnchoCanva/2 - AnchoClip/2
                ClipActual.transform.offset_x = -ValorX
            elif self.alineacion_horizontal == "derecha":
                AnchoClip = Ancho * EscalaX
                ValorX = AnchoCanva/2 - AnchoClip/2
                ClipActual.transform.offset_x = ValorX

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
        # Todo: Solo activar con clip de video
        if len(bpy.context.selected_sequences) > 0:
            ClipActual = context.selected_sequences[0]
            if ClipActual.type != "MOVIE":
                return False
        return context.selected_sequences

    def execute(self, context):

        if len(bpy.context.selected_sequences) > 0:
            ClipActual = context.selected_sequences[0]

            if ClipActual.type != "MOVIE":
                return{'FINISHED'}

            zoon = self.zoon
            ClipActual = context.selected_sequences[0]
            EsenaActual = context.scene.sequence_editor.active_strip.elements[0]
            AnchoCamva = context.scene.render.resolution_x
            AltoCamva = context.scene.render.resolution_y
            Alto = EsenaActual.orig_height
            Ancho = EsenaActual.orig_width
            PosicionX = ClipActual.transform.offset_x
            PosicionY = ClipActual.transform.offset_y
            EscalaX = ClipActual.transform.scale_x
            EscalaY = ClipActual.transform.scale_y

            Relacion = math.sqrt(Alto*Alto + Ancho*Ancho)

            RelacionCanva =  math.sqrt(AnchoCamva*AnchoCamva + AltoCamva*AltoCamva)

            MultiplicadorUnitario = RelacionCanva/Relacion

            ClipActual.transform.scale_x = MultiplicadorUnitario * zoon
            ClipActual.transform.scale_y = MultiplicadorUnitario * zoon
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
        row.label(text="Musica sobre clip",  icon="SOUND")
        row = layout.row()
        ops = row.operator("scene.audioespecial", text="MrTee")
        ops.pista = "mrtee"
        ops = row.operator("scene.audioespecial", text="ALSW")
        ops.pista = "alsw"
        layout.separator()

        row = layout.row()
        row.label(text="Alineacion")
        row = layout.row()
        ops = row.operator("scene.superaliniar", text="Ariba")
        ops.alineacion_vertical = "ariba"
        row = layout.row()
        ops = row.operator("scene.superaliniar", text="Izquierda")
        ops.alineacion_horizontal = "izquierda"
        ops = row.operator("scene.superaliniar", text="Centro")
        ops.alineacion_horizontal = "centro"
        ops = row.operator("scene.superaliniar", text="Derecha")
        ops.alineacion_horizontal = "derecha"
        row = layout.row()
        ops = row.operator("scene.superaliniar", text="Abajo")
        ops.alineacion_vertical = "abajo"

        row = layout.row()
        row.label(text="Zoon", icon="ZOOM_IN")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="0.25X")
        ops.zoon = 0.25
        ops = row.operator("scene.superzoon", text="0.5X")
        ops.zoon = 0.5
        ops = row.operator("scene.superzoon", text="0.75X")
        ops.zoon = 0.75
        row = layout.row()
        ops = row.operator("scene.superzoon", text="1X")
        ops.zoon = 1
        row = layout.row()
        ops = row.operator("scene.superzoon", text="2X")
        ops.zoon = 2
        ops = row.operator("scene.superzoon", text="4X")
        ops.zoon = 4
        ops = row.operator("scene.superzoon", text="8X")
        ops.zoon = 8

        row = layout.row()
        row.label(text="Corte")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="L")
        ops = row.operator("scene.superzoon", text="J")

        row = layout.row()
        row.label(text="Corte")

addon_keymaps = []

# Registar clases
classes = [
    MyPanel,
    audioespecial,
    superzoon,
    superaliniar
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
