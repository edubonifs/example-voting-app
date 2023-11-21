resource "kubernetes_service" "vote" {
  metadata {
    name = "vote"
    labels = {
      app = "vote"
    }
  }

  spec {
    type = "LoadBalancer"

    port {
      name        = "vote-service"
      port        = 5000
      target_port = 80
    }

    selector = {
      app = "vote"
    }
  }
}

