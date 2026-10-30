#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.20-erlang-27.3.4
docker push cimg/elixir:1.20.5-erlang-27.3.4
docker push cimg/elixir:1.20-erlang-27.3.4-node
docker push cimg/elixir:1.20.5-erlang-27.3.4-node
docker push cimg/elixir:1.20-erlang-27.3.4-browsers
docker push cimg/elixir:1.20.5-erlang-27.3.4-browsers
docker push cimg/elixir:1.20-erlang-28.5.0
docker push cimg/elixir:1.20.5-erlang-28.5.0
docker push cimg/elixir:1.20-erlang-28.5.0-node
docker push cimg/elixir:1.20.5-erlang-28.5.0-node
docker push cimg/elixir:1.20-erlang-28.5.0-browsers
docker push cimg/elixir:1.20.5-erlang-28.5.0-browsers
docker push cimg/elixir:1.20-erlang-29.1.2
docker push cimg/elixir:1.20.5-erlang-29.1.2
docker tag cimg/elixir:1.20.5-erlang-29.1.2 cimg/elixir:1.20.5
docker tag cimg/elixir:1.20-erlang-29.1.2 cimg/elixir:1.20
docker push cimg/elixir:1.20
docker push cimg/elixir:1.20.5
docker push cimg/elixir:1.20-erlang-29.1.2-node
docker push cimg/elixir:1.20.5-erlang-29.1.2-node
docker tag cimg/elixir:1.20.5-erlang-29.1.2-node cimg/elixir:1.20.5-node
docker tag cimg/elixir:1.20-erlang-29.1.2-node cimg/elixir:1.20-node
docker push cimg/elixir:1.20-node
docker push cimg/elixir:1.20.5-node
docker push cimg/elixir:1.20-erlang-29.1.2-browsers
docker push cimg/elixir:1.20.5-erlang-29.1.2-browsers
docker tag cimg/elixir:1.20.5-erlang-29.1.2-browsers cimg/elixir:1.20.5-browsers
docker tag cimg/elixir:1.20-erlang-29.1.2-browsers cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20.5-browsers
docker push cimg/elixir:1.19-erlang-27.3.4
docker push cimg/elixir:1.19.7-erlang-27.3.4
docker push cimg/elixir:1.19-erlang-27.3.4-node
docker push cimg/elixir:1.19.7-erlang-27.3.4-node
docker push cimg/elixir:1.19-erlang-27.3.4-browsers
docker push cimg/elixir:1.19.7-erlang-27.3.4-browsers
docker push cimg/elixir:1.19-erlang-28.5.0
docker push cimg/elixir:1.19.7-erlang-28.5.0
docker push cimg/elixir:1.19-erlang-28.5.0-node
docker push cimg/elixir:1.19.7-erlang-28.5.0-node
docker push cimg/elixir:1.19-erlang-28.5.0-browsers
docker push cimg/elixir:1.19.7-erlang-28.5.0-browsers
docker tag cimg/elixir:1.19.7-erlang-28.5.0 cimg/elixir:1.19.7
docker tag cimg/elixir:1.19-erlang-28.5.0 cimg/elixir:1.19
docker push cimg/elixir:1.19
docker push cimg/elixir:1.19.7
docker tag cimg/elixir:1.19.7-erlang-28.5.0-node cimg/elixir:1.19.7-node
docker tag cimg/elixir:1.19-erlang-28.5.0-node cimg/elixir:1.19-node
docker push cimg/elixir:1.19-node
docker push cimg/elixir:1.19.7-node
docker tag cimg/elixir:1.19.7-erlang-28.5.0-browsers cimg/elixir:1.19.7-browsers
docker tag cimg/elixir:1.19-erlang-28.5.0-browsers cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19.7-browsers
docker push cimg/elixir:1.18-erlang-27.3.4
docker push cimg/elixir:1.18.6-erlang-27.3.4
docker push cimg/elixir:1.18-erlang-27.3.4-node
docker push cimg/elixir:1.18.6-erlang-27.3.4-node
docker push cimg/elixir:1.18-erlang-27.3.4-browsers
docker push cimg/elixir:1.18.6-erlang-27.3.4-browsers
docker push cimg/elixir:1.18-erlang-28.5.0
docker push cimg/elixir:1.18.6-erlang-28.5.0
docker push cimg/elixir:1.18-erlang-28.5.0-node
docker push cimg/elixir:1.18.6-erlang-28.5.0-node
docker push cimg/elixir:1.18-erlang-28.5.0-browsers
docker push cimg/elixir:1.18.6-erlang-28.5.0-browsers
docker tag cimg/elixir:1.18.6-erlang-28.5.0 cimg/elixir:1.18.6
docker tag cimg/elixir:1.18-erlang-28.5.0 cimg/elixir:1.18
docker push cimg/elixir:1.18
docker push cimg/elixir:1.18.6
docker tag cimg/elixir:1.18.6-erlang-28.5.0-node cimg/elixir:1.18.6-node
docker tag cimg/elixir:1.18-erlang-28.5.0-node cimg/elixir:1.18-node
docker push cimg/elixir:1.18-node
docker push cimg/elixir:1.18.6-node
docker tag cimg/elixir:1.18.6-erlang-28.5.0-browsers cimg/elixir:1.18.6-browsers
docker tag cimg/elixir:1.18-erlang-28.5.0-browsers cimg/elixir:1.18-browsers
docker push cimg/elixir:1.18-browsers
docker push cimg/elixir:1.18.6-browsers
