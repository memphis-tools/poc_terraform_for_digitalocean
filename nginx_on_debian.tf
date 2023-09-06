resource "digitalocean_droplet" "dummy-nginx" {
    image = "debian-12-x64"
    name = "dummy-nginx"
    region = "fra1"
    size = "s-1vcpu-1gb"
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id
    ]

    connection {
      host = self.ipv4_address
      user = "root"
      type = "ssh"
      private_key = file(var.pvt_key)
      timeout = "2m"
    }

    provisioner "remote-exec" {
      inline = [
        "export PATH=$PATH:/usr/bin",
        "sudo apt update -y",
        "sudo apt install -y nginx"
      ]
    }
}
