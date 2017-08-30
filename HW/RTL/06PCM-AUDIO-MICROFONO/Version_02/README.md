## Integrantes del equipo de trabajo:

### 1 Nelly Alexandra Rodriguez Villa   nelarodriguezvil@unal.edu.co

### 2 Yilmar Fernando Penalosa Herrera  yfpenalosah@unal.edu.co

### 3 David Stevent Avila Vela          dsavilav@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase)

De acuerdo al proyecto de dispositivo para videojuegos, se realizo una reparticion de modulos para su funcionamiento, el modulo correspondiente para este apartado es: modulo de audio y microfono, el cual sera dividido en dos modulos que podran actuar simultaneamente, esto gracias a la conexion que se realiza a traves de una FPGA. Para el funcionamiento de este modulo se utilizara un microfono mems SPH0645LM4H-B, el cual nos codificara la señal de audio analoga a señal digital mediante PCM; una FPGA donde se programara el hadware para controlar el almacenamiento de los datos recibidos del microfono, ademas de una memoria y control de lectura para la salida a un amplificador de audio MAX98357A, el cual funcionara con una señal e entrada digitalizada PCM.
En la siguiente imagen se mostrara el modulo de microfono y audio.


 ![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/06PCM-AUDIO-MICROFONO/Version_02/03%20document/caja%20negra.png) 
## Descripción de la caja Funcional  (in/out)

 El diagrama de bloques muestra la entrada que tendra el microfono a la FPGA para el tramtamiento de los datos esta entrada sera de 16bits. Tambien nos muestra la salida que tiene la FPGA al amplificador de audio la cual tendra 16bits.
 ![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/06PCM-AUDIO-MICROFONO/Version_02/03%20document/dgb.png)
 
 En el siguiente diagrama se muestra el amplificador de audio MAX98357A, con las entradas mas especificadas. 
 ![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/06PCM-AUDIO-MICROFONO/Version_02/03%20document/MAX98357A.png)

## Descripción funcional:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/06PCM-AUDIO-MICROFONO/Version_02/03%20document/dgf.png)

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

