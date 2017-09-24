# TOUCH

## Integrantes del equipo de trabajo:

### 1 Christian Camilo Cuestas Ibáñez cccuestasi@unal.edu.co

### 2 Jonathan Smith Moreno Sánchez josmorenosa@unal.edu.co

### 3 Daniel Alejandro Rodríguez Chávez daarodriguezch@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase)

El sistema de Touch es un módulo que se encarga de recibir información del usuario a traves de toques en la pantalla del dispositivo, como interfaz hombre-máquina. Se encarga de medir la posición bidimensional de los toques y/o movimientos realizados en la pantalla touch. El sistema entrega las coordenadas de la posición del toque o movimiento. Debido a  que el controlador del Touch es el de referncia [ETP-4500UG-x](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/07TOUCH/Version_02/01%20datasheet/etp-4500ug-b.pdf), la recepción de los datos es UART (Universal Asynchronous Receiver/Transmitter). El controlador tiene una velocidad de entrega de las coordenadas de máximo 160 puntos cada segundo. 
## Descripción de la caja Funcional  (in/out)

El sistema de touch tiene como entrada **Rx**, por donde llega una señal serializada asíncrona desde el controlador del touch. También tiene dos salidas: **data** y **DONE**. **data** es un bus de 8 bits para trasmitir de forma paralela las coodernadas de los puntos enviadas por el controlador del touch. La salida **DONE** es para indicar que los 8 bits ya están listos para sel leídos desde el bus **data**.

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/07TOUCH/Version_02/03%20document/img/TouchDiagramaCajaNegra.jpg)

## Descripción funcional:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/07TOUCH/Version_02/03%20document/img/D.%20Funcional%20Touch)

## Descripción Estructural:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/07TOUCH/Version_02/03%20document/img/D.%20Estructural%20Touch)
## Diagrama de Estados:

![](https://github.com/Fabeltranm/FPGA-Game-D1/blob/master/HW/RTL/07TOUCH/Version_02/03%20document/img/D.%20de%20Estado%20Touch)

## Arquitectura del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Diagrama de bloques del periférico:

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Referencias:

[Basics of UART Communication](http://www.circuitbasics.com/basics-uart-communication/)
