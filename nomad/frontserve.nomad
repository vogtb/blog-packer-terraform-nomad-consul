job "frontserve" {
  datacenters = ["dc1"]
  type = "service"

  update {
    max_parallel     = 1
    health_check     = "checks"
    min_healthy_time = "20s"
    healthy_deadline = "10m"
    auto_revert      = true
    canary           = 1
    stagger          = "30s"
  }

  group "frontserve" {
    count = 2
    restart {
      attempts = 1
      delay    = "10s"
      interval = "1m"
      mode     = "fail"
    }
    ephemeral_disk {
      size = 300
    }
    task "start" {
      resources {
        cpu    = 500
        memory = 100
        network {
          mbits = 100
          port "server" {}
        }
      }
      driver = "raw_exec"

      config {
        command = "frontserve.linux.amd64"
      }

      artifact = {
        source = "https://binaries.nyc3.digitaloceanspaces.com/frontserve.linux.amd64"
      }
    }
  }
}