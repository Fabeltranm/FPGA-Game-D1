# PWM ULTRASONIDO

## Integrantes del equipo de trabajo:

### 1. Adriana Mercedes Rivera Gonzalez - amriverag@unal.edu.co
### 2. Heriberto Forero Correa - hforeroc@unal.edu.co
### 3. Gilbert Andrés Angulo Saucedo - gaangulosa@unal.edu.co

## Descripción general del sistema: (tomado del documento de clase)

El módulo de ultrasonido HC-SR04 es un sensor de distancias por ultrasonidos capaz de detectar objetos y calcular la distancia a la que se encuentra en un rango de 2 a 450 cm. consta de dos membranas, de las cuales una emite una señal mecánica de alta frecuencia (trigger) que al encontrarse con algún obstáculo rebota, siendo captada por la membrana receptora (echo), dicha onda inicialmente es un puso de 10uS el cual al llegar al trigger es modulado a una frecuencia de 8 ciclos de ultrasonido a 40kHz. La distancia se puede calcular de dos formas, la primera es tomando el intervalo de tiempo entre  la emisión y recepción en uS y dividiéndolo por 58 si se requiere la distancia expresada en centímetros de lo contrario de necesitarse expresada en pulgadas la división debe ser por 148. La segunda forma de calcular la distancia es tomando en cuenta el tiempo en el cual la señal recibida se encuentra en un nivel alto y dividiéndolo por la velocidad del sonido, tomada como una constante (340m/s).

## Descripción de la caja Funcional  (in/out)

La caja funcional del módulo ultrasonido tiene como entradas, Pulse la cual introduce un pulso de 10uS. Echo en donde se recibe la señal luego de que esta haya rebotado con algún objeto cercano. Clock parte crucial ya que permite establecer el intervalo de tiempo entre la emisión y recepción o la cantidad de tiempo en que la señal recibida se encuentre en el nivel alto, lo que permitiría calcular las distancias. Init que permitiría iniciar el proceso de emisión y recepción de la señal de ultrasonido. Como salidas se tiene Trigger desde la cual se emite la señal de ultrasonido y Distance la cual me proporciona el valor calculado de la distancia del obstáculo cercano.
https://user-images.githubusercontent.com/31454781/30006006-975a234e-90b4-11e7-8bf2-7e7da36b7e62.png
![caja funcional](https://user-images.githubusercontent.com/31454781/30006006-975a234e-90b4-11e7-8bf2-7e7da36b7e62.png)

## Descripción funcional:
![descripcion estructural](https://user-images.githubusercontent.com/31454781/30006040-35878fd4-90b5-11e7-91e1-c42e0769c62b.png)


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

