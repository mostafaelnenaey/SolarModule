Here’s a detailed **README.md** file for your solar module project, explaining the relation between power, current, temperature, and irradiance.

---

### **README.md**

# Solar Module Power and Current Analysis
This project models the behavior of a solar module under varying **temperature** and **irradiance** conditions. It focuses on analyzing the impact of these environmental parameters on the **current (I)** and **power (P)** output of the module.

---

## **Overview**
The program simulates the **Current-Voltage (I-V)** and **Power-Voltage (P-V)** characteristics of a photovoltaic (PV) solar module under:
1. Different **temperatures** (e.g., 318 K and 343 K).
2. Different **irradiance levels** (e.g., 650 W/m² and 300 W/m²).

Using fundamental equations related to solar cell modeling, the program visualizes the behavior of current and power with respect to voltage.

---

## **Key Features**
- Simulates I-V and P-V curves under **Standard Test Conditions (STC)**.
- Analyzes the effect of **temperature** and **irradiance** on module performance.
- Provides visualizations (plots) to compare the changes in current and power.

---

## **Theory**

### **1. Impact of Temperature on Solar Module**
- As the **temperature increases**, the **open-circuit voltage (Voc)** decreases significantly.
- The **short-circuit current (Isc)** increases slightly with temperature, but this effect is minimal compared to voltage reduction.
- Since **Power = Voltage × Current**, the overall power output decreases with increasing temperature.

**Key Observations:**
- Higher temperatures result in lower power output.
- The I-V curve shifts **left** (towards lower voltage).

---

### **2. Impact of Irradiance on Solar Module**
- The **irradiance** (light intensity) directly affects the **short-circuit current (Isc)**.
- As the irradiance decreases, the **current** decreases linearly.
- The **open-circuit voltage (Voc)** is less sensitive to changes in irradiance compared to temperature.

**Key Observations:**
- Lower irradiance reduces both current and power.
- The I-V and P-V curves shrink downward (lower current output).

---

## **Program Structure**
### **Functions Used**
- `IrradianceCurrent`: Computes the photonic current for given irradiance and temperature.
- `ReverseCurrentSTC`: Calculates reverse saturation current at STC.
- `currentNewton`: Uses the Newton-Raphson method to calculate current for given voltage and parameters.
- `modelDesigner`: Determines the model parameters (`Rs`, `Rsh`, etc.) for the solar module.

### **Parameters**
| Parameter         | Value                     | Description                          |
|-------------------|---------------------------|--------------------------------------|
| `K`              | \( 1.381 \times 10^{-23} \) | Boltzmann constant                  |
| `q`              | \( 1.6 \times 10^{-19} \)   | Electron charge                     |
| `Vg`             | 1.12                      | Bandgap energy                      |
| `n`              | 72                        | Number of cells                     |
| `Voc`            | 44.8 V                    | Open-circuit voltage at STC         |
| `Isc1`           | 5.5 A                     | Short-circuit current at STC        |
| `Ko`             | 0.00065                  | Temperature coefficient             |
| `T1`             | 298 K (STC)              | Standard test condition temperature |
| `S1`             | 1000 W/m²                | Standard irradiance                 |

---

## **Simulation Results**

### **1. At Standard Test Conditions (STC)**
- **Temperature** = 298 K, **Irradiance** = 1000 W/m²
- The I-V and P-V curves show maximum performance at STC.

### **2. Higher Temperatures**
- **Temperatures Tested**: 318 K, 343 K
- **Observation**: 
   - Voltage decreases as temperature increases.
   - Power output reduces significantly due to lower voltage.

**Graphs Generated:**
- I-V and P-V curves at 318 K and 343 K.

---

### **3. Lower Irradiance Levels**
- **Irradiances Tested**: 650 W/m², 300 W/m²
- **Observation**:
   - Current decreases linearly with decreasing irradiance.
   - Power output reduces proportionally to irradiance.

**Graphs Generated:**
- I-V and P-V curves at 650 W/m² and 300 W/m².

---

## **How to Run the Code**
1. Run the script in a MATLAB environment.
2. The program generates the following plots:
   - I-V and P-V curves at STC.
   - I-V and P-V curves for **higher temperatures** (318 K and 343 K).
   - I-V and P-V curves for **lower irradiance levels** (650 W/m² and 300 W/m²).

---

## **Results Interpretation**
- **Power vs. Temperature**: Power decreases with increasing temperature.
- **Power vs. Irradiance**: Power decreases linearly with decreasing irradiance.
- **Current vs. Temperature**: Slight increase in current with temperature, but it is not sufficient to compensate for voltage reduction.
- **Current vs. Irradiance**: Current is highly sensitive to irradiance changes.

---

## **Applications**
- PV module performance analysis for various environmental conditions.
- Solar energy system design and optimization.
- Educational demonstration of solar cell behavior.

---

## **Conclusion**
This project demonstrates the inverse relationship between temperature and power output in solar modules and the direct relationship between irradiance and current. By modeling and visualizing the I-V and P-V curves, it highlights key performance trends of PV systems under real-world conditions.

---
