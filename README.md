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

### 5. Levantar proyecto
Para levantar los servicios necesarios antes necesesitaremos limpiar y guardar los datos descargados por csv, para ello ejecutaremos todas las celdas del archivo notebooks/guardado_limpieza.ipynb hasta la sección donde cargamos PostgreSql .

Necesitaremos ejecutar el siguiente comando con la app docker desktop incializada y configurada.

```powershell
docker compose up
```

Al comprobar que los contenedores están activos mediante la app ,podremos ejecutar las secciones posteriores del notebook creando así la tabla "tiempo_limpio".


### 6. Decisiones de limpieza

| Problema      | Captado  | Solución |
|------------|------------------|--------------------|
| Formato erroneo de varias columnas | 12.5             | 0.0                |
| Duplicados | 14.2             | 3.5                |
| Nulos | 10.8             | 1.2                |
| Valores fuera de rango | 10.8             | 1.2                |
| Inconsistencias | 10.8             | 1.2                |
| Fechas faltantes | 10.8             | 1.2                |
| Valores que no encajan | 10.8             | 1.2                |