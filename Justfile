

set shell := ["bash", "-cu"]
freecad_tools_version := "v0.6.0"
config := ".freecad_tools/config.yml"

default:
    # list the available targets
    just --list

# setup the virtual environment and install dependencies
init:
    uv venv .venv --clear
    uv pip install "freecad-tools @ git+https://github.com/ebirn/freecad_tools@{{freecad_tools_version}}"

# export a named config entry
export name:
    source .venv/bin/activate && freecad-export --config {{config}} --name {{name}}

# export all items defined in the config
export-all:
    source .venv/bin/activate && freecad-export --config {{config}}

# list all available exports defined in the config
export-list:
    source .venv/bin/activate && freecad-export --config {{config}} --list-exports

# launch a notebook locally with JupyterLab
notebook path="notebooks/moxon_tuning_protocol.ipynb":
    uv run jupyter lab {{path}}

# build a static voici/JupyterLite dashboard from notebooks/ into _output/
voici:
    # kernel version pinned to match voici-core's bundled app-shell JS;
    # a newer kernel release here causes webpack "Unsatisfied version" errors
    uvx --from voici-core --with "jupyterlite-pyodide-kernel==0.7.0" voici notebooks/

# build and serve the static voici dashboard locally
voici-serve: voici
    cd _output && python3 -m http.server
