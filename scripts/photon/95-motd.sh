#!/bin/bash
# Prepare Photon OS template for vSphere cloning
# @author Michael Poore
# @website https://blog.v12n.io

# Build date used for motd
OS=$(head -n 1 /etc/photon-release)
BUILD=$(tail -n 1 /etc/photon-release | awk -F"=" '{print (NF>1)? $NF : ""}')
RELEASE="$OS ($BUILD)"
DOCS="https://github.com/v12n-io/packer-photon3"

# Create Issue
cat << ISSUE > /etc/issue

           {__   {__ {_            
{__     {__ {__ {_     {__{__ {__  
 {__   {__  {__      {__   {__  {__
  {__ {__   {__    {__     {__  {__
   {_{__    {__  {__       {__  {__
    {__    {____{________ {___  {__
        
        $RELEASE
        Build REPLACEWITHBUILDVERSION
        $DOCS

ISSUE

# MOTD symlinks
ln -sf /etc/issue /etc/issue.net