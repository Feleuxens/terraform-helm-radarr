resource "helm_release" "radarr" {
  name = "radarr"

  repository       = "https://helm.feleuxens.de"
  chart            = "radarr"
  version          = "0.1.0"
  create_namespace = true
  namespace        = "radarr"

  values = [
    templatefile("${path.module}/helm-values/radarr.yaml", {
      domain : var.domain,
      cpu_request : var.cpu_request,
      memory_request : var.memory_request,
      memory_limit : var.memory_limit,
      volume_size : var.volume_size,
      timezone : var.timezone,
      puid : var.puid,
      guid : var.guid
    })
  ]
}