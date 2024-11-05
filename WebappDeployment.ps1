$rg = 'Webappaz104'
New-AzResourceGroup -Name $rg -Location eastus -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $rg `
    -TemplateFile 'template.json' `
    -userdefined_location "centralus"