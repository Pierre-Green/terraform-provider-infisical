terraform {
  required_providers {
    infisical = {
      # version = <latest version>
      source = "infisical/infisical"
    }
  }
}

provider "infisical" {
  host          = "https://app.infisical.com" # Only required if using self hosted instance of Infisical, default is https://app.infisical.com
  service_token = "<>"
}

resource "infisical_secret" "mongo_secret" {
  name        = "MONGO_DB"
  value       = "<some-key>"
  env_slug    = "dev"
  folder_path = "/"
}

resource "infisical_secret" "smtp_secret" {
  name        = "SMTP"
  value       = "<some key>"
  env_slug    = "dev"
  folder_path = "/mail-service"
}

resource "infisical_secret" "github_action_secret" {
  name        = "GITHUB_ACTION"
  value       = "<some value>"
  env_slug    = "dev"
  folder_path = "/"
}
