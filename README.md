# skeleton-tf-module #

[![GitHub Build Status](https://github.com/cisagov/skeleton-tf-module/workflows/build/badge.svg)](https://github.com/cisagov/skeleton-tf-module/actions)

This is a generic skeleton project that can be used to quickly get a
new [cisagov](https://github.com/cisagov) [Terraform
module](https://www.terraform.io/docs/modules/index.html) GitHub
repository started.  This skeleton project contains [licensing
information](LICENSE), as well as [pre-commit
hooks](https://pre-commit.com) and
[GitHub Actions](https://github.com/features/actions) configurations
appropriate for the major languages that we use.

See [here](https://www.terraform.io/docs/modules/index.html) for more
details on Terraform modules and the standard module structure.

## Usage ##

```hcl
module "fargate_container" {
  source = "github.com/cisagov/fargate-container-def-tf-module"

  region          = "us-west-1"
  namespace       = "cisagov"
  stage           = "testing"
  name            = "example-test"
  container_name  = "test-container"
  container_image = "cisagov/example"
  container_port  = 8080

  environment = {
    ECHO_MESSAGE = "Fargate testing container."
  }
}
```

## Examples ##

* No examples.

## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 0.12.0 |
| aws | ~> 3.0 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| container_image | n/a | `string` | n/a | yes |
| container_name | n/a | `string` | n/a | yes |
| container_port | n/a | `number` | n/a | yes |
| entrypoint | n/a | `list(string)` | `null` | no |
| environment | n/a | `map(string)` | `{}` | no |
| log_retention | n/a | `number` | `7` | no |
| name | n/a | `string` | n/a | yes |
| namespace | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| secrets | n/a | `map(string)` | `{}` | no |
| stage | n/a | `string` | n/a | yes |

## Outputs ##

| Name | Description |
|------|-------------|
| json | n/a |
| json_map | n/a |

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, this is only the main directory.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
