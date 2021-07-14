import json
import os
import yaml
# import logging

from pathlib import Path

# from libreria.FuncionesLogging import ConfigurarLogging
#
# logger = logging.getLogger(__name__)
# ConfigurarLogging(logger)

ArchivoConfig = os.path.join(Path.home(), '.config/elgatoalsw')


def ObtenerValor(Archivo, Atributo, local=True, Depurar=True):
    """Obtiene un Atributo de un Archivo."""
    global ArchivoConfig
    if local:
        Archivo = os.path.join(ArchivoConfig, Archivo)
    if not os.path.exists(Archivo):
        print(f"Archivo no Exite {Archivo}")
        return ""
    if Archivo.endswith(".json"):
        with open(Archivo) as f:
            data = yaml.load(f, Loader=yaml.FullLoader)
    elif Archivo.endswith(".md"):
        with open(Archivo) as f:
            try:
                data = list(yaml.load_all(f, Loader=yaml.SafeLoader))[0]
            except yaml.YAMLError as exc:
                print(f"error con yaml {exc}")
                return ""

    Tipo = type(Atributo)
    if Tipo is list:
        if len(Atributo) >= 2:
            if Atributo[0] in data:
                if Atributo[1] in data[Atributo[0]]:
                    return data[Atributo[0]][Atributo[1]]
    else:
        if Atributo in data:
            return data[Atributo]

    if Depurar:
        print(f"No existe el atributo {Atributo}")
    return None


def SalvarArchivo(Archivo, Data):
    """Sobre escribe data en archivo."""
    Archivo = os.path.join(ArchivoConfig, Archivo)
    with open(Archivo, 'w+') as f:
        json.dump(Data, f, indent=1)


def SalvarValor(Archivo, Atributo, Valor, local=True):
    """Salvar un Valor en Archivo."""
    data = dict()
    if local:
        Archivo = os.path.join(ArchivoConfig, Archivo)
    if Archivo.endswith(".json"):
        if os.path.exists(Archivo):
            with open(Archivo) as f:
                data = yaml.load(f, Loader=yaml.FullLoader)
        else:
            print(f"Archivo no Exite {Archivo}")
    elif Archivo.endswith(".md"):
        with open(Archivo) as f:
            try:
                data = list(yaml.load_all(f, Loader=yaml.SafeLoader))[0]
            except yaml.YAMLError as exc:
                print(f"error con yaml {exc}")

    Tipo = type(Atributo)
    if Tipo is list:
        # TODO Buscar como insertar para mas de nos niveles
        if len(Atributo) >= 2:
            if not Atributo[0] in data:
                data[Atributo[0]] = dict()
            data[Atributo[0]][Atributo[1]] = Valor
    else:
        data[Atributo] = Valor

    with open(Archivo, 'w') as f:
        json.dump(data, f, indent=2)


def UnirPath(Path1, Path2):
    """Une dos direciones."""
    return os.path.join(Path1, Path2)


def RelativoAbsoluto(Path, FolderActual):
    """Convierte Direcion relativas en absolutas."""
    if Path.startswith("./"):
        return UnirPath(FolderActual, QuitarInicio(Path, "./"))
    return Path


def QuitarInicio(text, prefix):
    return text[text.startswith(prefix) and len(prefix):]

# Lo que ya no uso

#
# def ActualizarDato(Archivo, Valor, Atributo):
#     '''Actualiza Valor de un Atributo Archivo'''
#     Archivo = ArchivoLocal + Archivo
#     if os.path.exists(Archivo):
#         with open(Archivo) as f:
#             data = json.load(f)
#     else:
#         data = []
#
#     data[Atributo] = Valor
#
#     with open(Archivo, 'w') as f:
#         json.dump(data, f, indent=4)

#
# def ObtenerDato(Archivo, Atributo, local=True):
#     '''Obtiene Atributo de un Archivo .json'''
#     if local:
#         Archivo = ArchivoLocal + Archivo
#     if Archivo.endswith(".json"):
#         if os.path.exists(Archivo):
#             with open(Archivo) as f:
#                 data = yaml.load(f, Loader=yaml.FullLoader)
#         else:
#             print(f"Archivo no Exite {Archivo}")
#             return ""
#     elif Archivo.endswith(".md"):
#         with open(Archivo) as f:
#             try:
#                 data = list(yaml.load_all(f, Loader=yaml.SafeLoader))[0]
#             except yaml.YAMLError as exc:
#                 print(f"error con yaml {exc}")
#                 return ""
#
#     if Atributo in data:
#         return data[Atributo]
#     else:
#         return ""

#
# def ObtenerLista(Archivo, Atributo, ID):
#     Lista = ObtenerDato(Archivo, Atributo)
#     print(len(Lista))
#     if ID < 0 or ID >= len(Lista):
#         return "No Lista"
#     return Lista[ID]


def ObtenerConfig():
    return ArchivoConfig


def ObtenerArchivo(Archivo):
    """Leer y devuelte la informacion de un archivo."""
    global ArchivoConfig
    if Archivo.endswith(".json"):
        ArchivoActual = ArchivoConfig + "/" + Archivo
        if os.path.exists(ArchivoActual):
            with open(ArchivoActual) as f:
                return yaml.load(f, Loader=yaml.FullLoader)
        else:
            print(f"No Eciste {Archivo}")
    else:
        print(f"El Archivo {Archivo} no es .json")


def ObtenerFolder(Directorio):
    """Devuelve una lista de los folder dentro de Directorio."""
    global ArchivoConfig
    FolderActual = os.path.join(ArchivoConfig, Directorio)
    ListaFolder = []
    if os.path.exists(FolderActual):
        for folder in os.listdir(FolderActual):
            if os.path.isdir(os.path.join(FolderActual, folder)):
                # ListaFolder.append({"folder": folder})
                ListaFolder.append(folder)
        return ListaFolder


def ObtenerArhivos(Directorio):
    global ArchivoConfig
    FolderActual = os.path.join(ArchivoConfig, Directorio)
    ListaArchivos = []
    if os.path.exists(FolderActual):
        for archivo in os.listdir(FolderActual):
            if os.path.isfile(os.path.join(FolderActual, archivo)):
                ListaArchivos.append(archivo)
        return ListaArchivos
