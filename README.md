# Elixir SFTP server example

Example of an SFTP server implementation in Elixir / Erlang as a reference to a corresponding post on the bitcrowd blog.

## Running the example

Start the server:

```bash
mix run --no-halt
```

Connect to the SFTP server:

```bash
sftp -P 8989 user@localhost # password is "password"
```
