#!/bin/bash

(crontab -l 2>/dev/null; echo "0 0 1 */5 * $(pwd)/Docker-Everimage.sh") | crontab -