
# CMOS-Based Schmitt Trigger

In this repository, I am designing and analyzing a **Schmitt Trigger** using the **SkyWater 130nm PDK Technology**.  
The design is created using [xschem](https://xschem.sourceforge.io/stefan/index.html) for schematic entry, and its parameters (plots) are obtained through pre-layout simulations using [ngspice](https://ngspice.sourceforge.io/).  
For the layout design, I am utilizing the [Magic VLSI Layout Tool](http://opencircuitdesign.com/magic/), a widely used open-source tool for IC design.

---

## Abstract

This repository focuses on the design, implementation, and analysis of a **CMOS-based Schmitt Trigger** using the SkyWater 130nm CMOS technology.  
A Schmitt Trigger is a bistable circuit that introduces **hysteresis** to input signals. It converts noisy or slowly varying analog inputs into clean digital outputs, ensuring reliable transitions. This behavior is achieved through two distinct threshold voltages: an **upper threshold (Vut)** and a **lower threshold (Vlt)**. The hysteresis mechanism significantly improves noise immunity, making Schmitt Triggers essential in modern digital systems.

---

## Functionality

The Schmitt Trigger operates by switching its output state based on two threshold voltages:  

1. **When the input voltage exceeds the upper threshold (Vut):** The output switches to LOW (logic 0).  
2. **When the input voltage drops below the lower threshold (Vlt):** The output switches to HIGH (logic 1).  
3. **When the input voltage lies between Vlt and Vut:** The output retains its previous state, ensuring stability against noise.  

This functionality enables the Schmitt Trigger to clean up noisy signals and provide stable transitions, making it ideal for applications like signal conditioning and waveform shaping.

---

## Truth Table

| Input Voltage Range         | Output State        | Description                                      |
|:----------------------------|:--------------------|:------------------------------------------------|
| Input > Upper Threshold (Vut) | LOW (logic 0)       | Output switches to LOW when input exceeds Vut.   |
| Input < Lower Threshold (Vlt) | HIGH (logic 1)      | Output switches to HIGH when input drops below Vlt. |
| Vlt ≤ Input ≤ Vut            | Retains Previous State | Output remains unchanged to prevent noise triggering. |

---

## Symbol of Schmitt Trigger

<div align="center">
    <img src="images/Schmitt_symbol.png" alt="Schmitt Trigger Symbol" width="">
    <p><strong>Symbol of Schmitt Trigger</strong></p>
</div>

---

## Circuit Diagram

A **Schmitt Trigger** can be implemented using a CMOS configuration with **3 PMOS transistors** and **3 NMOS transistors**, connected in a specific arrangement as shown in the circuit diagram.  

- **Power Supply:** +VDD is connected to the drains of the PMOS transistors, while the sources of the NMOS transistors are connected to GND.
- **Input:** The input signal is applied to the gates of the transistors.
- **Output:** The output is taken from the connection between the PMOS and NMOS transistors in the second stage.  

This configuration introduces positive feedback to create hysteresis, ensuring noise immunity and stable output transitions.

<div align="center">
    <img src="images/cstschematic.png" alt="Schmitt Trigger Schematic" width="">
    <p><strong>CMOS-Based Schmitt Trigger Circuit</strong></p>
</div>

---

## Input Signal Generation and Noise Injection

To analyze the functionality of the Schmitt Trigger, a **voltage divider network** is used to merge a square wave digital input signal with a high-frequency sine wave noise signal. This creates a distorted message signal (Vin), simulating real-world noise conditions for testing.  

<div align="center">
    <img src="images/noisde.png" alt="Noise Signal Generation" width="">
    <p><strong>Voltage Divider Network for Noise Signal</strong></p>
</div>

---

## Analysis of Schmitt Trigger

The distorted input signal (Vin) is applied to the gates of the CMOS transistors, and the output (Vout) is measured. The Schmitt Trigger effectively removes the noise, thanks to its hysteresis behavior, producing a clean digital output.  

<div align="center">
    <img src="images/noiseschematic.png" alt="Schmitt Trigger Analysis" width="">
    <p><strong>Circuit Diagram for Analysis</strong></p>
</div>

---

## Working Principle

The Schmitt Trigger operates as follows:  

1. When the input voltage exceeds the **upper threshold (Vut):** The output switches to LOW (logic 0).  
2. When the input voltage drops below the **lower threshold (Vlt):** The output switches to HIGH (logic 1).  
3. When the input voltage lies between **Vut** and **Vlt:** The output retains its previous state, ensuring noise immunity and stable transitions.  

<div align="center">
    <img src="images/sim.png" alt="Schmitt Trigger Input-Output Waveform" width="">
    <p><strong>Input-Output Waveform of Schmitt Trigger</strong></p>
</div>

---

## Voltage Transfer Characteristics (VTC)

The **Voltage Transfer Characteristics (VTC)** plot shows how the output changes as the input varies over its full swing. For a Schmitt Trigger, this curve demonstrates hysteresis due to the distinct **upper (Vut)** and **lower (Vlt)** thresholds.  
This hysteresis prevents false triggering caused by noise and ensures stable transitions between logic states.

---

## Parameters of the Schmitt Trigger

| Parameter         | Description                                                                 | Value       | Unit | Technology | Condition               |
|:-----------------:|:---------------------------------------------------------------------------:|:-----------:|:----:|:----------:|:-----------------------:|
| **Technology**    | CMOS technology used                                                       | SkyWater 130nm | -   | SkyWater   | -                       |
| **VCC**           | Supply voltage                                                            | 1.8         | V    | SkyWater   | -40°C to 125°C         |
| **Propagation Delay (tpHL)** | Delay from input 50% rise to output 50% fall (high-to-low transition)  | ~61.65      | ps   | SkyWater   | -40°C to 125°C         |
| **Propagation Delay (tpLH)** | Delay from input 50% fall to output 50% rise (low-to-high transition)  | ~224.37     | ps   | SkyWater   | -40°C to 125°C         |
| **Rise Time (tr)**| Time taken for output to rise from 10% to 90% of its final high value       | ~305.95     | ps   | SkyWater   | -40°C to 125°C         |
| **Fall Time (tf)**| Time taken for output to fall from 90% to 10% of its high value             | ~235.97     | ps   | SkyWater   | -40°C to 125°C         |
| **Threshold Voltage (Vth)**| Minimum input voltage required to switch the output state            | ~0.7        | V    | SkyWater   | -40°C to 125°C         |
| **Output High Voltage (Voh)** | Maximum voltage at the output during logic HIGH                  | ~5.0        | V    | SkyWater   | -40°C to 125°C         |
| **Output Low Voltage (Vol)** | Minimum voltage at the output during logic LOW                   | ~0.0        | V    | SkyWater   | -40°C to 125°C         |

---


## Conclusion  

This CMOS-based Schmitt Trigger effectively demonstrates noise immunity and stable output transitions, making it a crucial component in digital systems. The design is scalable for various CMOS processes and provides an excellent foundation for understanding hysteresis and bistable circuits.  

Feel free to explore and contribute to the repository!  
