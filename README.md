

# CMOS based schemitt trigger

In this repository, I am designing and analyzing a Schemitt Trigger using the SkyWater PDK 130nm Technology. 
The design is created using <a href="https://xschem.sourceforge.io/stefan/index.html" target="_blank">xschem</a> for schematic design , and its parameters(plots) are obtained through pre-layout simulations using <a href="https://ngspice.sourceforge.io/" target="_blank">ngspice</a>.
For the layout design I am utilizing the 
<a href="http://opencircuitdesign.com/magic/" target="_blank">Magic VLSI Layout Tool</a>, 
a widely used open-source tool for IC design.


## Abstract 

This repository deals with the design and implementation of **CMOS based Schemitt Trigger** using SkyWater 130nm CMOS technology.
A Schmitt Trigger is a bistable circuit that provides hysteresis for input signals. It operates by converting noisy or slowly varying analog inputs into clean digital outputs, ensuring reliable transitions. This behavior is achieved by setting two distinct threshold voltages for switching, improving noise immunity in digital systems.

Function
The Schmitt Trigger operates by switching its output state based on two distinct threshold voltages, providing hysteresis. When the input voltage exceeds the upper threshold, Vut, the output switches LOW (logic 0). Conversely, when the input voltage drops below the lower threshold, Vlt, the output switches HIGH (logic 1). If the input voltage is between Vut and Vlt, the output remains in its current state, ensuring noise immunity and stable transitions.
<div align="center">
TRUTH TABLE


| Input Voltage Range         | Output State        | Description                                      |
|:----------------------------|:--------------------|:-------------------------------------------------|
| Input > Upper Threshold (Vut) | LOW (logic 0)       | Output switches to LOW when input exceeds Vut.   |
| Input < Lower Threshold (Vlt) | HIGH (logic 1)      | Output switches to HIGH when input drops below Vlt. |
| Vlt ≤ Input ≤ Vlt             | Retains Previous State | Output remains unchanged to prevent noise triggering. |

  
</div>
<br> <br>

## symbol of Schemitt trigger

<div align="center">
    <img src="images/symbol.png" alt="schemitt trigger Symbol" width="">
  
   created in xschem 
   
</div>

<br> <br> 

## Circuit Diagram 
A Schmitt Trigger can be implemented using a CMOS configuration with 3 PMOS transistors and 3 NMOS transistors connected in a specific arrangement as shown in  circuit diagram. The circuit consists of a positive feedback network to provide hysteresis. The power supply is configured with +VDD connected to the drains of the PMOS transistors, while the sources of the NMOS transistors are connected to GND. The input is applied to the gates of the transistors, and the output is taken from the connection between the PMOS and NMOS transistors in the second stage. This configuration ensures that the circuit exhibits distinct upper and lower threshold voltages, providing noise immunity and stable output transitions.
<div align="center">
    <img src="images/schematicnot.png" alt=" schemitt trigger schematic" width="">
  schematic diagram
</div>

<br> <br> 

## working

 When the input voltage exceeds the upper threshold, Vut, the output switches LOW (logic 0). Conversely, when the input voltage drops below the lower threshold, Vlt, the output switches HIGH (logic 1). If the input voltage is between Vut and Vlt, the output remains in its current state, ensuring noise immunity and stable transitions.

<div align="center">
    <img src="images/wave.png" alt="schemitt trigger schematic" width="">
  input output waveform
</div>

<br> <br> 

##  Analysis of schemitt trigger

<div align="center">
    <img src="images/DC analysis.png" alt="inverter schematic" width="">
  
 VTC Curve
</div>

<br> <br> 
A voltage transfer characteristics paints a plot that shows the behavior of a device when it's input is changed(full swing). It shows what happens to the output as input changes. In our case, for an inverter we can see a plot that is like a square wave(non ideal), that changes it's nature around 0.9(ideally) volts of input which is known as the ***Threshold voltage(Vm)***. Deviating so much from this threshold voltage might cause Noise margin issue. One can say that there are like 3 regions in the VTC curve, the portion where output is high, the place of transistion and the one where the output goes low. But actually there are five regions of operation and they are based on the working of inverter constituents, that is the NMOS and the PMOS transistors with respect to the change in the input potential. which can be observed from the below picture.



**DC analysis would be used to plot a Voltage Transfer Characteristics (VTC) curve for the circuit**. It will sweep the value of Vin from high to low to determine the working of circuit with respect to different voltage levels in the input. The following plot is observed when simulated :





## NOT Gate Parameters 

|Parameter | Description |	Min |	Average |	Max |	Unit |	Condition |
|:--------:|:------------:|:----:|:---:|:-----:|:----:|:---------:|
| Technology Used | Skywater 130nm | - |  -   |  -  | - | - |
| VCC | Supply Voltage | - | 1.8 | - | V | T=-40C to 125C |
| tpHL | **Propagation Delay High to Low**: Delay from input 50% rise to output 50% fall (high-to-low transition) | -58.50| -61.65 | -63.64 | ps | T=-40C to 125C |
| tpLH | **Propagation Delay Low to High**: Delay from input 50% fall to output 50% rise (low-to-high transition) | 216.87 | 224.37 | 236.40 | ps | T=-40C to 125C |
| tr | **Rise time**: time taken for the output to go from 10% (0.5V) to 90% (4.5V) of its final high value | 289.90 | 305.95 | 329.12 | ps | T=-40C to 125C |
| tf | **Fall Time**: Time taken for the output signal to drop from 90% (4.5V) of its high level (VCC) to 10% (0.5V) of its high level| 217.40 | 235.97 | 260.87 | ps | T=-40C to 125C |
| Vth | **Threshold Voltage**: The threshold voltage of a MOSFET is the minimum gate-to-source voltage(Vgs) required to create a conducting path between the source and drain terminals | 0.4 | 0.7 | - | V | T=-40C to 125C |
| Voh | Output high voltage | 4.919 | 5.000 | 5.089 | V | A != B at T=-40C to 125C |
| Vol | Output low voltage | -0.041 | 0.000 | 0.001 | V | A = B at T=-40C to 125C |

<br> <br>
<br>
