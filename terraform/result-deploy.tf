resource "kubernetes_deployment" "result" {
  metadata {
    name = "result"
    labels = {
      app = "result"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "result"
      }
    }

    template {
      metadata {
        labels = {
          app = "result"
        }
      }

      spec {
        container {
          image = "dockersamples/examplevotingapp_result"
          name  = "result"

          port {
            container_port = 80
            name           = "result"
          }
        }
      }
    }
  }
}

