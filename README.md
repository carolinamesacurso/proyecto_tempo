# Pipeline de datos meteorológicos 

## Descripción

En este proyecto realizamos un paso a paso del desarrollo de un pipeline, para analizar , limpiar y guardar en sql los datos de la estación de A Coruña/ Alvedro(aeroporto, indicativo 08002), entre el 1 de enero de 2021 y el 31 de diciembre de 2025 con unas coordenadas aproximdas de  43,3069° N, −8,3725° O.

Para ello utilizaremos como fuente los datos captados de Meteosat , los cuales descargaremos desde :

URL de descarga: https://raw.githubusercontent.com/bigdatawirtz/datasets/main/datasets/meteo_alvedro_2021_2025.csv

URL para previsualizar contenido: https://github.com/bigdatawirtz/datasets/blob/main/datasets/meteo_alvedro_2021_2025.csv 


## Pasos para ejecutar el proyecto
### 1\. Clonar el proyecto (ubuntu)

Crea una estructura de carpetas para poder clonar el repositorio dentro de esta con los siguientes comandos:

mkdir carpetaEjemplo
cd carpetaEjemplo


### 2. Crea el enviroment y actívalo

&nbsp;python3 \-m venv .venv

&nbsp;source .venv/bin/activate

### 3\. Clona el repositorio

```powershell
git clone https://github.com/carolinamesacurso/proyecto_Albergues
```
