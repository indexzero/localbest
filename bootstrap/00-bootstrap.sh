
# Check for XCode Command Line Tools and install if not found
if ! xcode-select -p &>/dev/null; then
    echo "XCode Command Line Tools not found. Installing..."
    xcode-select --install
else
    echo "XCode Command Line Tools already installed."
fi

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
nix --version

# Install home-manager


# Install fish shell
# (Use rstacruz approach)
