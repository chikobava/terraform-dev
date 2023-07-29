<!-- BEGIN_TF_DOCS -->


## Example

```hcl
module "linux-vm" {
  source     = "./modules/webserver"
  project_id = "mycoolproject-123"
  name       = "webserver-1"
  image      = "debian-cloud/debian-11"
  network    = "https://www.googleapis.com/compute/v1/projects/..."
  subnetwork = "https://www.googleapis.com/compute/v1/projects/..."
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | VM base image | `string` | `"debian-cloud/debian-9"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | VM type in GCP | `string` | `"e2-medium"` | no |
| <a name="input_name"></a> [name](#input\_name) | VM Name | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Project network url | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of the project, where the VM will be created | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | VM region | `string` | `"europe-west3"` | no |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | Subnet url | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | VM zone | `string` | `"europe-west3-c"` | no |
<!-- END_TF_DOCS -->