# vim:set ft=dockerfile:

FROM cimg/base:2019.10

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Install Erlang via Erlang Solutions' .deb
ENV ERLANG_VERSION="21.3.8.8"
RUN apt-get update && apt-get install -y --no-install-recommends \
		libodbc1 \
		libsctp1 \
		libwxgtk3.0 && \
	erlangDEB="https://packages.erlang-solutions.com/erlang/debian/pool/esl-erlang_${ERLANG_VERSION}-1~ubuntu~bionic_amd64.deb" && \
	curl -sSL -o erlang.deb $erlangDEB && \
	dpkg -i erlang.deb && \
	rm -rf erlang.deb /var/lib/apt/lists/*

# Generate & set locale
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# Install Erlang via Erlang Solutions' .deb
ENV ELIXIR_VERSION=1.8.1
RUN elixirDEB="https://packages.erlang-solutions.com/erlang/debian/pool/elixir_${ELIXIR_VERSION}-2~ubuntu~bionic_amd64.deb" && \
	curl -sSL -o elixir.deb $elixirDEB && \
	dpkg -i elixir.deb && \
	rm -rf elixir.deb && \
	elixir --version

WORKDIR /root/project
