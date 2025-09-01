#!/bin/sh

if [ -z "$INCOMING_WS_PORT" ]; then
    INCOMING_WS_PORT=443
    echo "Using default port: $INCOMING_WS_PORT"
else
    echo "Using port: $INCOMING_WS_PORT"
fi

if [ "$INCOMING_WS_TLS_ENABLED" = "false" ]; then
    PROTOCOL="ws"
    echo "TLS is disabled, using protocol: $PROTOCOL"
else
    PROTOCOL="wss"
    echo "TLS is enabled, using protocol: $PROTOCOL"
fi

exec wstunnel server --log-lvl DEBUG ${PROTOCOL}://[::]:${INCOMING_WS_PORT}
