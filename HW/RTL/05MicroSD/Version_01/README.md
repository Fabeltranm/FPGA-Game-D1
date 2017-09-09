# ALMACENAMIENTO SD

## Integrantes del equipo de trabajo:

### 1 Sergio Ariel Urian Niño sauriann@unal.edu.co

### 2 Jorge Eduardo Rondón Ruiz jerondonr@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase)

Este sistema permite la comunicación con un dispositivo de almacenamiento llamado "micro SD". Dicha comunicación puede realizar funciones de lectura y almacenamiento de datos. Para establecer dicha comunicación, se utiliza un protoolo serial llamado SPI (Serial Peripheral Interface). Este protocolo maneja la arquitectura Maestro-Esclavo, que permite la transferencia de datos entre un dispositivo maestro y varios esclavos. Para este caso solo existira un esclavo (tarjeta micro SD).

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_01/03%20document/ProtocoloSPI.png).

El protocolo SPI se compone de un bus de cuatro lineas las cuales son:

1. Reloj (CLK).
2. Master-Out, Slave-In (MOSI). 
3. Master-In, Slave-Out (MISO).
4. Chip Select (CS).

La señal de **CLK** se controla y genera desde la SD con mando Maestro (Master) para sincronizar el intercambio de datos, el **MOSI** son los datos del Maestro al Esclavo (Slave) y el **MISO** son los datos que retorna el Esclavo según las solicitudes del Maestro y finalmente el **CS** suspende o permite la comunicación entre el Maestro y el Esclavo.

El elemento para almacenar e implementar la interfaz anteriormente expuesta es una tarjeta micro SD la cual opera por medio de  8 entradas (pines).

Internamente la targeta **SD** comienza con una **Interfaz de Manejo** la cual construye el **Bus** o paquete de información que va a ingresar, luego, la **Interfaz del Controlador de la Tarjeta** ejecuta protocolos según la información que contenga el paquete o bus de datos que se ingrese (todo esto se sincroniza con un reloj **CLK** el cual es la herramienta que permite caracterizar y separar los grupos de datos o bus), como penúltimo paso el **Controlador de Interfaz de Tarjeta** envía el paquete o bus de datos con las instrucciones precisas al **Núcleo de interfaz de Memoria** donde finalmente el bus ingresa al Núcleo de Memoria donde se almacenará, modificará o se copiará según la instrucción que tenga.

La prioridad o esencia del del sistema es la **Solicitud de Control** y la **Solicitud de Datos**; la **Solicitud de Control** es la encargada de acceder a la memoria **SD** de forma ordenada y a ubicaciones puntuales, mientras , la **Solicitud de Datos** se encarga de guardar, sobrescribir o consultar los datos en dicha ubicación para posteriormente informar su estado y retomar una nueva orden.
## Descripción de la caja Funcional  (in/out)

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/05MicroSD/Version_01/03%20document/DiagramaFuncional.jpg).

Imagen tomada de [1].


## Descripción funcional:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Descripción Estructural:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

[1] https://es.wikipedia.org/wiki/Serial_Peripheral_Interface#/media/File:SPI_single_slave.svg

