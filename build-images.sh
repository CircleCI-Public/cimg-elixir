#!/usr/bin/env bash

docker build --file 1.9/Dockerfile -t cimg/elixir:1.9.4  -t cimg/elixir:1.9 .
docker build --file 1.9/node/Dockerfile -t cimg/elixir:1.9.4-node  -t cimg/elixir:1.9-node .
docker build --file 1.10/Dockerfile -t cimg/elixir:1.10.4  -t cimg/elixir:1.10 .
docker build --file 1.10/node/Dockerfile -t cimg/elixir:1.10.4-node  -t cimg/elixir:1.10-node .
