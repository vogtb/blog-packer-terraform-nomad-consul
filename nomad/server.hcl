log_level = "DEBUG"
data_dir = "/tmp/nomad"
server {
    enabled = true
    bootstrap_expect = 1
    retry_join = ["165.227.211.183"]
}
advertise {
  http = "165.227.211.183"
  rpc  = "165.227.211.183"
  serf = "165.227.211.183"
}
addresses {
  http = "165.227.211.183"
  rpc = "165.227.211.183"
  serf = "165.227.211.183"
}