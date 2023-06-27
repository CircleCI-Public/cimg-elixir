#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/elixir:1.15-erlang-24.3.3
docker push cimg/elixir:1.15-erlang-24.3.3-node
docker push cimg/elixir:1.15-erlang-24.3.3-browsers
docker push cimg/elixir:1.15-erlang-25.3
docker tag cimg/elixir:1.15-erlang-25.3 cimg/elixir:1.15
docker push cimg/elixir:1.15
docker push cimg/elixir:1.15-erlang-25.3-node
docker tag cimg/elixir:1.15-erlang-25.3-node cimg/elixir:1.15-node
docker push cimg/elixir:1.15-node
docker push cimg/elixir:1.15-erlang-25.3-browsers
docker tag cimg/elixir:1.15-erlang-25.3-browsers cimg/elixir:1.15-browsers
docker push cimg/elixir:1.15-browsers
