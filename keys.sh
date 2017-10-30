# Check if a key is already present
echo "Checking if a key pair is already present..."
keyAlreadyPresent=$(ls ~/.ssh/ | grep "id_rsa");
if [ -z $keyAlreadyPresent ]; then
    echo "Key pair not present."
    # Copy key pair from the inserted path
    echo "Type the path of the location of the key pair"
    read keyPath

    if [ -z $keyPath ]; then
        echo "No path inserted. Skipping."
    else
        echo "Copying keys to ~/.ssh/..."
        echo "Copying private key..."
        cp $keyPath/id_rsa ~/.ssh/
        echo "Copying public key..."
        cp $keyPath/id_rsa.pub ~/.ssh/
    fi
else
    echo "Key pair already present."
fi
