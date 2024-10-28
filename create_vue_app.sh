#!/bin/bash

create_vue_app() {
  package_manager="$1"

  if [ -z "$package_manager" ]; then
    echo "Error: No package manager specified"
    return 1
  fi

  $package_manager create vite@latest . --template vue-ts
}

create_vue_app "$1"