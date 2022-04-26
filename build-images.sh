#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.13/Dockerfile -t cimg/elixir:1.13.4  -t cimg/elixir:1.13 .
docker build --file 1.13/node/Dockerfile -t cimg/elixir:1.13.4-node  -t cimg/elixir:1.13-node .
docker build --file 1.13/browsers/Dockerfile -t cimg/elixir:1.13.4-browsers  -t cimg/elixir:1.13-browsers .
