# Moxon antenna kit
by OE1EBG

## Interactive calculator

An interactive Jupyter notebook for Moxon rectangle dimensions and visualization is available at [`notebooks/interactive_moxon_calculator.ipynb`](notebooks/interactive_moxon_calculator.ipynb).

The notebook includes the theory note from [`notebooks/moxon_theory.md`](notebooks/moxon_theory.md), presets for 2 m and 70 cm, conductor diameter and velocity factor controls, dimension tables, and scaled geometry plots.

## Tuning guide

Structured build and tuning instructions are available in [`TUNING.md`](TUNING.md). The guide starts from the printed T-pieces, pipes, wire, and an antenna analyzer such as a NanoVNA or RigExpert Stick, then walks through iterative Moxon-specific tuning.

The tuning protocol notebook [`notebooks/moxon_tuning_protocol.ipynb`](notebooks/moxon_tuning_protocol.ipynb) can be used to log iterative measurements to `notebooks/data/moxon_tuning_log.csv`. Notebook cell outputs are cleared by the repository hooks, so the CSV is the persistent tuning record.
