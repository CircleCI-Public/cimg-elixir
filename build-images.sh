#!/usr/bin/env bash

docker build --file 1.11/browsers/Dockerfile -t cimg/elixir:1.11.1-browsers  -t cimg/elixir:1.11-browsers .
