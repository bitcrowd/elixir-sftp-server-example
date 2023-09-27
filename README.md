# Elixir SFTP server example

Example of an SFTP server implementation in Elixir / Erlang as a reference to the [A quick SFTP server in Elixir](https://bitcrowd.dev/a-quick-sftp-server-in-elixir) post on the [bitcrowd blog](https://bitcrowd.dev).

## Running the example

Start the server:

```bash
mix run --no-halt
```

Connect to the SFTP server:

```bash
sftp -P 8989 user@localhost # password is "password"
```
