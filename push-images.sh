#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/elixir:1.13-erlang-22.3
docker push cimg/elixir:1.13.4-erlang-22.3
docker push cimg/elixir:1.13-erlang-22.3-node
docker push cimg/elixir:1.13.4-erlang-22.3-node
docker push cimg/elixir:1.13-erlang-22.3-browsers
docker push cimg/elixir:1.13.4-erlang-22.3-browsers
docker push cimg/elixir:1.13-erlang-23.3
docker push cimg/elixir:1.13.4-erlang-23.3
docker push cimg/elixir:1.13-erlang-23.3-node
docker push cimg/elixir:1.13.4-erlang-23.3-node
docker push cimg/elixir:1.13-erlang-23.3-browsers
docker push cimg/elixir:1.13.4-erlang-23.3-browsers
docker push cimg/elixir:1.13-erlang-24.3
docker push cimg/elixir:1.13.4-erlang-24.3
docker tag cimg/elixir:1.13.4-erlang-24.3 cimg/elixir:1.13.4
docker tag cimg/elixir:1.13-erlang-24.3 cimg/elixir:1.13
docker push cimg/elixir:1.13-erlang-24.3-node
docker push cimg/elixir:1.13.4-erlang-24.3-node
docker tag cimg/elixir:1.13.4-erlang-24.3-node cimg/elixir:1.13.4-node
docker tag cimg/elixir:1.13-erlang-24.3-node cimg/elixir:1.13-node
docker push cimg/elixir:1.13-erlang-24.3-browsers
docker push cimg/elixir:1.13.4-erlang-24.3-browsers
docker tag cimg/elixir:1.13.4-erlang-24.3-browsers cimg/elixir:1.13.4-browsers
docker tag cimg/elixir:1.13-erlang-24.3-browsers cimg/elixir:1.13-browsers
