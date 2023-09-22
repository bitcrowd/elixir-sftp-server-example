defmodule SFTPServerExample do
  @moduledoc """
  Simple SFTP server
  """

  @doc """
  Starting the SFTP server.
  """
  def start do
    port = 8989
    system_dir = Path.join(:code.priv_dir(:sftp_server_example), "sftp_daemon")

    sftp_dir = Path.join(System.tmp_dir!(), "sftp_dir")
    File.mkdir(sftp_dir)

    opts = [
      {:system_dir, system_dir |> to_charlist},
      {:user_passwords, [{'user', 'password'}]},
      {:subsystems, [:ssh_sftpd.subsystem_spec([{:root, sftp_dir |> to_charlist}])]}
    ]

    :ssh.daemon(port, opts)
  end
end
