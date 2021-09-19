#!/bin/bash

## build assets
(cd assets && npm run build)
## build elm
sh build.sh
