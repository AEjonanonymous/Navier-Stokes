# <div align="center">Geometric Exclusion of Smooth Solutions to Navier-Stokes Equations at Stationary Right-Angles under No-Slip Boundary Conditions in Lean 4

## <div align="center">Visual Abstract

<div align="center">
  <img src="https://github.com/AEjonanonymous/Navier-Stokes/blob/main/Docs/navier_stokes_graphic_abstract.png" alt="Navier-Stokes Graphic Abstract">
</div>

<i>This paper presents a proof by contradiction demonstrating that smooth solutions to the three-dimensional incompressible Navier-Stokes equations do not exist for all time. Our argument is a direct consequence of a specific no-slip boundary condition: a stationary right-angle corner. Our results, verified via contradiction and geometric exclusion in Lean 4, provide a definitive counterexample, confirming that singularities must form in finite time.</i>

## <i>Proof</i> by Geometric Exclusion of Smooth Solutions

The proof establishes a **Geometric Exclusion** framework via contradiction, showing that the no-slip condition at domain corners structurally excludes globally smooth solutions for the three-dimensional incompressible Navier-Stokes equations.

### 1. Scaling Ratio & Critical Balance ($\lambda = -1$)

We analyze the scaling ratio of the non-linear inertial term $(u \cdot \nabla)u$ to the linear viscous term $\nu \nabla^2 u$ as the distance to a corner $r \to 0$:

$$\frac{|(u \cdot \nabla)u|}{|\nu \nabla^2 u|} \sim \frac{r^{2\lambda - 1}}{r^{\lambda - 2}} = r^{\lambda + 1}$$

*   **Non-linear Advection:** $\sim r^{2\lambda - 1}$ (drives vortex stretching / blow-up)
*   **Viscous Diffusion:** $\sim r^{\lambda - 2}$ (dissipates energy / regularizes flow)

Setting the exponents equal to find the critical threshold ($2\lambda - 1 = \lambda - 2$) yields:
$$\lambda = -1$$

*   **Case 1 ($\lambda > -1$):** Viscous dissipation dominates; the flow remains regularized and smooth.
*   **Case 2 ($\lambda < -1$):** Non-linear inertia dominates; a singularity is inevitable.

### 2. Enstrophy Transport Equation

The competition between vortex stretching (production) and viscous dissipation is governed by the enstrophy transport equation:

$$\frac{d\mathcal{E}}{dt} = \underbrace{\int_{V} \omega \cdot S \cdot \omega \, dV}_{\text{Production / Inertia}} - \underbrace{\nu\int_{V} |\nabla\omega|^2 \, dV}_{\text{Dissipation / Viscosity}}$$

For a smooth solution to exist ($\lambda > -1$), the scaling demands that the production term remain negligible compared to the dissipation term locally.

### 3. Geometric Contradiction & Exclusion

1. **No-Slip Requirement:** At the corner boundaries ($\partial \Omega$), the velocity field vanishes: 
   $$u(x, t) \equiv 0$$
2. **Derivative Activity:** Following Moffatt's analysis of corner flows, a non-zero velocity field satisfying no-slip must still undergo shearing and spinning. Consequently, angular derivatives (vorticity $\omega$ and rate-of-strain $S$) are **non-zero** at the boundary:
   $$\frac{\partial f}{\partial \theta} \neq 0 \quad \text{and} \quad \frac{\partial f}{\partial \phi} \neq 0$$
3. **The Structural Paradox:** 
   * Smooth math requires the production term to vanish ($\to 0$) in the $\lambda > -1$ regime.
   * Corner geometry proves the production term is strictly active ($\neq 0$).

### 4. Conclusion 

This geometric necessity voids the smooth assumption ($\lambda > -1$), forcing the system into the singular regime ($\lambda \le -1$) where enstrophy production becomes unbounded in finite time.

## ⚖️ License
The Lean 4 source code is licensed under MIT License. 

## 📖 Citation

> Reed, Jonathan ƒ(n). (2026). *Geometric Exclusion of Smooth Solutions to Navier-Stokes Equations at Stationary Right-Angles under No-Slip Boundary Conditions in Lean 4* (Version 1.0) [Data set/Computer software]. Zenodo. [https://doi.org/10.5281/zenodo.21926631]

---
[![Field: Fluid Dynamics](https://img.shields.io/badge/Field-Fluid%20Dynamics-blue.svg)](https://github.com/topics/fluid-dynamics) [![Verified in Lean 4](https://img.shields.io/badge/Verified-Lean%204-purple.svg)](https://leanprover.github.io/) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

© 2026 Jonathan ƒ(n) Reed. All rights reserved.
