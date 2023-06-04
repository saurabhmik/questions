terraform{
  required_version = "1.0.11"
  
  backend "remote" {
  hostname = "test.server.local"
  organization = "abc"
  
  workspaces {
  name = abc-dev-app
  }
} 