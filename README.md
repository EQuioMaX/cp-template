# Lab Assignment Template
## Changes to the directory
- Removed the CP library from the project root

## Changes to the docker-compose configuration
- Added the library headers and archive to the docker image itself (used in Data/docker-compose.yml)
  - Image is available to pull at https://hub.docker.com/r/f20180196/csf111-cp/tags
  - Headers available at /usr/local/include/cp
  - Library available at /usr/local/lib
- Works with assignment fetcher
- Testing on other systems required

## Changes to makefile
- Removed custom library and include paths since the cp-library is available at default paths in the docker image