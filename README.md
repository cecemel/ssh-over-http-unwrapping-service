# ssh-over-http-unwrapping-service

Simple wrapper around [wstunnel](https://github.com/erebe/wstunnel) to tunnel ssh over http.

This service unwraps http (ws) connection from the ssh connection and forwards it a target host.
It must be used together with [ssh-over-http-wrapping-service](https://github.com/cecemel/ssh-over-http-wrapping-service).

## Rationale
See [ssh-over-http-wrapping-service](https://github.com/cecemel/ssh-over-http-wrapping-service)

## Usage
See [ssh-over-http-wrapping-service](https://github.com/cecemel/ssh-over-http-wrapping-service)

## Environment variables
- `INCOMING_WS_PORT`:
  - Specifies the network port on which the `wstunnel` server will listen for incoming WebSocket connections.
  - Default: `443`
  - Note: if you want to use another port, the container should expose this port too.
- `INCOMING_WS_TLS_ENABLED`
  - Specifies whether the server should use TLS encryption for secure connections (`wss`) or not (`ws`).
  - Default: `true`
