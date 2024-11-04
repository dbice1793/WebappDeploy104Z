$rg = 'KodeKloudLinux2-centralus'
#New-AzResourceGroup -Name $rg -Location eastus -Force

New-AzResourceGroupDeployment `
    -Name 'CentosVM4' `
    -ResourceGroupName $rg `
    -TemplateFile '01-linuxvm.json' `
    -vmname "Centos4kk" `
    -subnetID '/subscriptions/26bc90e3-c8d0-4345-8b20-638422194e14/resourceGroups/KodeKloudLinux2-centralus/providers/Microsoft.Network/virtualNetworks/kk2net/subnets/default' `
    -userdefined_location "centralus"