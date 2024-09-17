#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.17-erlang-25.3.2
docker push cimg/elixir:1.17.2-erlang-25.3.2
docker push cimg/elixir:1.17-erlang-25.3.2-node
docker push cimg/elixir:1.17.2-erlang-25.3.2-node
docker push cimg/elixir:1.17-erlang-25.3.2-browsers
docker push cimg/elixir:1.17.2-erlang-25.3.2-browsers
docker push cimg/elixir:1.17-erlang-26.2.1
docker push cimg/elixir:1.17.2-erlang-26.2.1
docker push cimg/elixir:1.17-erlang-26.2.1-node
docker push cimg/elixir:1.17.2-erlang-26.2.1-node
docker push cimg/elixir:1.17-erlang-26.2.1-browsers
docker push cimg/elixir:1.17.2-erlang-26.2.1-browsers
docker push cimg/elixir:1.17-erlang-27.0.1
docker push cimg/elixir:1.17.2-erlang-27.0.1
docker tag cimg/elixir:1.17.2-erlang-27.0.1 cimg/elixir:1.17.2
docker tag cimg/elixir:1.17-erlang-27.0.1 cimg/elixir:1.17
docker push cimg/elixir:1.17
docker push cimg/elixir:1.17.2
docker push cimg/elixir:1.17-erlang-27.0.1-node
docker push cimg/elixir:1.17.2-erlang-27.0.1-node
docker tag cimg/elixir:1.17.2-erlang-27.0.1-node cimg/elixir:1.17.2-node
docker tag cimg/elixir:1.17-erlang-27.0.1-node cimg/elixir:1.17-node
docker push cimg/elixir:1.17-node
docker push cimg/elixir:1.17.2-node
docker push cimg/elixir:1.17-erlang-27.0.1-browsers
docker push cimg/elixir:1.17.2-erlang-27.0.1-browsers
docker tag cimg/elixir:1.17.2-erlang-27.0.1-browsers cimg/elixir:1.17.2-browsers
docker tag cimg/elixir:1.17-erlang-27.0.1-browsers cimg/elixir:1.17-browsers
docker push cimg/elixir:1.17-browsers
docker push cimg/elixir:1.17.2-browsers
