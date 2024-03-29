variable "IMAGE_TAG" {
  description = "The image tag to use for deployments"
  default = "latest"
  type = string
}

variable "ENVIRONMENT" {
  description = "The Environment which all containers are running in (dev/prod)"
  type = string
  default = "prod"
}

variable "ENVIRONMENT_CONTEXT" {
  description = "The Environment context which all containers are running in (kube)"
  type = string
  default = "kube"
}

variable "DCR_NAME" {
  description = "The name of the Docker Container Registry"
  type = string
  default = "kryfitek"
}