terraform {
  cloud {
    organization = "Capgemini-sne"

    workspaces {
      name = "Resource-hands-on"
    }
  }
}