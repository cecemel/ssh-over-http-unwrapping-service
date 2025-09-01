#!/bin/sh

#exec socat TCP-LISTEN:22,fork TCP:$TARGET_HOST:22
exec wstunnel server --log-lvl DEBUG wss://[::]:443
