# PWM ULTRASONIDO

## Integrantes del equipo de trabajo:

### 1 Christian Camilo Cuestas Ibáñez cccuestasi@unal.edu.co
### 2 Juliana Lozano Peña jlozanop@unal.edu.co
### 3 Jonathan Smit Moreno Sánchez josmorenosa@unal.edu.co
### 4 Daniel Alejandro Rodríguez Chávez daarodriguezch@unal.edu.co

## Descripción general del sistema: (tomado del documento de clase)

El sistema de ultrasonido se encarga de medir la distancia con el uso de los sensores de ultrasonido y su circuito análogo que suministra un pulso tras detectar la onda de vuelta. Hay un contador que hace un conteo del tiempo en el que se da la orden, hasta cuando recibe de vuelta el pulso, y este, por conveniencia, se mide con el mismo periodo de la onda ultrasónica, para dar uso posterior a su longitud de onda y tratar distancias. El contador manda el tiempo que se contó entre pulso mandado y recibido, para pasarlo a una adecuación del dato, haciendo uso de la proporción entre periodo contado y el de la onda ultrasónica, así como la distancia recorrida con la longitud de onda, se ultimizan los detalles y es entregado como un valor representativo de la distancia.

## Descripción de la caja Funcional  (in/out)

<!--
La caja negra del sistema de ultrasonido tiene como entradas un trigger (trigg) para el conteo del tiempo y las entradas del circuito análogo de ultrasonido. La salida es la distancia calculada. Además, las señales INIT(entrada) y DONE(salida),  se utilizan para iniciar el proceso de medición y para indicar que el resultado está disponible, respectivamente.

![](FPGA-Game-D1/HW/RTL/08ULTRASONIDO/Version_02/03_document/img/UltrasonidoDiagramaCajaNegra.jpg)
-->


Sus entradas son **clk**, **Tro**, y **f**, y sus salidas son **Ren**, el bus **R** de tamaño 10, **Rm** y el bus**i** de tamaño 3. La entrada **clk** resulta siendo el <i>clock</i>, o el reloj que requiere el sistema, **Tro** es una entrada de confirmación del dato que se entrega, que resulta siendo **R**, en este caso, la entrada **f** es el pulso que da la orden de funcionamiento para calcular la distancia en ese instante de un objeto. La salida **Ren** es un calor de confirmación para que se reciba el dato **R**, y **Rm** es una salida para dar a entender si está dispuesto u ocupado el sistema. El bus **i** es la salida que da el valor de identificación del Bloque de ultrasonido.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03%20document/img/Caja%20Funcional%20ultrasonido)


## Descripción funcional:


<!--
El pulso para iniciar, ingresa por **f**, y en **Rm** debe estar en 1, para poderlo recibir; así recibiera una señal cuadrada, se tomará por un pulso, y **Rm** dejará en claro eso. luego, esta pasará por el contador, y equivaldrá a la entrada/salida **S** la cual volverá a mandar un pulso al recibir la señal ultrasónica de vuelta. El contador contabilizará el tiempo en valores iguales de periodo a la de la onda de ultrasonido, y, recibido el pulso de vuelta, dejará de contar y **Ten** estará en 1, la cual indicará disponibilidad del contador para pasar el dato por **T**, de tamaño 10 el bus, y una vez recibido el dato, tendrá confirmación por **Tr** el contador para poder dar disponibilidad, la cual se dará por **Tm**. El que es llamado <i>Traductor</i> por las características de adecuación del dato en dicho módulo. En este el dato recibido será tratado por proporciones, dada la longitud de onda conocida en el sensor (7500m) según el <i>datasheet</i> y su periodo, por lo que, el conteo se adecuará a un valor proporcional al periodo para sacar la relación donde habría una proporcionalidad triangular con la longitud de onda también. El recorrido de la onda es dos (2) veces la distancia que queremos, por ende, el recorrido se divide en 2, y el dato pasa por **R** de tamaño 10 hacia el procesador, con la indicación de **Ren** en 1, para indicar que está disponible el dato, y cuando sea recibido, se recibe un valor de **Tro** en 1, para decir que el dato fue recibido, y la salida **Rm** indicará que estará disponible poniéndose en 1 de nuevo.
-->

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03%20document/img/f.%20funcional%20CONTADOR)

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03%20document/img/f.%20funcional%20Traductor)

## Descripción Estructural:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03%20document/img/Diagrama%20Estructural)

## Diagrama de Estados:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/08ULTRASONIDO/Version_02/03%20document/img/Diagrama%20de%20Estados)

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:
<ul> 
<li><b>Raúl Alvarez.</b> <i>Cómo Medir Distancias con el Sensor Ultrasónico PING</i>
<p>URL: <a href="url">http://tecbolivia.com/index.php/articulos-y-tutoriales-microcontroladores/17-como-medir-distancias-con-el-sensor-ultrasonico-ping</a></p></li> 
</ul> 
