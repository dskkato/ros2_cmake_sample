#!/bin/zsh

# Set the installation directory
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Set AMENT_PREFIX_PATH
if [ -z "$AMENT_PREFIX_PATH" ]; then
  export AMENT_PREFIX_PATH="$INSTALL_DIR"
else
  export AMENT_PREFIX_PATH="$INSTALL_DIR:$AMENT_PREFIX_PATH"
fi

# Set LD_LIBRARY_PATH
if [ -z "$LD_LIBRARY_PATH" ]; then
  export LD_LIBRARY_PATH="$INSTALL_DIR/lib"
else
  export LD_LIBRARY_PATH="$INSTALL_DIR/lib:$LD_LIBRARY_PATH"
fi

PYTHON_EXECUTABLE=$(which python3)
PYTHON_VERSION=$($PYTHON_EXECUTABLE -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
PYTHON_INSTALL_PATH="$INSTALL_DIR/lib/python$PYTHON_VERSION/site-packages"

# Set PYTHONPATH
if [ -z "$PYTHONPATH" ]; then
  export PYTHONPATH="$PYTHON_INSTALL_DIR"
else
  export PYTHONPATH="$PYTHON_INSTALL_DIR:$PYTHONPATH"
fi
