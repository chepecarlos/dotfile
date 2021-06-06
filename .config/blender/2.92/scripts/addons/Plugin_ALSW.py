import bpy

bl_info = {
    "name": "Heramientas ALSW",
    "author": "Jose Carlos (ALSW)",
    "version": (0, 0, 1),
    "blender": (2, 92, 0),
    "license": "GPL",
    "description": "Heramientas Extra para Sequencer",
    "category": "Object",
}

def MostarMensajeBot(message="", title="Message Box", icon='INFO'):
    def draw(self, context):
        self.layout.label(text=message)
    bpy.context.window_manager.popup_menu(draw, title=title, icon=icon)


class insertVideo(bpy.types.Operator):
    bl_idname = "scene.invideo"
    bl_label = "Insert Video"

    def execute(self, context):

        VideoActual = "/home/chepecarlos/2.VideoMusicales/demo/POP.mkv"

        # context.area.type = 'SEQUENCE_EDITOR'
        # FrameActual = bpy.context.scene.frame_current

        if len(bpy.context.selected_sequences) > 0:
            Inicio = context.selected_sequences[0].frame_final_start
            Final = context.selected_sequences[0].frame_final_end
            Canal = context.selected_sequences[0].channel + 1

            bpy.ops.sequencer.sound_strip_add(filepath=VideoActual, frame_start=Inicio, channel=Canal)

            context.selected_sequences[0].show_waveform = True

            bpy.ops.sequencer.split(frame=Final, channel=Canal, type='SOFT', side='RIGHT')

            bpy.ops.sequencer.delete()

            # bpy.context.selected_sequences[0].use_proxy = True
        else:
            MostarMensajeBot("Selecione una pista", title="Error", icon="ERROR")
        return{'FINISHED'}

class superzoon(bpy.types.Operator):
    bl_idname = "scene.superzoon"
    bl_label = "Super Zoon"
    PosicionY = 0
    PosicionX = 0

    def execute(self, context):

        if len(bpy.context.selected_sequences) > 0:
            print(PosicionY)
            ClipActual = bpy.context.selected_sequences[0]
            PosicionX = ClipActual.transform.offset_x
            PosicionY = ClipActual.transform.offset_y
            EscalaX = ClipActual.transform.scale_x
            EscalaY = ClipActual.transform.scale_y
            ClipActual.transform.scale_x = EscalaX*2
            ClipActual.transform.scale_y = EscalaY*2
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
        # obj = context.object

        row = layout.row()
        row.label(text="Musica Velocidad")
        row = layout.row()
        row.operator("scene.invideo", text="Agregar Sonido MrTee")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="Has Zoon")

addon_keymaps = []

def add_hotkey():
    print("Agregando Teclas Rapida")
    wm = bpy.context.window_manager
    kc = wm.keyconfigs.addon

    km = kc.keymaps.new(name='Sequencer', space_type='SEQUENCE_EDITOR')

    kmi = km.keymap_items.new("scene.invideo", 'M', 'PRESS', ctrl=True, shift=False)
    addon_keymaps.append((km, kmi))

def remove_hotkey():
    for km, kmi in addon_keymaps:
        km.keymap_items.remove(kmi)
    addon_keymaps.clear()


def register():
    bpy.utils.register_class(MyPanel)
    bpy.utils.register_class(insertVideo)
    bpy.utils.register_class(superzoon)
    add_hotkey()


def unregister():
    remove_hotkey()
    bpy.utils.unregister_class(MyPanel)
    bpy.utils.unregister_class(insertVideo)
    bpy.utils.unregister_class(superzoon)


if __name__ == "__main__":
    register()
