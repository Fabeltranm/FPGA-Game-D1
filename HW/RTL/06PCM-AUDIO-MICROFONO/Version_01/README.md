# SISTEMA DE AUDIO

## Integrantes del equipo de trabajo:

### 1 Lisseth Tatiana Herrera Rosero ltherreraro@unal.edu.co

### 2 Santiago Esteban Guevara Rozo seguevarar@unal.edu.co

### 3 Michael Fabian Sierra Tarazona mfsierrat@unal.edu.co


## Descripción general del sistema: 

En el módulo de audio se pretende garantizar la grabación de una voz por un lapso aproximado de 2 segundos,  digitalizar, guardar y reproducir esta señal, se utilizaran dos grandes modulos en el cual se tienen microfono y altavoz
En el módulo del micrófono se tendrá una señal análoga con frecuencia de 1 a 5 kHz, la cual entrará a un convertidor A/D, acontinuación se procesará en un filtro pasabajos logrando una salida de 18 bits; Esta entrará a nuestra FPGA nexys4 donde se guardará por módulos en un proceso FIFO sincrónico, el sincronismo de los clocks es necesario para acoplar todas las fases de dicho proceso.
En la segunda etapa (altavoz), entra dicha informacion a un convertidor D/A (PCM) el cual también logra amplificar esta señal para poder ser reproducida.


## Descripción de la caja funcional (Modulo Fpga):
En este módulo se tienen inicialmente dos sub-módulos: divisor de frecuencia y registros. El divisor de frecuencia es necesario para obtener los clocks de sincranización de el módulo de micrófono y de altavoz, para esto se necesita un clock de entrada CLK, un clock de salida CLKOUT y un RESET de entrada para reiniciar el ciclo, adicionalmente se tienen dos parámetros fijos la Fi que es la frecuencia del reloj de la Nexys 4 50MHZ y el Fo que es la Frecuencia de salida que se quiere. 

El modulo de la FPGA además de los sub-módulos tiene 4 entradas: 
* **di** datos provenientes del micrófono (conformado por 18 bits) 
* **int** para inicializar (conformado por 1 bit)
* **W/R** para indicar si va a repoducir o grabar (conformado por 1 bit)
* **done** para indicar que finalizó la acción (conformado por 1 bit)

Finalmente este módulo tiene 3 salidas:
* **clkout** El clock que necesita el micrófono para modular la señal y enviarla (conformado por 1 bit)
* **select** necesario más adelante para seleccionar derecho o izquierdo (conformado por 1 bit)
* **do** datos de salida hacia el altavoz (conformado por 16 bits)

<a href="https://ibb.co/fsxH2Q"><img src="https://preview.ibb.co/gXGo95/fpga.jpg" alt="fpga" border="0"></a>
### Descripción de la caja funcional (Módulo Micrófono MEMS):
El módulo de micrófono tiene como entradas **clkout** (1 bit) que es una de las salidas del módulo fpga y se usa para realizar todo el poceso de digitalización, esta también el **enable** (1 bit) para iniciar el modulo  y esta un **select** (1 bit) que se aplicara más adelante para el seriado de dos micrófonos.

Como salidas cuenta con **di** que es la información del micrófono y consta de 18 bits, la interfaz de comunicación de este módulo y el FPGA es I2S.

<a href="https://imgbb.com/"><img src="https://image.ibb.co/bxV9Gk/microfono.jpg" alt="microfono" border="0"></a>
### Descripción de la caja funcional (Módulo Altavoz):
El módulo de altavoz tiene como entradas **clkout** (1 bit) es una de las salidas del módulo FPGA y se usa para la serialización de los datos para pasarlos a una señal análoga y cuenta con un **fo** (16 bit) son los datos enviados por la FPGA. Como salida cuenta con el parlante (actuador).
1
<a href="https://imgbb.com/"><img src="https://image.ibb.co/dBNZhQ/altavoz.jpg" alt="altavoz" border="0"></a>
## Descripción Estructural:
### Descripción Estructural (Divisor de frecuencia):
<a href="https://imgbb.com/"><img src="https://image.ibb.co/k59ap5/Selecci_n_038.png" alt="Selecci_n_038" border="0"></a>


## Diagrama de Estados:



## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## referencias:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

