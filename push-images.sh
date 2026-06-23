#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.20-erlang-26.2.3
docker push cimg/elixir:1.20.2-erlang-26.2.3
docker push cimg/elixir:1.20-erlang-26.2.3-node
docker push cimg/elixir:1.20.2-erlang-26.2.3-node
docker push cimg/elixir:1.20-erlang-26.2.3-browsers
docker push cimg/elixir:1.20.2-erlang-26.2.3-browsers
docker push cimg/elixir:1.20-erlang-27.2.2
docker push cimg/elixir:1.20.2-erlang-27.2.2
docker tag cimg/elixir:1.20.2-erlang-27.2.2 cimg/elixir:1.20.2
docker tag cimg/elixir:1.20-erlang-27.2.2 cimg/elixir:1.20
docker push cimg/elixir:1.20
docker push cimg/elixir:1.20.2
docker push cimg/elixir:1.20-erlang-27.2.2-node
docker push cimg/elixir:1.20.2-erlang-27.2.2-node
docker tag cimg/elixir:1.20.2-erlang-27.2.2-node cimg/elixir:1.20.2-node
docker tag cimg/elixir:1.20-erlang-27.2.2-node cimg/elixir:1.20-node
docker push cimg/elixir:1.20-node
docker push cimg/elixir:1.20.2-node
docker push cimg/elixir:1.20-erlang-27.2.2-browsers
docker push cimg/elixir:1.20.2-erlang-27.2.2-browsers
docker tag cimg/elixir:1.20.2-erlang-27.2.2-browsers cimg/elixir:1.20.2-browsers
docker tag cimg/elixir:1.20-erlang-27.2.2-browsers cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20.2-browsers
docker push cimg/elixir:1.20.1-erlang-26.2.3
docker push cimg/elixir:1.20.1-erlang-26.2.3-node
docker push cimg/elixir:1.20.1-erlang-26.2.3-browsers
docker push cimg/elixir:1.20.1-erlang-27.2.2
docker tag cimg/elixir:1.20.1-erlang-27.2.2 cimg/elixir:1.20.1
docker push cimg/elixir:1.20.1
docker push cimg/elixir:1.20.1-erlang-27.2.2-node
docker tag cimg/elixir:1.20.1-erlang-27.2.2-node cimg/elixir:1.20.1-node
docker push cimg/elixir:1.20.1-node
docker push cimg/elixir:1.20.1-erlang-27.2.2-browsers
docker tag cimg/elixir:1.20.1-erlang-27.2.2-browsers cimg/elixir:1.20.1-browsers
docker push cimg/elixir:1.20.1-browsers
docker push cimg/elixir:1.20.0-erlang-26.2.3
docker push cimg/elixir:1.20.0-erlang-26.2.3-node
docker push cimg/elixir:1.20.0-erlang-26.2.3-browsers
docker push cimg/elixir:1.20.0-erlang-27.2.2
docker tag cimg/elixir:1.20.0-erlang-27.2.2 cimg/elixir:1.20.0
docker push cimg/elixir:1.20.0
docker push cimg/elixir:1.20.0-erlang-27.2.2-node
docker tag cimg/elixir:1.20.0-erlang-27.2.2-node cimg/elixir:1.20.0-node
docker push cimg/elixir:1.20.0-node
docker push cimg/elixir:1.20.0-erlang-27.2.2-browsers
docker tag cimg/elixir:1.20.0-erlang-27.2.2-browsers cimg/elixir:1.20.0-browsers
docker push cimg/elixir:1.20.0-browsers
