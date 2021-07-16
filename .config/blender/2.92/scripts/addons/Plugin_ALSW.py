import bpy
import math
import yaml

from FuncionesArchivos import ObtenerValor

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
    """Muestra mensaje en pantalla."""
    def draw(self, context):
        self.layout.label(text=message)
    bpy.context.window_manager.popup_menu(draw, title=title, icon=icon)


class audioespecial(bpy.types.Operator):
    bl_idname = "scene.audioespecial"
    bl_label = "Insert Video"
    bl_description = "Insertar pista de audio sobre otra clip"
    bl_options = {"REGISTER", "UNDO"}

    pista: EnumProperty(
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
            VideoActual = ObtenerValor("data/blender.json", "clip")
            print(VideoActual)
        elif self.pista == 'mrtee':
            VideoActual = "/home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/1.Video/3.Musica/1.Mr_Tea.mp3"
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
            context.selected_sequences[0].volume = 0.3

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

    macros: BoolProperty(
        name="macro",
        description="funcion con macro para alinacion",
        default=False
    )

    alineacion_horizontal: EnumProperty(
        name="Alineacion Horizontal de clip",
        description="Alina el clip",
        items=(('derecha', "Derecha", "ALSW base"),
               ('izquierda', "Izquierda", "Musica MrTee"),
               ('centro', "Centro", "musica pollo"),
               ('nada', "Nada", "ninguna")),
        default='nada',)

    alineacion_vertical: EnumProperty(
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

            if self.macros:
                self.alineacion_vertical = ObtenerValor("data/blender.json", "alineacion_vertical")
                self.alineacion_horizontal = ObtenerValor("data/blender.json", "alineacion_horizontal")

            ClipActual = context.selected_sequences[0]
            EsenaActual = context.scene.sequence_editor.active_strip.elements[0]
            AnchoCanva = context.scene.render.resolution_x
            AltoCanva = context.scene.render.resolution_y
            Alto = EsenaActual.orig_height
            Ancho = EsenaActual.orig_width
            # Codigo feo, pero funciona
            if ClipActual.use_proxy:
                # Buscar una forma no sucia
                Alto *= 4
                Ancho *= 4
            PosicionX = ClipActual.transform.offset_x
            PosicionY = ClipActual.transform.offset_y
            EscalaX = ClipActual.transform.scale_x
            EscalaY = ClipActual.transform.scale_y

            if self.alineacion_vertical == "centro":
                ClipActual.transform.offset_y = 0
            elif self.alineacion_vertical == "ariba":
                AltoClip = Alto * EscalaY
                ValorY = AltoCanva / 2 - AltoClip / 2
                ClipActual.transform.offset_y = ValorY
            elif self.alineacion_vertical == "abajo":
                AltoClip = Alto * EscalaY
                ValorY = AltoCanva / 2 - AltoClip / 2
                ClipActual.transform.offset_y = -ValorY

            if self.alineacion_horizontal == "centro":
                ClipActual.transform.offset_x = 0
            elif self.alineacion_horizontal == "izquierda":
                AnchoClip = Ancho * EscalaX
                ValorX = AnchoCanva / 2 - AnchoClip / 2
                ClipActual.transform.offset_x = -ValorX
            elif self.alineacion_horizontal == "derecha":
                AnchoClip = Ancho * EscalaX
                ValorX = AnchoCanva / 2 - AnchoClip / 2
                ClipActual.transform.offset_x = ValorX

        return{'FINISHED'}


class superzoon(bpy.types.Operator):
    bl_idname = "scene.superzoon"
    bl_label = "Super Zoon"
    bl_description = "Cambia el zoon en clip"
    bl_options = {"REGISTER", "UNDO"}

    macros: BoolProperty(
        name="macro",
        description="funcion con macro para zoon",
        default=False
    )

    incrementro: BoolProperty(
        name="Incrementro",
        description="incremento el zoon",
        default=False
    )

    zoon: FloatProperty(
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

            ClipActual = context.selected_sequences[0]
            EsenaActual = context.scene.sequence_editor.active_strip.elements[0]
            AnchoCamva = context.scene.render.resolution_x
            AltoCamva = context.scene.render.resolution_y
            Alto = EsenaActual.orig_height
            Ancho = EsenaActual.orig_width
            # Codigo feo, pero funciona
            if ClipActual.use_proxy:
                # Buscar una forma no sucia
                Alto *= 4
                Ancho *= 4
            PosicionX = ClipActual.transform.offset_x
            PosicionY = ClipActual.transform.offset_y
            EscalaX = ClipActual.transform.scale_x
            EscalaY = ClipActual.transform.scale_y

            AnchoClip = Ancho * EscalaX
            AltoClip = Alto * EscalaY

            Relacion = math.sqrt(Alto * Alto + Ancho * Ancho)

            RelacionCanva = math.sqrt(AnchoCamva * AnchoCamva + AltoCamva * AltoCamva)

            RelacionRelativa = math.sqrt(AnchoClip * AnchoClip + AltoClip * AltoClip)

            MultiplicadorUnitario = RelacionCanva / Relacion

            if self.macros:
                if self.incrementro:
                    Aumentar = ObtenerValor("data/blender.json", "aumentar")
                    MultiplicadorRelativo = RelacionRelativa / Relacion
                    zoon = MultiplicadorRelativo + Aumentar
                else:
                    zoon = ObtenerValor("data/blender.json", "zoon")
            else:
                zoon = self.zoon

            ClipActual.transform.scale_x = MultiplicadorUnitario * zoon
            ClipActual.transform.scale_y = MultiplicadorUnitario * zoon
        else:
            MostarMensajeBox("Selecione una pista", title="Error", icon="ERROR")

        return{'FINISHED'}


class MyPanel(bpy.types.Panel):
    """Creates a Panel in the Object properties window."""

    bl_label = "Panel ALSW"
    bl_idname = "my.panel"
    bl_space_type = 'SEQUENCE_EDITOR'
    bl_region_type = 'UI'

    def draw(self, context):
        """Dibujar el panel."""
        layout = self.layout

        row = layout.row()
        row.label(text="Musica sobre clip", icon="SOUND")
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
        ops.macros = False
        ops.alineacion_vertical = "ariba"

        row = layout.row()
        ops = row.operator("scene.superaliniar", text="Izquierda")
        ops.macros = False
        ops.alineacion_horizontal = "izquierda"
        ops = row.operator("scene.superaliniar", text="Centro")
        ops.macros = False
        ops.alineacion_horizontal = "centro"
        ops.alineacion_vertical = "centro"
        ops = row.operator("scene.superaliniar", text="Derecha")
        ops.macros = False
        ops.alineacion_horizontal = "derecha"

        row = layout.row()
        ops = row.operator("scene.superaliniar", text="Abajo")
        ops.macros = False
        ops.alineacion_vertical = "abajo"

        row = layout.row()
        row.label(text="Zoon", icon="ZOOM_IN")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="0.25X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 0.25
        ops = row.operator("scene.superzoon", text="0.5X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 0.5
        ops = row.operator("scene.superzoon", text="0.75X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 0.75
        row = layout.row()
        ops = row.operator("scene.superzoon", text="1X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 1
        row = layout.row()
        ops = row.operator("scene.superzoon", text="2X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 2
        ops = row.operator("scene.superzoon", text="3X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 3
        ops = row.operator("scene.superzoon", text="4X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 4
        ops = row.operator("scene.superzoon", text="8X")
        ops.incrementro = False
        ops.macros = False
        ops.zoon = 8

        row = layout.row()
        row.label(text="Corte")
        row = layout.row()
        ops = row.operator("scene.superzoon", text="L")
        ops = row.operator("scene.superzoon", text="J")
        ops = row.operator("scene.superzoon", text="A")

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
    """Agregando Macros de Teclado."""
    wm = bpy.context.window_manager
    kc = wm.keyconfigs.addon

    km = kc.keymaps.new(name='Sequencer', space_type='SEQUENCE_EDITOR')

    # kmi = km.keymap_items.new("scene.audioespecial", 'M', 'PRESS', ctrl=True, shift=False)
    # kmi.properties.pista = "mrtee"

    kmi = km.keymap_items.new("scene.audioespecial", 'O', 'PRESS', ctrl=True, shift=True)
    kmi.properties.pista = "alsw"

    kmi = km.keymap_items.new("scene.superaliniar", type="R", value="PRESS", ctrl=True, shift=False)
    kmi.properties.macros = True

    kmi = km.keymap_items.new("scene.superzoon", type="P", value="PRESS", ctrl=True, shift=False)
    kmi.properties.macros = True
    kmi.properties.incrementro = False

    kmi = km.keymap_items.new("scene.superzoon", type="U", value="PRESS", ctrl=True, shift=False)
    kmi.properties.macros = True
    kmi.properties.incrementro = True

    addon_keymaps.append((km, kmi))


def remove_hotkey():
    """Removiendo Macros de Teclado."""
    for km, kmi in addon_keymaps:
        km.keymap_items.remove(kmi)
    addon_keymaps.clear()


def register():
    """Regista funciones y clases."""
    from bpy.utils import register_class

    for cls in classes:
        register_class(cls)
    add_hotkey()


def unregister():
    """Quita funciones y clases."""
    remove_hotkey()
    from bpy.utils import unregister_class
    for cls in reversed(classes):
        unregister_class(cls)


if __name__ == "__main__":
    register()
