# ALMACENAMIENTO SD

## Integrantes del equipo de trabajo:

### 1 Gabriel Hernán Cano González ghcanog@unal.edu.co

### 2 David Hernando Jiménez Rodríguez dhjimenezr@unal.edu.co

### 3 David Felipe Nieto Arboleda dfnietoa@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase)

La comunicación de la micro SD se basa en la interfaz de 8 pines (**reloj**, línea de comandos / Master Out Slave In (**MOSI**), líneas 4xData / Master In Slave Out (**MISO**) y **3xPower**). El protocolo de comunicación que admite la tarjeta para la inicialización es el protocolo **SPI** (Serial Peripheral Interface).  El funcionamiento del sistema se basa en 5 módulos diferentes: módulo de inicialización de tarjetas (**CINM**), módulo inactivo (**IM**), módulo de lectura de tarjetas (**CRM**), módulo de escritura de tarjetas (**CWM**) y módulo de decisión (**DM**). Junto a los módulos hay una **CU** (unidad de control) para supervisar y controlar las actividades de cada módulo.

## Descripción de la caja Funcional  (in/out)

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Descripción funcional:

A continuación se muestra los diagramas de flujo de inicialización, lectura y escritura de la tarjeta. 

**_1. Diagrama de flujo de inicialización de la tarjeta._**

![](http://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs13639-016-0060-8/MediaObjects/13639_2016_60_Fig14_HTML.gif "Diagrama de flujo de inicialización de la tarjeta.").

La señal **START** activa el **CINM** (módulo de inicialización de tarjetas) y reconoce la unidad de control con una señal READY.  El modulo transcurre 74 o más ciclos de reloj para iniciar el protocolo SPI. La tarjeta se inicia primero con el comando **CMD0**, el controlador valida el rango de tensión en este para emitir el comando **CMD8** que identifica la versión de la tarjeta (versión 2). Por otra parte, el controlador genera los comandos **CMD55** y **ACMD41** para completar el proceso de inicialización. El controlador genera continuamente los comandos (CMD55+ACMD41) hasta que se inicialice la tarjeta y de una respuesta de 00000000. El comando **CMD58** se genera para identificar el modo de direccionamiento de la tarjeta (direccionamiento de bloques o direccionamiento de byte). Si se genera el direccionamiento de bytes, se emite el comando **CMD16** para fijar la longitud de bloque de datos a 512 bytes. Seguido del proceso de inicialización, la tarjeta pasa al módulo inactivo hasta que se genere el comando para lectura y escritura. 

**_2. Diagrama de flujo de lectura y escritura de la tarjeta._**



## Descripción Estructural:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

