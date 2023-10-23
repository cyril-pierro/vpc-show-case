package test

import (
	"testing"
	"os"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
	"fmt"
)

func TestTerraformVPCProvisioning(t *testing.T) {
	t.Parallel()
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../setup",
	})

	value:= fmt.Sprintf("deployed-on-%s", os.Getenv("TF_VAR_environment"))

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "instance_tenancy")
	assert.Equal(t, "default", output)

	output = terraform.Output(t, terraformOptions, "tags_all")
	assert.Equal(t, value, output)

}