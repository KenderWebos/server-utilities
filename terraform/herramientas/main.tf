resource "null_resource" "instalar_herramientas" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y docker.io git openjdk-17-jdk"
    ]

    connection {
      type        = "ssh"
      host        = var.host
      user        = var.ssh_user
      private_key = file(var.private_key_path)
    }
  }
}