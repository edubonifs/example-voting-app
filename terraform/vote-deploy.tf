resource "kubernetes_deployment" "vote" {
  metadata {
    name = "vote"
    labels = {
      app = "vote"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "vote"
      }
    }

    template {
      metadata {
        labels = {
          app = "vote"
        }
        annotations = {
          "prometheus.io/scrape" = "true"
        }
      }

      spec {
        container {
          image = "dockersamples/examplevotingapp_vote"
          name  = "vote"

          port {
            container_port = 80
            name           = "vote"
          }
        }
      }
    }
  }
}

