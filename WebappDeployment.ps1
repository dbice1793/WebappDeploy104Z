$rg = 'Webappaz104'
New-AzResourceGroup -Name $rg -Location eastus -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $rg `
    -TemplateFile 'template.json' `
    -mode Complete


    Start-Sleep -Seconds 40

    New-AzResourceGroupDeployment `
    -ResourceGroupName $rg `
    -TemplateFile 'template2.json'