# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2024.06-20.04

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

# Install Erlang via Erlang Solutions' .deb
ENV ERLANG_VERSION="25.3.2"
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		libncurses5 \
		libodbc1 \
		libsctp1 \
		libwxgtk3.0 && \
	# Erlang 24 is the last version to support only focal. Moving forward, the base image can move to 22.04
	erlangDEB="https://binaries2.erlang-solutions.com/ubuntu/pool/contrib/e/esl-erlang/esl-erlang_${ERLANG_VERSION}-1~ubuntu~focal_amd64.deb" && \
	curl -sSL -o erlang.deb $erlangDEB && \
	sudo dpkg -i erlang.deb && \
	sudo rm -rf erlang.deb /var/lib/apt/lists/*

# Install Elixir via Erlang Solutions' .deb
ENV ELIXIR_VERSION=1.17.3
RUN ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz" && \
	curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL && \
	sudo mkdir -p /usr/local/src/elixir && \
	sudo tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz && \
	rm elixir-src.tar.gz && \
	cd /usr/local/src/elixir && \
	sudo make install clean && \
	elixir --version
