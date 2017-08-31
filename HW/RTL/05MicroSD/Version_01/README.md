# ALMACENAMIENTO SD

## Integrantes del equipo de trabajo:

### 1 Sergio Ariel Urian Niño sauriann@unal.edu.co

### 2 Nombre1 nombre2 apelido1 apellido2 correo@electronico

### 3 Nombre1 nombre2 apelido1 apellido2 correo@electronico


## Descripción general del sistema: (tomado del documento de clase)

Para implememtar la unidad de almacenamiento se usara una interfaz de comunicación serial que reduce el número de pines necesarios para el intercambio de datos que se conoce como Interfaz Periférica Serial (SPI), que sera dirigida por un Entorno Programable de Arreglos de Compuertas (FPGA).
El SPI se compone de cuatro conexiones (Cables) los cuales son:

1. Reloj (CLK).
2. Master-Out, Slave-In (MOSI). 
3. Master-In, Slave-Out (MISO).
4. Chip Select (CS).

La señal de **CLK** se controla y genera desde la SD con mando Maestro (Master) para sincronizar el intercambio de datos, el **MOSI** son los datos del Maestro al Esclavo (Slave) y el **MISO** son los datos que retorna el Esclavo según las solicitudes del Maestro y finalmente el **CS** suspende o permite la comunicación entre el Maestro y el Esclavo.

El elemento para almacenar e implementar la interfaz anteriormente expuesta es una tarjeta Secure Data (**SD**) la cual se comunica y opera por medio de 9 entradas (pines).

Internamente la targeta **SD** comienza con una **Interfaz de Manejo** la cual construye el **Bus** o paquete de información que va a ingresar, luego, la **Interfaz del Controlador de la Tarjeta** ejecuta protocolos según la información que contenga el paquete o bus de datos que se ingrese (todo esto se sincroniza con un reloj **CLK** el cual es la herramienta que permite caracterizar y separar los grupos de datos o bus), como penúltimo paso el **Controlador de Interfaz de Tarjeta** envía el paquete o bus de datos con las instrucciones precisas al **Núcleo de interfaz de Memoria** donde finalmente el bus ingresa al Núcleo de Memoria donde se almacenará, modificará o se copiará según la instrucción que tenga.

La prioridad o esencia del del sistema es la **Solicitud de Control** y la **Solicitud de Datos**; la **Solicitud de Control** es la encargada de acceder a la memoria **SD** de forma ordenada y a ubicaciones puntuales, mientras , la **Solicitud de Datos** se encarga de guardar, sobrescribir o consultar los datos en dicha ubicación para posteriormente informar su estado y retomar una nueva orden.
## Descripción de la caja Funcional  (in/out)




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

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

