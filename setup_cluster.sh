# If conda is not installed. On DICE Edinburgh machines, check /opt/conda/bin
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc

# On DICE machines
# echo 'export PATH="/opt/conda/bin:$PATH"' >> ~/.benv && source ~/.benv

# Install github CLI
conda create -n emile

# WARNING: On DICE Machines copy .bashrc into .benv after conda init bash!
conda init bash

# Probably requires a reset of terminal
conda activate emile


conda install gh --channel conda-forge
# Probably easiest to use authentication tokens here
gh auth login

conda install pytorch::pytorch torchvision torchaudio -c pytorch
conda install wandb --channel conda-forge
wandb login


