unit-test:
  FROM +test-base

  RUN mix test --only unit

integration-test:
  FROM +test-base

  RUN mix test --only integration


setup-base:
  FROM bitwalker/alpine-elixir

  RUN apk add --no-progress --update git build-base
  ENV ELIXIR_ASSERT_TIMEOUT=10000

  WORKDIR /src

test-base:
  FROM +setup-base

  ARG MIX_ENV="test"

  COPY .formatter.exs .
  COPY --dir ./lib ./test /src
  COPY mix.exs mix.lock /src

  RUN mix local.rebar --force
  RUN mix local.hex --force
  RUN mix deps.get
  RUN mix deps.compile
