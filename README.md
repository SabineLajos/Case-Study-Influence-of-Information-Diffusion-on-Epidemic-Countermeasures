# Case Study: Influence of Information Diffusion on Epidemic Countermeasures

The course of the COVID-19 pandemic is often modelled mathematically using SIR-like models. Since opinions on certain issues have a significant influence on people's behavior, we have extended the standard SIR model by coupling it with a model that focused on information diffusion or attitudes, modeled analogously to the SIR model. We analyze our model and calculating the reproductive number $R_C$ of the COVID model and $R_{Op}$ of the information diffusion model. We validated and analyzed our model by fitting them to COVID-19 data from the RKI and by performing a uncertainty analysis.

## Repository Content

- Picewise_coupled_fit.ipynb: $L_2$ fit parameters on whole data, incidence calculation and simulations
- picewise_coupled_params.txt: output parameters of Piecwise_coupled_fit.ipynb
- Picewise_coupled_fit_and_estimation_with_holdout_timepoints.ipynb: Fit parameters on split data and evaluate performance on hold out data
- Dependency_on_data.ipynb: Repetitively perturb data and fit parameters; boxplots of resulting parameter distributions
- Parameter_uncertainty.ipynb: Simulation with perturbed parameters, calculation of uncertainty measures and visualization
- specific_bounds_parameter_ordered_by_uncertainty.csv: Output of Parameter_uncertainty.ipynb; Explicit uncertainty calculations for the parameters with bounds specified by the boxplots
- all_params_ordered_by_influence_on_I.csv: Output of Parameter_uncertainty.ipynb; Uncertainty calculations for the influcence of the parameters on I
- all_params_ordered_by_uncertainty.csv: Output of Parameter_uncertainty.ipynb; Uncertainty calculations for the influence of the parameters on all compartments
- R0.ipynb: Calculation of $R_0$ and plots of $R_C$
- 00 Bundeslaender Gesamt.xlsx: RKI data Excel
- MATLAB: Solve non-linear equation system of the information diffusion model for parameters


