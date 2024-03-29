data "kubectl_path_documents" "backend_deployment_manifest" {
  depends_on = [
    data.kubectl_file_documents.backend_namespace_manifest
  ]

  vars = {
    ENVIRONMENT = "${var.ENVIRONMENT}"
    IMAGE_TAG = "${var.IMAGE_TAG}"
    DCR_NAME = "${var.DCR_NAME}"
    ENVIRONMENT_CONTEXT = "${var.ENVIRONMENT_CONTEXT}"
  }
  pattern = "../../k8s/containers/backend/deployment.yaml"
}

resource "kubectl_manifest" "backend_deployment" {
  depends_on = [
    data.kubectl_file_documents.backend_namespace_manifest
  ]
  count = length(data.kubectl_path_documents.backend_deployment_manifest.documents)
  yaml_body = element(data.kubectl_path_documents.backend_deployment_manifest.documents, count.index)
}