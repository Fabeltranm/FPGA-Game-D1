## Almacenamiento en microSD

## Integrantes del equipo de trabajo:

### 1 Gabriel Hernán Cano González ghcanog@unal.edu.co

### 2 David Hernando Jiménez Rodríguez dhjimenezr@unal.edu.co

### 3 David Felipe Nieto Arboleda dfnietoa@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase)

La comunicación de la micro SD se basa en la interfaz de 8 pines (**reloj**, línea de comandos / Master Out Slave In (**MOSI**), líneas 4xData / Master In Slave Out (**MISO**) y **3xPower**). El protocolo de comunicación que admite la tarjeta para la inicialización es el protocolo **SPI** (Serial Peripheral Interface).  El funcionamiento del sistema se basa en 5 módulos diferentes: módulo de inicialización de tarjetas (**CINM**), módulo inactivo (**IM**), módulo de lectura de tarjetas (**CRM**), módulo de escritura de tarjetas (**CWM**) y módulo de decisión (**DM**). Junto a los módulos hay una **CU** (unidad de control) para supervisar y controlar las actividades de cada módulo.

## Descripción de la caja Funcional  (in/out)
La caja negra del proyecto de almacenamiento en microSD muestra dos bloques funcionales que especifican en protocolo SPI, el bloque "MASTER" muestra 6 señales de entrada, **R/W** describe lo que queremos hacer con la tarjeta, **R/W=1** indica que queremos leer información, con **R/W=0** indica que queremos escribir en ella. **dataIN** es un vector de 16 bits, con el cual indicamos la información a guardar, **EN** inicia los procesos dentro de "MASTER", **RESET** reinicia todos los procesos y se regresa al punto inicial. **CLK** es la señal de reloj, sincroniza los procesos en "MASTER" así también es enviada hacia el "SLAVE" la cual sincroniza el intercambio de datos, por ultimo la señal **adress** un vector de 8 bits, indica las direcciones de memoria la microSD.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/bloquesnew.png)


## Descripción funcional:

A continuación se muestra los diagramas de flujo de inicialización, lectura y escritura de la tarjeta. 

**_1. Diagrama de flujo de inicialización de la tarjeta._**

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/inicializaci%C3%B3n.png).

La señal **START** activa el **CINM** (módulo de inicialización de tarjetas) y reconoce la unidad de control con una señal READY.  El modulo transcurre 74 o más ciclos de reloj para iniciar el protocolo SPI. La tarjeta se inicia primero con el comando **CMD0**, el controlador valida el rango de tensión en este para emitir el comando **CMD8** que identifica la versión de la tarjeta (versión 2). Por otra parte, el controlador genera los comandos **CMD55** y **ACMD41** para completar el proceso de inicialización. El controlador genera continuamente los comandos (CMD55+ACMD41) hasta que se inicialice la tarjeta y de una respuesta de 00000000. El comando **CMD58** se genera para identificar el modo de direccionamiento de la tarjeta (direccionamiento de bloques o direccionamiento de byte). Si se genera el direccionamiento de bytes, se emite el comando **CMD16** para fijar la longitud de bloque de datos a 512 bytes. Seguido del proceso de inicialización, la tarjeta pasa al módulo inactivo hasta que se genere el comando para lectura y escritura. 

**_2. Diagrama de flujo de lectura y escritura de la tarjeta._**

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/memoria.png).
La tarjeta se encontrará inactiva hasta tener una señal de lectura o escritura. La parte izquierda del diagrama describe la operación de lectura y la parte derecha la operacion de escritura. La unidad de control decide en dos diferente comandos(17 - 18) para el modulo de lectura dependiendo de el valor de señal, este se enviará a través  del MOSI, y se tendrá una respuesta de la tarjeta a través del MISO e iniciará la lectura de los datos de la tarjeta junto con los bits CRC. En cuanto a la escritura el controlador genera el comando para la escritura(24 - 25) y empieza a escribir los datos. Al finalizar la escritura de datos los bits CRC son enviados a través de la linea MISO, indicando si la operación fue exitosa o no, en caso negativo se reinicia la escritura de los datos. Al completar la lectura o escritura el sistema verificará la señal de reset para decidir si inicializar la tarjeta nuevamente o esperar una nueva señal de lectura o escritura 

## Descripción Estructural:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/estructural.png).

## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

