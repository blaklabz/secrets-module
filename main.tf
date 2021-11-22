provider "helm" {
  kubernetes {
    config_path = "${var.config_path}"
  }
}

### ELK logging implementation ####

## build namespace and secrets
module "oss-elk-secrets" {
  source                 = "./oss-elk-secrets"
  config_path            = "${var.config_path}"
}
