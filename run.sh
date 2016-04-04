#!/bin/bash
# Necessary because Docker process does not work for running Jupyter kernel
# Documented here: https://github.com/ipython/ipython/issues/7062

jupyter notebook --no-browser --ip=*
