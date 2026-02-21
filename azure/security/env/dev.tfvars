nsg_name = "dev-nsg"

security_rules = [
  {
    name             = "allow-ssh"
    priority         = 100
    direction        = "Inbound"
    access           = "Allow"
    protocol         = "Tcp"
    source_port      = "*"
    destination_port = "22"
    source           = "*"
    destination      = "*"
  }
]