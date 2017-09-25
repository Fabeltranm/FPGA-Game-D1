# ******ALMACENAMIENTO SD******
## Integrantes del equipo de trabajo:
### 1 Gabriel Hernán Cano González ghcanog@unal.edu.co
### 2 David Hernando Jiménez Rodríguez dhjimenezr@unal.edu.co
### 3 David Felipe Nieto Arboleda dfnietoa@unal.edu.co
## Descripción general del sistema: (tomado del documento de clase)

La comunicación de la micro SD se basa en la interfaz de 8 pines(**reloj**, línea de comandos/ Master Out Slave In (**MOSI**), líneas 4xData / Master In Slave Out (**MISO**) y **3xPower**). El protocolo de comunicación que admite la tarjeta para la inicialización es el protocolo **SPI** (Serial Peripheral Interface). El funcionamiento del sistema se basa en 5 módulos diferentes: módulo de inicialización de tarjetas (**CINM**), módulo inactivo (**IM**), módulo de lectura de tarjetas (**CRM**), módulo de escritura de tarjetas (**CWM**) y módulo de decisión (**DM**). Junto a los módulos hay una **CU** (unidad de control) para supervisar y controlar las actividades de cada módulo.

## Descripción de la caja Funcional (in/out)
La caja negra del proyecto de almacenamiento en microSD muestra dos bloques funcionales que especifican en protocolo SPI, el bloque "MASTER" muestra 6 señales de entrada, **R/W** describe lo que queremos hacer con la tarjeta, **R/W=1** indica que queremos leer información, con **R/W=0** indica que queremos escribir en ella. **dataIN** es un vector de 16 bits, con el cual indicamos la información a guardar, **EN** inicia los procesos, **RESET** reinicia todos los procesos y se regresa al punto inicial. **CLK** es la señal de reloj interna de la tarjeta la cual debe pasar por un divisor de frecuencia hasta 25MHz donde se tiene la señal de salida **CLKM** la cual es la señal que sincroniza todos los procesos en la tarjeta, por ultimo la señal **address** un vector de 8 bits, indica la dirección de memoria la microSD; el sistema recibe información del esclavo por medio de **DATA0** el cual es el mismo **MISO**.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/bloques.png)

El sistema cuenta con señales de salida que controlan la tarjeta microSD, con **CMD** el cual es el mismo **MOSI**, envía comandos de control a la microSD, también se encarga de enviar los datos a guardar que fueron ingresados por **dataIN**, los datos de lectura se pueden ver por medio de la línea **dataOUT** el cual es un vector de 16 bits; con la señal **CD** se selecciona la tarjeta a trabajar e inicia las comunicaciones entre los dos dispositivos; una vez todos los procesos hayan acabado, se envía un 1 a la señal **DONE**.


## Descripción funcional:

A continuación se muestra los diagramas de flujo de inicialización, lectura y escritura de la tarjeta.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/flujo3.png)

La señal **START** activa el **CINM** (módulo de inicialización de tarjetas) y reconoce la unidad de control con una señal **READY**. El modulo transcurre 74 o más ciclos de reloj para iniciar el protocolo **SPI**. La tarjeta se inicia primero con el comando **CMD0**, el controlador valida el rango de tensión en este para emitir el comando **CMD8** que identifica la versión de la tarjeta (versión 2). Por otra parte, el controlador genera los comandos **CMD55** y **ACMD41** para completar el proceso de inicialización. El controlador genera continuamente los comandos (**CMD55+ACMD41**) hasta que se inicialice la tarjeta y de una respuesta de **00000000**. El comando **CMD58** se genera para identificar el modo de direccionamiento de la tarjeta (direccionamiento de bloques o direccionamiento de byte). Si se genera el direccionamiento de bytes, se emite el comando **CMD16** para fijar la longitud de bloque de datos a 512 bytes. Seguido del proceso de inicialización, la tarjeta pasa al módulo inactivo hasta que se genere el comando para lectura y escritura.

La tarjeta se encontrará inactiva hasta tener una señal de lectura o escritura. La parte izquierda del diagrama describe la operación de lectura y la parte derecha la operación de escritura. La unidad de control decide en dos diferente comandos(17 - 18) para el modulo de lectura dependiendo de el valor de señal, este se enviará a través  del **MOSI**, y se tendrá una respuesta de la tarjeta a través del **MISO** e iniciará la lectura de los datos de la tarjeta junto con los bits **CRC**. En cuanto a la escritura el controlador genera el comando para la escritura(24 - 25) y empieza a escribir los datos. Al finalizar la escritura de datos los bits **CRC** son enviados a través de la linea **MISO**, indicando si la operación fue exitosa o no, en caso negativo se reinicia la escritura de los datos. Al completar la lectura o escritura el sistema verificará la señal de **RESET** para decidir si inicializar la tarjeta nuevamente o esperar una nueva señal de lectura o escritura 

## Descripción Estructural:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/estructuralfinal.png)
## Diagrama de Estados:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_02/03%20document/Estados.PNG)
## Arquitectura del periférico:
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
## Diagrama de bloques del periférico:
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
## referencias:
1. https://jes-eurasipjournals.springeropen.com/articles/10.1186/s13639-016-0060-8
2. http://www.dejazzer.com/ee379/lecture_notes/lec12_sd_card.pdf
3. https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi
4. http://elm-chan.org/docs/mmc/mmc_e.html
