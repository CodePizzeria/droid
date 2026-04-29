#!/bin/bash

# 1. Access Conda functions within the script
# This locates where conda is installed and hooks it into this script session
CONDA_PATH=$(conda info --base)
source "$CONDA_PATH/etc/profile.d/conda.sh"

# 2. Activate the environment
echo "Activating 'robot' environment..."
conda activate robot

# 3. Perform the install
if [ $? -eq 0 ]; then
    python -m pip install pyserial websockets moviepy tyro pynput    
    echo "----------------------------"
    echo "Robot environment is ready!"
else
    echo "Error: Could not activate 'robot' environment."
fi

cd scripts
