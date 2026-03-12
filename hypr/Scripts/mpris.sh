#!/bin/bash

playerctl metadata --format '{{title}}' 2>/dev/null || echo "media not found."
