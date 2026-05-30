provider "local" {
  # Para ejecutar comandos en la máquina local
}

resource "null_resource" "docker_nginx" {
  provisioner "local-exec" {
    command = <<EOT
# Instala Docker si no está
if ! command -v docker >/dev/null 2>&1; then
  echo "Instalando Docker..."
  sudo apt update
  sudo apt install -y docker.io
  sudo systemctl enable docker
  sudo systemctl start docker
fi

# Levanta contenedor nginx
docker ps -q -f name=nginx_terraform | grep -q . && echo "nginx ya está corriendo" || docker run -d --name nginx_terraform -p 80:80 nginx
EOT
  }
}