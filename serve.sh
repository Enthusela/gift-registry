#!/bin/bash
cd "$(dirname "$0")/site"
echo "Serving at http://localhost:8080"
echo "For public access run: tailscale funnel 8080"
python3 -m http.server 8080
