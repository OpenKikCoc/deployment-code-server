FROM linuxserver/code-server

ENV PASSWORD=password

CMD code-server --bind-addr 0.0.0.0:9999 --auth $PASSWORD