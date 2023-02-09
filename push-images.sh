#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
docker push cimg/elixir:1.14-erlang-23.3.1
docker push cimg/elixir:1.14.3-erlang-23.3.1
docker push cimg/elixir:1.14-erlang-23.3.1-node
docker push cimg/elixir:1.14.3-erlang-23.3.1-node
docker push cimg/elixir:1.14-erlang-23.3.1-browsers
docker push cimg/elixir:1.14.3-erlang-23.3.1-browsers
docker push cimg/elixir:1.14-erlang-24.3.3
docker push cimg/elixir:1.14.3-erlang-24.3.3
docker push cimg/elixir:1.14-erlang-24.3.3-node
docker push cimg/elixir:1.14.3-erlang-24.3.3-node
docker push cimg/elixir:1.14-erlang-24.3.3-browsers
docker push cimg/elixir:1.14.3-erlang-24.3.3-browsers
docker push cimg/elixir:1.14-erlang-25.0.4
docker push cimg/elixir:1.14.3-erlang-25.0.4
docker tag cimg/elixir:1.14.3-erlang-25.0.4 cimg/elixir:1.14.3
docker tag cimg/elixir:1.14-erlang-25.0.4 cimg/elixir:1.14
docker push cimg/elixir:1.14
docker push cimg/elixir:1.14.3
docker push cimg/elixir:1.14-erlang-25.0.4-node
docker push cimg/elixir:1.14.3-erlang-25.0.4-node
docker tag cimg/elixir:1.14.3-erlang-25.0.4-node cimg/elixir:1.14.3-node
docker tag cimg/elixir:1.14-erlang-25.0.4-node cimg/elixir:1.14-node
docker push cimg/elixir:1.14-node
docker push cimg/elixir:1.14.3-node
docker push cimg/elixir:1.14-erlang-25.0.4-browsers
docker push cimg/elixir:1.14.3-erlang-25.0.4-browsers
docker tag cimg/elixir:1.14.3-erlang-25.0.4-browsers cimg/elixir:1.14.3-browsers
docker tag cimg/elixir:1.14-erlang-25.0.4-browsers cimg/elixir:1.14-browsers
docker push cimg/elixir:1.14-browsers
docker push cimg/elixir:1.14.3-browsers
