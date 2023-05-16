FROM ghcr.io/foundry-rs/foundry:latest

ARG PORT
ENV PORT=${PORT:-"80"}
ARG MNEMONIC
ENV MNEMONIC=${MNEMONIC:-"test test test test test test test test test test test junk"}
ARG FORK_URL
ENV FORK_URL=${FORK_URL:-"https://rpc.flashbots.net"}
EXPOSE $PORT

ENTRYPOINT anvil --host 0.0.0.0 -m "$MNEMONIC" -p $PORT --fork-url $FORK_URL --no-cors
