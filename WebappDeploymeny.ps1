$rg = 'Webappaz104'
New-AzResourceGroup -Name $rg -Location eastus -Force

New-AzResourceGroupDeployment `
    -Name 'CentosVM4' `
    -ResourceGroupName $rg `
    -TemplateFile '01-linuxvm.json' `
    -vmname "Centos4kk" `
    -userdefined_location "centralus"