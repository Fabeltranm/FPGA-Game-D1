# TOUCH

## Integrantes del equipo de trabajo:

### 1 Gilbert Andres Angulo Saucedo gaangulosa@unal.edu.co

### 2 Heriberto Forero Correa hforeroc@unal.edu.co

### 3 Adriana Mercedes Rivera Gonzalez amriverag@unal.edu.co


## Descripción general del sistema: 

Es un tipo de pantallas táctiles muy usado. La pantalla táctil propiamente dicha está formada por dos capas de material conductor transparente, con una cierta resistencia a la corriente eléctrica, y con una separación entre las dos capas. Cuando se toca la capa exterior se produce un contacto entre las dos capas conductoras. Un sistema electrónico detecta el contacto y midiendo la resistencia puede calcular el punto de contacto.

Hay varios tipos de pantallas resistivas según el número de hilos conductores que usan, entre cuatro y ocho. Todas se basan en el mismo sistema

![dg - 1](https://user-images.githubusercontent.com/14281085/30242353-8e0081bc-955a-11e7-9235-ed86b76143a0.png)
<br />Esquema pantalla resistiva

Cada capa conductora tratada con un material conductor resistivo transparente, normalmente óxido de indio y estaño (In2O3)9(SnO2), tiene una barra conductora en dos lados opuestos como en la figura. Una de las capas sirve para medir la posición en el eje X y la otra en el eje Y.

•	Conectamos la entrada X+ a un convertidor analógico-digital. Ponemos una tensión entre los terminales Y+ Y- El convertidor analógico-digital digitaliza la tensión analógica generada al pulsar sobre la pantalla. Un microprocesador medirá esta tensión y calculará la coordenada "X" del punto de contacto.
•	Después conectamos al convertidor analógico-digital el terminal Y+ y una tensión continua entre los terminales X+ y X- y repetimos el mismo proceso para calcular la coordenada "Y" del punto de contacto.

![dg - 2](https://user-images.githubusercontent.com/14281085/30242372-e5f8c06e-955a-11e7-94c7-d04a945a26d1.png)
<br />Dedo tocando pantalla táctil resistiva

En algunos tipos de pantalla se puede medir además la coordenada Z o presión que se ha ejercido sobre la pantalla táctil. Para esto hay que conocer la resistencia de cada "plato". Para este tipo de medidas más complejas se necesitan más terminales para calibrar la pantalla, ya que la resistencia de los "platos" varía con la temperatura ambiente.

Las pantallas táctiles resistivas tienen la ventaja de que pueden ser usadas con cualquier objeto, un dedo, un lápiz, un dedo con guantes, etc. Son económicas, fiables y versátiles. Por el contrario, al usar varias capas de material transparente sobre la propia pantalla, se pierde bastante luminosidad. Por otro lado, el tratamiento conductor de la pantalla táctil es sensible a la luz ultravioleta, de tal forma que con el tiempo se degrada y pierde flexibilidad y transparencia.


## Descripción de la caja Funcional  (in/out)

El diagrama de caja Funcional nos ayuda a identificar claramente las entradas y salidas y estudiar las relaciones que existen entre ellas, permitiendo así maximizar la eficiencia de los sistemas sin tener que introducirnos en los procesos de la pantalla Touch.

si deseamos saber cómo funciona el dispositivo entonces nos vemos obligados a destapar “la Caja Negra” y estudiar ese subsistema en forma más precisa. Con los subsiguientes diagramas

![dcn](https://user-images.githubusercontent.com/14281085/30340906-b2a2949a-97b9-11e7-9be5-c29b4c2487fc.png)

tiene como entradas los datos serializados por el TOUCHSCREEN-CONTROLLER ETP-4500UG-B, llamada Rx, con señales de 1 bits cada una. la salida es el resultado de la posición de los datos sobre una grilla planteada sobre la pantalla, en la que los paquetes funcionan a la frecuencia del reloj del controlador (6.25*10^-3 s). Ademas, la señal de reloj. La señal DONE de salida, se utiliza para indicar que se envió un resultado, debido a una puslion hecha sobre el screen



## Descripción funcional:
Representación simbólica de las acciones en un sistema por medio de bloques funcionales enlazados por líneas de acción.Las líneas de acción no representan necesariamente conexiones físicas.En el contexto del control automático, un diagrama funcional es a veces denominado simplemente diagrama de bloques.

![df](https://user-images.githubusercontent.com/14281085/30354033-aee00e7e-97ef-11e7-8f62-cc3cc24b4cc6.png)

## Descripción Estructural:

es la representación gráfica de los diferentes procesos de un sistema y el flujo de señales donde cada proceso tiene un bloque asignado y éstos se unen por flechas que representan el flujo de señales que interaccionan entre los diferentes procesos.

![de](https://user-images.githubusercontent.com/14281085/30379659-dd92b3b2-985c-11e7-9805-4e012169c63e.png)

## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

- http://www.wikilengua.org/index.php/Terminesp:diagrama_funcional

- https://es.wikipedia.org/wiki/Diagrama_de_bloques_funcional

- https://carolbr.wordpress.com/caja-negra/

- [ http://www.cartft.com/catalog/il/1681 ]TOUCHSCREEN-CONTROLLER (ETP-4500UG-B, V2.19, 4-wire resistive, EETI/EGALAX) [SPECIAL]

- Harris, Brohters. Digital Design and Computer Architecture
