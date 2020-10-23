#!/bin/bash
# Prepare Photon OS template for vSphere cloning with updates
# @author Michael Poore
# @website https://blog.v12n.io

# Update existing packages
sudo tdnf upgrade tdnf -y --refresh
sudo tdnf distro-sync -y