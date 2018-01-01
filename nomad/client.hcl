log_level = "DEBUG"
data_dir   = "/tmp/nomad"
client {
  enabled = true
  servers = ["165.227.211.183:4647"]
  options = {
    "driver.raw_exec.enable" = "1"
  }
}
advertise {
  http = "165.227.213.42"
  rpc  = "165.227.213.42"
  serf = "165.227.213.42"
}
addresses {
  http = "165.227.213.42"
}