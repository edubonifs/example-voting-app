provider "kubernetes" {
  # Assuming you have kubectl configured to connect to your EKS cluster
  config_path = ".kube/config"
}
