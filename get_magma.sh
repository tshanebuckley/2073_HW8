#!/bin/bash

# 0. Create a directory to download and save magma into
mkdir -p magma
cd magma

# 1. Define the download URL for the static binary
# Update this URL if a newer version is available
MAGMA_URL="https://vu.data.surf.nl/public.php/dav/files/zkKbNeNOZAhFXZB"

echo "Downloading MAGMA static binary..."
wget -O magma.static.exe.gz "$MAGMA_URL"

echo "Decompressing file..."
unzip magma.static.exe.gz

echo "Renaming and setting permissions..."
mv magma.static.exe magma
chmod +x magma

echo "Success! You can now run MAGMA with: ./magma"

cd ..
