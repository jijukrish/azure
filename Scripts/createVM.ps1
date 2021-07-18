$resourceGroupName = "RG01"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"


New-AzResourceGroup -Name $resourceGroupName -Location "$location"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri https://github.com/jijukrish/azure/blob/main/ARMTemplates/azure_deploy.json `
    -TemplateParameterFile C:\DevOps\azure\azuregithub\trunk\ARMTemplates\parameter1.json `
    

 (Get-AzVm -ResourceGroupName $resourceGroupName).name