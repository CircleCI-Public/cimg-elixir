#!/usr/bin/env bash

docker build --file 1.11/browsers/Dockerfile -t cimg/elixir:1.11.0-browsers  -t cimg/elixir:1.11-browsers .
