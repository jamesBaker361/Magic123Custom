

# for aws ubuntu.  install eigen
sudo apt update && sudo apt upgrade
sudo apt install git wget libeigen3-dev -y

 # a100: 8.0; v100: 7.0; 2080ti: 7.5; titan xp: 6.1
export TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0"

# use python venv
#python3 -m venv venv_magic123
#source venv_magic123/bin/activate

# use conda
eval "$(conda shell.bash hook)"
conda init
conda deactivate
conda delete -n magic123 --all -y
conda create -n magic123 python=3.10  -y

conda activate magic123

pip install torch torchvision
pip install -r requirements.txt
bash scripts/install_ext.sh
conda clean --all -y
