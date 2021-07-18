#New-AzResourceGroup -Name RG01 -Location "centralus"
New-AzResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName RG01 `
  -TemplateFile C:\DevOps\azure\azuregithub\trunk\ARMTemplates\azure_deploy.json `
  -TemplateParameterFile C:\DevOps\azure\azuregithub\trunk\ARMTemplates\parameter1.json