job "client" {
  datacenters = ["dc1"]
  type        = "service"

  group "app" {
    count = 2

    task "client" {

      driver = "docker"

      config {
        image = "nazariazargul/client:test"
      }

      resources {
        memory = 400 # 400MB
      }

      service {
        name = "client"
      }
    }
  }
}
