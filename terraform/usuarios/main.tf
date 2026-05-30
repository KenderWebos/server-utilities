resource "null_resource" "crear_usuario" {
  provisioner "remote-exec" {
    inline = [
      "sudo adduser --gecos 'Dev User,,,' ${var.user_name} --disabled-password || true",
      "echo '${var.user_name}:${var.user_password}' | sudo chpasswd",
      "sudo usermod -aG sudo ${var.user_name}"
    ]

    connection {
      type        = "ssh"
      host        = var.host
      user        = var.ssh_user
      private_key = file(var.private_key_path)
    }
  }
}