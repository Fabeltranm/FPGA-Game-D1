# PWM ULTRASONIDO

## Integrantes del equipo de trabajo:

### 1 Christian Camilo Cuestas Ibáñez cccuestasi@unal.edu.co
### 2 Jonathan Smit Moreno Sánchez josmorenosa@unal.edu.co
### 3 Daniel Alejandro Rodríguez Chávez daarodriguezch@unal.edu.co
## Descripción general del sistema: (tomado del documento de clase)

El sistema de ultrasonido se encarga de medir la distancia con el uso de módulos de oscilación ultrasónica HC-SR04. El sistema se encarga de controlar el sensor, contar el tiempo de regreso de la onda y calcular la distancia en función del tiempo. El módulo HC-SR04 recibe un pulso de 10uS, a través del pin Trig, iniciando el envío de la onda. El sensor, al rebotar la onda en un objeto y llegar, envía al sistema de ultrasonido un pulso largo, de tiempo proporcional a la distancia. El sistema cuenta el tiempo desde el envío del pulso (por la salida **trigg**) hasta la recepción del eco (por 
la entrada **ECHO**). Luego, calcula la distancia con la fórmula: tiempo(uS)/58= distancia(cm). Finalmente, envía por la salida **d** el dato de 8-bits de la distancia.

## Descripción de la caja Funcional  (in/out)

La caja negra del sistema de ultrasonido tiene como salida **d**, que es un dato de 8-bits con la distancia calculada. También, tiene como salida hacia el sensor de ultrasonido un trigger (**trigg**) para que empiece la oscilación. La entrada **ECHO** recibida del sensor al momento de recibir el eco de la oscilación.

La señal **INIT**(de entrada) se utiliza para dar inicio al proceso de medición. La señal **DONE**(de salida) para indicar que el resultado de la medición ya está disponible en la salida **d**.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03_document/img/UltrasonidoDiagramaCajaNegra.jpg)


## Descripción funcional:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03_document/img/D.%20Funcional%20Ultrasonido)

<!--
El pulso para iniciar, ingresa por **f**, y en **Rm** debe estar en 1, para poderlo recibir; así recibiera una señal cuadrada, se tomará por un pulso, y **Rm** dejará en claro eso. luego, esta pasará por el contador, y equivaldrá a la entrada/salida **S** la cual volverá a mandar un pulso al recibir la señal ultrasónica de vuelta. El contador contabilizará el tiempo en valores iguales de periodo a la de la onda de ultrasonido, y, recibido el pulso de vuelta, dejará de contar y **Ten** estará en 1, la cual indicará disponibilidad del contador para pasar el dato por **T**, de tamaño 10 el bus, y una vez recibido el dato, tendrá confirmación por **Tr** el contador para poder dar disponibilidad, la cual se dará por **Tm**. El que es llamado <i>Traductor</i> por las características de adecuación del dato en dicho módulo. En este el dato recibido será tratado por proporciones, dada la longitud de onda conocida en el sensor (7500m) según el <i>datasheet</i> y su periodo, por lo que, el conteo se adecuará a un valor proporcional al periodo para sacar la relación donde habría una proporcionalidad triangular con la longitud de onda también. El recorrido de la onda es dos (2) veces la distancia que queremos, por ende, el recorrido se divide en 2, y el dato pasa por **R** de tamaño 10 hacia el procesador, con la indicación de **Ren** en 1, para indicar que está disponible el dato, y cuando sea recibido, se recibe un valor de **Tro** en 1, para decir que el dato fue recibido, y la salida **Rm** indicará que estará disponible poniéndose en 1 de nuevo.
-->


## Descripción Estructural:

El sistema consta de 3 bloques: un Divisor de frecuencia, el Generador de pulsos y el Divisor entre 58. El divisor de frecuencia transforma la señal de 100MHz (**clk**) en una señal de 1MHz, necesario para el conteo del tiempo en microsegundos; y entrega al bloque Generador de pulsos una señal **clk** de 1MHz. El Generador de pulsos se encarga de contar el tiempo en microsegundos, enviar por la salida **trigg** un pulso de 10uS al inicio de la medición y contar el tiempo que demora la señal de la entrada **ECHO** en llegar. Cuando **ECHO** se hace 1 lógico, se detiene el conteo y se hace saber  que se realizó la medición(**DONE**=1) y el dato del tiempo está listo en **COUNT** para transformarlo en distancia por el Divisor entre 58. Este divisor obtiene el valor de **COUNT** y lo divide entre 58 de forma binaria, entrega el resultado por la salida **d** y establece que la salida **DONE** es 1, para hacer saber que la medición de la distancia se ha completado.


![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03_document/img/D.%20Estructural%20Ultrasonido)


## Diagrama de Estados:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03_document/img/D.%20de%20Estado%20Ultrasonido)

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:
<!--
<ul> 
<li><b>Raúl Alvarez.</b> <i>Cómo Medir Distancias con el Sensor Ultrasónico PING</i>
<p>URL: <a href="url">http://tecbolivia.com/index.php/articulos-y-tutoriales-microcontroladores/17-como-medir-distancias-con-el-sensor-ultrasonico-ping</a></p></li> 
</ul> 
-->

