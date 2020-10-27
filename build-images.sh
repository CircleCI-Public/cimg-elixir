#!/usr/bin/env bash

docker build --file 1.11/Dockerfile -t cimg/elixir:1.11.1  -t cimg/elixir:1.11 .
docker build --file 1.11/node/Dockerfile -t cimg/elixir:1.11.1-node  -t cimg/elixir:1.11-node .
docker build --file 1.11/browsers/Dockerfile -t cimg/elixir:1.11.1-browsers  -t cimg/elixir:1.11-browsers .
