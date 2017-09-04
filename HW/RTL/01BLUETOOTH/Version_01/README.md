# Bluetooth

## Integrantes del equipo de trabajo:

### 1 Cristian Camilo Ortiz Aranda ccortiza@unal.edu.co

### 2 Carlos Andres Martinez Riveros caramartinezriv@unal.edu.co

### 3 Nombre1 nombre2 apelido1 apellido2 correo@electronico


## Descripción general del sistema: (tomado del documento de clase)
Bluetooth es una tecnología  que permite  intercambiar datos de forma inalámbrica. ESTO NOS PERMITE CONECTAR DISPOSITIVOS E INTERCABIAR INFORMACION ENTRE ELLOS DE MANERA INALABRICA. Trabaja mediante transmisiones de radio de onda corta en la banda de los 2,4 GHz creando redes de área personal y BAJO CONSUMO DE ENRGIA
![sistema-bluetooth-4-1024](https://user-images.githubusercontent.com/14295760/30007421-73d4059c-90d3-11e7-91a1-e8a5ee8e4048.jpg)

Para que el modulo bluetooth y el dispositivo electronico intercambien su información, deben compartir un protocolo de comunicación común. Cientos de protocolos de comunicación han sido definidos para lograr este intercambio de datos, y, en general, cada uno puede ser separado en una de dos categorías: paralelo o en serie.

COMUNICACIÓN EN PARALELO
![imagen1](https://user-images.githubusercontent.com/14295760/30022647-c93f7a80-9131-11e7-88ee-c0b164a50d70.png)

Las interfaces paralelas transfieren múltiples bits al mismo tiempo. Por lo general requieren autobuses de datos - que transmiten a través de ocho, dieciséis, o más cables. Los datos son transferidos en enormes ondas de 1 y 0.

COMUNICACIÓN SERIAL

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




 Sistema de comunicacion usando el modulo de bluetooth HC-05 y el protocolo de comunicacion UART. el objetivo es intercambiar informacion entre el modulo bluetooth y la FPGA. La forma de hacerlo es atraves del transmisor, receptor asincrono universal (UART).
 
## Descripción de la caja Funcional  (in/out)
![diagrama estructural modulo de bluetooth](https://user-images.githubusercontent.com/14295760/30006343-3aaafc10-90bc-11e7-9ef9-a25b44e576d2.png)

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

