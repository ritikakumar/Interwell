variable "hub_rg_variables" {
    type = map(object({
        hub_rg_name      = string
        hub_rg_location  = string
    }
  ))
  default = {}
}
