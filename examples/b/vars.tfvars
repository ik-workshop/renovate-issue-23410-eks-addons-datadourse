variable "vpc_cni_version" {
  type        = string
  description = "EKS vpc-cni add-on version"
  # renovate: eksAddonsFilter={"kubernetesVersion":"1.30","addonName":"vpc-cni"}
  default     = "v1.18.1-eksbuild.3"
}
