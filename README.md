# Pipeline de datos meteorológicos 

## Descripción

En este proyecto realizamos un paso a paso del desarrollo de un pipeline, para analizar , limpiar y guardar en sql los datos de la estación de A Coruña/ Alvedro(aeroporto, indicativo 08002), entre el 1 de enero de 2021 y el 31 de diciembre de 2025 con unas coordenadas aproximdas de  43,3069° N, −8,3725° O.

Para ello utilizaremos como fuente los datos captados de Meteosat , los cuales descargaremos desde :

URL de descarga: https://raw.githubusercontent.com/bigdatawirtz/datasets/main/datasets/meteo_alvedro_2021_2025.csv

URL para previsualizar contenido: https://github.com/bigdatawirtz/datasets/blob/main/datasets/meteo_alvedro_2021_2025.csv 


## Pasos para ejecutar el proyecto
***Estructura del proyecto***

```bash
├── README.md
├── requirements.txt
├── .gitignore
├── datos/
│   ├── raw/
│   └── clean/
├── notebooks/
└── output/
```

### 1. Clonar el proyecto (ubuntu)

Crea una estructura de carpetas para poder clonar el repositorio dentro con los siguientes comandos:

```powershell
mkdir carpetaEjemplo
cd carpetaEjemplo
```

### 2. Crea el enviroment y actívalo
```powershell
python3 \-m venv .venv
source .venv/bin/activate
```
### 3. Clona el repositorio

```powershell
git clone https://github.com/carolinamesacurso/proyecto_Albergues
```

### 4. Configura variables e instalar libtrerías
Para este proceso deberás de abrir el proyecto con visual studio con el siguiente comando

```powershell
code .
```

El proyecto te proporcionará un '.env.example' el cual tendrás que copiar para crear el fichero '.env' donde realizaremos los siguientes pasos.

Modifica estas variables en '.env' para configurar el usuario , contraseña y base de datos a utilizar

```
POSTGRES_USER=***
POSTGRES_PASSWORD=***
POSTGRES_DB=***
```

Para instalar las dependencias necesarias ejecuta este comando dentro del enviroment

```powershell
pip install -r requirements.txt
```

### 5. Ejecutar notebook y levantar proyecto

A la hora de levantar los servicios ejecutaremos el siguiente comando con la app docker desktop incializada y configurada.

```powershell
docker compose up
```

Tras esto procederemos a limpiar y guardar los datos descargados por csv, ejecutando todas las celdas del archivo notebooks/guardado_limpieza.ipynb.



### 6. Decisiones de limpieza

| Problema      | Captado  | Solución |
|------------|------------------|--------------------|
| Formato erroneo de varias columnas | Sacando la información del tipo de datos del dataframe             | Convertir cada una de las columnas a su formato indicado                |
| Duplicados | Imprimiendo la cantidad de duplicados de cada una de las columnas             | Quitando duplicados sin tener índices creados en el dataframe para también eliminar las fechas duplicadas                |
| Nulos | Mostrando mediante  isna().sum() la suma de datos nulos de cada columnas             | Realizando una interpolación para los datos predecibles y no editando los datos que no podemos calcular mediante una media               |
| Valores fuera de rango | Al revisar el dataframe para verificar que todas las temperatúras seguían un rango normativo debido a la zona             | Limpiar estos datos sustituyendolos por nulos                |
| Inconsistencias | Comprobando que máxima es menor que la mínima             | 1.2                |
| Fechas faltantes | 10.8             | 1.2                |
| Valores que no encajan | 10.8             | 1.2                |



### 7. Uso de IA

En este proyecto se has utilizado IA (chatgpt o copilot) para varios aspectos como:

1. Revisar una explicación más detallada del código a utilizar , como en el caso de las fechas o las gráficas.

2. Contrastar errores que se han producido a la hora de crear código manualmente.

3. Proporcionar documentación para poder revisar ejemplos o documentos donde se utilizen ciertos bloques de código con una lógica parecida a ciertos apartados del notebook.

4. Generar código de ejemplo para poder aplicarlo a la hora de tratar la limpieza de datos inconsistentes, fuera de rango o fechas faltantes.

