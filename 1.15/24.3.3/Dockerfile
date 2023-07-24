# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2023.07

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

# Install Erlang via Erlang Solutions' .deb
ENV ERLANG_VERSION="24.3.3"
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		libncurses5 \
		libodbc1 \
		libsctp1 \
		libwxgtk3.0 && \
	[[ $(uname -m) == "x86_64" ]] && ARCH="amd64" || ARCH="arm64" && \
	erlangDEB="https://packages.erlang-solutions.com/erlang/debian/pool/esl-erlang_${ERLANG_VERSION}-1~ubuntu~focal_${ARCH}.deb" && \
	curl -sSL -o erlang.deb $erlangDEB && \
	sudo dpkg -i erlang.deb && \
	sudo rm -rf erlang.deb /var/lib/apt/lists/*

# Install Elixir via Erlang Solutions' .deb
ENV ELIXIR_VERSION=1.15.4
RUN ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz" && \
	curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL && \
	sudo mkdir -p /usr/local/src/elixir && \
	sudo tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz && \
	rm elixir-src.tar.gz && \
	cd /usr/local/src/elixir && \
	sudo make install clean && \
	elixir --version
