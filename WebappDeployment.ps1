$rg = 'Webappaz104'
New-AzResourceGroup -Name $rg -Location westus -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $rg `
    -TemplateFile 'template.json' `
    -userdefined_location "westus"