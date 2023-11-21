resource "kubernetes_service" "result" {
  metadata {
    name = "result"
    labels = {
      app = "result"
    }
  }

  spec {
    type = "LoadBalancer"

    port {
      name        = "result-service"
      port        = 5001
      target_port = 80
    }

    selector = {
      app = "result"
    }
  }
}

