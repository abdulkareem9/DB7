param(
    [parameter(Mandatory = $true)] [string]$ResourceGroupName,
    [parameter(Mandatory = $true)] [string]$dataFactoryName,
    [parameter(Mandatory = $true)] [string]$location,
    [parameter(Mandatory = $false)] [string]$environmentsuffix,
    [parameter(Mandatory = $false)] [string]$clientID,
    [parameter(Mandatory = $false)] [string]$tenantID,
    [parameter(Mandatory = $false)] [string]$key
)

if ([string]::IsNullOrEmpty($(Get-AzureRmContext).Account)) {
    Add-AzureRmAccount
}

$ADF_Triggers = Get-AzureRmDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $dataFactoryName -ErrorVariable notPresent -ErrorAction SilentlyContinue
Write-Host $ADF_Triggers.Name
if ($notPresent) {
    Write-Host "Trigger does not exist. Nothing to disable!"
}
else {
    $ADF_Triggers | ForEach-Object { 
        Write-Host "Disabling Pipeline Trigger $($_.name)"
        Start-AzureRmDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $dataFactoryName -Name $_.name -Force 
    }
}
