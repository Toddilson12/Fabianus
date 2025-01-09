# Fabianus
Simulation of blunted body on Mars Hypersonic Atmospheric Entry using hy2Foam solver for OpenFOAM. Preliminary studies to assert the viability of using the Martian ABSRP proposed by Dr. Goynea and Dr. Braun (https://doi.org/10.2514/1.B35776) in hypersonic regimes.

The objective is to analyze the concentrations of each species around the body of the vehicle.

The current version, as of 08/01/2025, is from 21/10/2024, and is still incomplete and contains problems, such as:
1. Incomplete collision data interaction pairs for the carbon-based species
2. Exception error thrown by the chemistry dictionary code

The data for the electronic and vibrational modes/states of the species was retrieved from Mutation++ repo, but is in accordance with ESA's "Tables of Internal Partition Functions and Thermodynamic Properties of High-Temperature Mars-Atmosphere Species from 50K to 50000K"

The chemical dicitionary uesd was a modified version of Gupta's 1984 Reaction Model. Since the solver uses a different fit model, the coefficients were recalculated to match the original model from the article.

The flow is considered laminar, for simplicity and the fact that the estimated Reynolds Number is orders of magnitude lower than the critical point for turbulance.

The simulation is not multiphase and there is no backwards flow emerging from the vehicle.

hy2Foam settings used:
- all internal energy modes
- Blottner-Eucken model
- Armaly-Sutton model
- SCEBD model
- Chemically-reacting flow
- Non-equilibrium reversible arrhenius reactions with third-body interaction (Park's coefficients used; however, invariable to mixture density number)
- Thermal non-equilibrium
- Single vibro-electronic energy pool (with recommended settings)
- Park TTv model
- Laminar
- MHD enabled
- Chapman-Cowling model
- Hall effect considered
- Super-catalytic wall
- Maxwell velocity slip
