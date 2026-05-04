# Connect to Azure
Connect-AzAccount

# Get all Public IPs
$publicIps = Get-AzPublicIpAddress

foreach ($ip in $publicIps) {
    if ($ip.IpConfiguration -eq $null -and $ip.Name -like "*bots*") {
        
        Write-Output "Removing orphan Public IP: $($ip.Name) in RG: $($ip.ResourceGroupName)"
        
        Remove-AzPublicIpAddress `
            -Name $ip.Name `
            -ResourceGroupName $ip.ResourceGroupName `
            -Force
    }
}
