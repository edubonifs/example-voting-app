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
          image = "dockersamples/examplevotingapp_result@sha256:1e805ccebf14b5317a5e3bbea571aa5494ced8eca8a77ebd12af9f9b62d59eb2"
          name  = "result"

          port {
            container_port = 80
            name           = "result"
          }
          resources {
            requests = {
              cpu    = "250m"
              memory = "64Mi"
            }
            limits = {
              cpu    = "500m"
              memory = "128Mi"
            }
          }
        }
      }
    }
  }
}

