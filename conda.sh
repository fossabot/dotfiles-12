# Install Miniconda3
echo "Insalling Miniconda3..."
curl -fsSL https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o /tmp/Miniconda3-latest-MacOSX-x86_64.sh
chmod +x /tmp/Miniconda3-latest-MacOSX-x86_64.sh
/tmp/Miniconda3-latest-MacOSX-x86_64.sh -b

export PATH="$HOME/miniconda3/bin:$PATH"
conda --version

# Update conda
echo "Updating conda..."
conda update conda -y

# Make conda handle python and r environments
echo "Installing some conda packages..."
conda install -y python
conda install -y flake8
conda install -y ipython
conda install -y -c r r

# Add setup-python-env script used called by the homonymous git alias
echo "Copying setup-python-env script for the homonymous git alias..."
cp ./git/setup-python-env "$HOME/miniconda3/bin"
chmod +x "$HOME/miniconda3/bin/setup-python-env"
