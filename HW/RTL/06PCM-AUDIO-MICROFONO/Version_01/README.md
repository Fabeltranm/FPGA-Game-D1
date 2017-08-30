# SISTEMA DE AUDIO

## Integrantes del equipo de trabajo:

### 1 Lisseth Tatiana Herrera Rosero ltherreraro@unal.edu.co

### 2 Santiago Esteban Guevara Rozo seguevarar@unal.edu.co

### 3 Michael Fabian Sierra Tarazona mfsierrat@unal.edu.co


## Descripción general del sistema: 

En el modulo de se va a grabar una voz por un lapso aproximado de 2 segundos en el cual se pretende digitalizar, guardar y reproducir esta señal, se utilizaran dos grandes modulos en el cual se tienen microfono y altavoz
en el micronofo setendra una señal analoga con frecuencia de 1 a 5 kHz la cual entrara a un convertidor A/D para asi realizarle un proceso de pasabajos logrando una salida de 18 bits; Esta entrara a nuestra FPGA nexys4 donde se guardara por modulos en un proceso FIFO sincronico, el sincronismo de los cloks esnecesario para acoplar todas las fases de dicho proceso.
en la segunda etapa (altavoz), entra dicha informacion a un convertidor D/A (PCM) el cual tambien logra amplificar dicha 


## Descripción de la caja funcional (Modulo Fpga):
En este modulo se tienen inicialmente dos submodulos: divisor de frecuencia y registros. El divisor de frecuencia es necesario para obtener los clocks de sincranizacion de el modulo de microfono y de altavoz, para esto se necesita un clock de entrada CLK, un clock de salida CLKOUT y un RESET de entrada para reiniciar el ciclo, adicionalmente se tienen dos parametros fijos la Fi que es la frecuencia del reloj de la Nexys 2 50MHZ y el Fo que es la Frecuencia de salida que se quiere. 

El modulo de la FPGA ademas de los submodulos tiene 4 entradas: 
* **di** datos provenientes del microfono (conformado por 18 bits) 
* **int** para inicializar (conformado por 1 bit)
* **W/R** para indicar si va a repoducir o grabar (conformado por 1 bit)
* **done** para indicar que finalizo la accion (conformado por 1 bit)

Finalmente este modulo tiene 3 salidas:
* **clkout** El clock que necesita el microfono para modular la señal y enviarla (conformado por 1 bit)
* **select** necesario mas adelante para seleccionar derecho o izquierdo (conformado por 1 bit)
* **do** datos de salida hacia el altavos (conformado por 16 bits)

<a href="https://ibb.co/fsxH2Q"><img src="https://preview.ibb.co/gXGo95/fpga.jpg" alt="fpga" border="0"></a>
### Descripción de la caja funcional (Modulo Microfono MEMS):
El modulo de microfono tiene como entradas **clkout** (1 bit) que es una de las salidas del modulo fpga y se usa para realizar todo el poceso de digitalizacion, esta tambien el **enable** (1 bit) para iniciar el modulo  y esta un **select** (1 bit) que se aplicara mas adelante para el seriado de dos microfonos.

Como salidas cuenta con **di** que es la informacion del microfono y consta de 18 bits, la interfaz de comunicacion de este modulo y el FPGA es I2S.

<a href="https://imgbb.com/"><img src="https://image.ibb.co/bxV9Gk/microfono.jpg" alt="microfono" border="0"></a>
### Descripción de la caja funcional (Modulo Altavoz):
El modulo de altavoz tiene como entradas **clkout** (1 bit) es una de las salidas del modulo fpga y se usa para la serializacion de los datos para pasarlos a una señal analoga y cuenta con un **fo** (16 bit) son los datos enviados por la fpga. Como salida cuenta con el parlante (actuador).

<a href="https://imgbb.com/"><img src="https://image.ibb.co/dBNZhQ/altavoz.jpg" alt="altavoz" border="0"></a>
## Descripción Estructural:
### Descripción Estructural (Divisor de frecuencia):
<a href="https://imgbb.com/"><img src="https://image.ibb.co/k59ap5/Selecci_n_038.png" alt="Selecci_n_038" border="0"></a>

## Diagrama de Estados:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

