# Bluetooth

## Integrantes del equipo de trabajo:

### 1 Cristian Camilo Ortiz Aranda ccortiza@unal.edu.co

### 2 Carlos Andres Martinez Riveros caramartinezriv@unal.edu.co

### 3 Nombre1 nombre2 apelido1 apellido2 correo@electronico


## Descripción general del sistema: (tomado del documento de clase)
Sistema de comunicacion usando el modulo de bluetooth HC-05 y el protocolo de comunicacion UART. el objetivo es intercambiar informacion entre el modulo bluetooth y la FPGA. La forma de hacerlo es atraves del transmisor, receptor asincrono universal (UART).
 
Bluetooth es una tecnología  que permite  intercambiar datos de forma inalámbrica. ESTO NOS PERMITE CONECTAR DISPOSITIVOS E INTERCABIAR INFORMACION ENTRE ELLOS DE MANERA INALABRICA. Trabaja mediante transmisiones de radio de onda corta en la banda de los 2,4 GHz creando redes de área personal y BAJO CONSUMO DE ENRGIA
![sistema-bluetooth-4-1024](https://user-images.githubusercontent.com/14295760/30007421-73d4059c-90d3-11e7-91a1-e8a5ee8e4048.jpg)

Para que el modulo bluetooth y el dispositivo electronico intercambien su información, deben compartir un protocolo de comunicación común. Cientos de protocolos de comunicación han sido definidos para lograr este intercambio de datos, y, en general, cada uno puede ser separado en una de dos categorías: paralelo o en serie.

COMUNICACIÓN EN PARALELO
![imagen1](https://user-images.githubusercontent.com/14295760/30022647-c93f7a80-9131-11e7-88ee-c0b164a50d70.png)

Las interfaces paralelas transfieren múltiples bits al mismo tiempo. Por lo general requieren autobuses de datos - que transmiten a través de ocho, dieciséis, o más cables. Los datos son transferidos en enormes ondas de 1 y 0.

COMUNICACIÓN SERIAL
![imagen2](https://user-images.githubusercontent.com/14295760/30022943-2b31ea60-9133-11e7-8ebd-f5efb8de9b40.png)

Las interfaces serie transmiten sus datos, un solo bit a la vez. Estas interfaces pueden funcionar en tan poco como un cable, normalmente nunca más de cuatro.

COMUNICACIÓN SERIAL ASINCRONA
Una interfaz en serie sincrónica siempre empareja su línea de datos con una señal de reloj, por lo que todos los dispositivos de un bus serie síncrono comparten un reloj común.
Asíncrono significa que los datos se transfieren sin soporte de una señal de reloj externa. Este método de transmisión es perfecto para minimizar los cables requeridos y los pines de E / S, pero significa que necesitamos poner un esfuerzo extra para transferir y recibir datos de forma fiable.

Reglas para la Comunicación Serial Asincrona.
El protocolo en serie asíncrono tiene varias reglas integradas: mecanismos que ayudan a asegurar transferencias de datos sólidas y sin errores. Estos mecanismos, que se obtienen por evitar la señal de reloj externo, son:
Bits de datos,
Bits de sincronización,
Los bits de paridad,
Y la velocidad en baudios.

Enmarcado de datos
Cada bloque (normalmente un byte) de datos transmitidos se envía realmente en un paquete o marco de bits. Los marcos se crean añadiendo bits de sincronización y paridad a nuestros datos.
![imagen3](https://user-images.githubusercontent.com/14295760/30022945-31787b28-9133-11e7-8b7f-e6f751ed11ec.png)

Cableado y hardware
Un bus serie consta de sólo dos cables - uno para enviar datos y otro para recibir. Como tal, los dispositivos seriales deben tener dos pines serie: el receptor, RX, y el transmisor, TX.
![imagen5](https://user-images.githubusercontent.com/14295760/30022969-4008fe6a-9133-11e7-8471-6ba53c995eab.png)


UARTs
La pieza final de este rompecabezas en serie es encontrar algo para crear los paquetes en serie y controlar las líneas de hardware físico. Ingrese el UART.
Un receptor / transmisor asíncrono universal (UART) es un bloque de circuitos responsable de implementar la comunicación en serie. Esencialmente, la UART actúa como un intermediario entre interfaces paralelas y seriales. En un extremo de la UART hay un bus de ocho o menos líneas de datos (más algunas clavijas de control), en el otro están los dos cables serie - RX y TX
![imagen6](https://user-images.githubusercontent.com/14295760/30022979-45b5da90-9133-11e7-9d3e-29b676b12f98.png)


## Descripción de la caja Funcional  (in/out)
![diagrama estructural modulo de bluetooth](https://user-images.githubusercontent.com/14295760/30006343-3aaafc10-90bc-11e7-9ef9-a25b44e576d2.png)

## Descripción funcional:
9600 8N1 - 9600 baudios, 8 bits de datos, sin paridad y 1 bit de parada - es uno de los protocolos en serie más utilizados.
Un dispositivo que transmita los caracteres ASCII 'O' y 'K' tendría que crear dos paquetes de datos. El valor ASCII de O (que es mayúscula) es 79, que se descompone en un valor binario de 8 bits de 01001111, mientras que el valor binario de K es 01001011. Todo lo que queda es añadir bits de sincronización.
![imagen4](https://user-images.githubusercontent.com/14295760/30022955-375db3e6-9133-11e7-824d-50842eccaeec.png)


## Descripción Estructural:
![imagen7](https://user-images.githubusercontent.com/14295760/30022997-576d469c-9133-11e7-8684-affce3593245.png)



## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

