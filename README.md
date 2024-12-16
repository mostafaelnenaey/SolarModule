# Solar Module Performance Analysis

## Overview
This project models  the behavior of a solar photovoltaic (PV) module given parameters like temperature coefficient, Vmpp, Impp, Voc1, Isc1. The relationship between power, current, and voltage is also examined and plotted for different scenarios. Key performance metrics such as **efficiency** and **fill factor** are also calculated to evaluate the module's effectiveness.

---

## Project Description
The project focuses on:
1. **Current and Power Behavior**: Understanding how current and power output change with variations in temperature and irradiance.
2. **Temperature Dependence**: Examining the module's performance at different temperatures (e.g., 298 K, 318 K, and 343 K).
3. **Irradiance Dependence**: Investigating the effect of irradiance levels (1000 W/m², 650 W/m², and 300 W/m²) on power and current output.
4. **Efficiency and Fill Factor**: Calculating module efficiency and fill factor to evaluate the quality of the solar module.

---

## Key Observations

### 1. **Effect of Temperature**
- As **temperature increases**, the **open-circuit voltage (Voc)** decreases.
- However, the **short-circuit current (Isc)** remains relatively constant or increases slightly.
- The decrease in voltage leads to a reduction in **power output**.

**Behavior Summary**:
- Higher temperatures reduce the overall performance and efficiency of the solar module.

### 2. **Effect of Irradiance**
- As **irradiance increases**, both the **short-circuit current (Isc)** and the **maximum power output** increase proportionally.
- The **open-circuit voltage (Voc)** increases slightly with irradiance but is less sensitive compared to current.

**Behavior Summary**:
- Higher irradiance leads to higher current and power generation.
- Lower irradiance significantly reduces the output power.

---

## Plots
The following plots are generated:
1. **Current-Voltage (I-V) and Power-Voltage (P-V) Characteristics** at standard test conditions (STC: 1000 W/m², 298 K).
2. **I-V and P-V Characteristics at Higher Temperatures**:
   - 318 K
   - 343 K
3. **I-V and P-V Characteristics at Lower Irradiance**:
   - 650 W/m²
   - 300 W/m²

These plots highlight the impact of temperature and irradiance on module performance.

---

## Results Summary
- **Efficiency** and **fill factor** decrease with increasing temperature.
- Power output is highly dependent on irradiance; lower irradiance significantly reduces the module's performance.
- The module operates optimally at STC (1000 W/m², 298 K).

---

## Functions Used
The following functions are used to model and analyze the solar module:
1. `IrradianceCurrent()` - Calculates the photonic current for given temperature and irradiance.
2. `ReverseCurrentSTC()` - Computes the reverse saturation current at STC.
3. `ReverseCurrent()` - Adjusts the reverse current for varying temperatures.
4. `currentNewton()` - Solves for current using Newton-Raphson method.
5. `PVmod()` - Simulates the module's current output for a given voltage, temperature, and irradiance.
6. `modelDesigner()` - Given parameters of the solar module, It will design values for Rs, Rsh, and ideality factor

---

## Plots Generated
- **Current vs Voltage (I-V)**
- **Power vs Voltage (P-V)**

### Scenarios:
- Standard Test Conditions (298 K, 1000 W/m²)
- Higher Temperatures: 318 K, 343 K
- Lower Irradiance: 650 W/m², 300 W/m²

---

## Conclusion
This project highlights the influence of temperature and irradiance on the performance of a solar PV module:
1. **Temperature Increase**: Reduces voltage, efficiency, and power output.
2. **Irradiance Decrease**: Reduces current and power output significantly.

The findings underscore the importance of optimizing operating conditions (temperature control and adequate irradiance) to achieve the best performance from a solar PV module.

---

## Requirements
- MATLAB
- Basic understanding of photovoltaic systems and modeling

---

## Running the Code
Run the script in MATLAB to:
- Simulate I-V and P-V curves for different conditions.
- Observe the impact of temperature and irradiance.
- Compute efficiency and fill factor.

---

## Contact
For questions or suggestions, feel free to reach out!

---

