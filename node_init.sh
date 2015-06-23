#!/bin/bash
cd /src
echo 'Build code'
npm install
echo 'Running node server'
node --debug server.js
