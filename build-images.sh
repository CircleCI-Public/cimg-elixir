#!/usr/bin/env bash

docker build --file 1.12/Dockerfile -t cimg/elixir:1.12.1  -t cimg/elixir:1.12 .
docker build --file 1.12/node/Dockerfile -t cimg/elixir:1.12.1-node  -t cimg/elixir:1.12-node .
docker build --file 1.12/browsers/Dockerfile -t cimg/elixir:1.12.1-browsers  -t cimg/elixir:1.12-browsers .
