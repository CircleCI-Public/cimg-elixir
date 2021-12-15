#!/usr/bin/env bash

docker build --file 1.13/Dockerfile -t cimg/elixir:1.13.1  -t cimg/elixir:1.13 .
docker build --file 1.13/node/Dockerfile -t cimg/elixir:1.13.1-node  -t cimg/elixir:1.13-node .
docker build --file 1.13/browsers/Dockerfile -t cimg/elixir:1.13.1-browsers  -t cimg/elixir:1.13-browsers .
