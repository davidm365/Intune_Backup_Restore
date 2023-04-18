#Backup and Restore Intune
#David Theilman
#4/18/2023

#Pre-Reqs
Install-Module -Name IntuneBackupAndRestore
Update-Module -Name IntuneBackupAndRestore
Install-Module -Name Microsoft.Graph.Intune
Connect-MSGraph
Import-Module IntuneBackupAndRestore


#Full Backup
#Create a Folder on your Computer for the Backup
Start-IntuneBackup -Path C:\temp\IntuneBackup

#Full Restore
Start-IntuneRestoreConfig -Path C:\temp\IntuneBackup
Start-IntuneRestoreAssignments -Path C:\temp\IntuneBackup

#Retore Intune Assignments
Start-IntuneRestoreAssignments -Path C:\temp\IntuneBackup

#Restore Only Compliance Policies
Invoke-IntuneRestoreDeviceCompliancePolicy -Path C:\temp\IntuneBackup
Invoke-IntuneRestoreDeviceCompliancePolicyAssignment -Path C:\temp\IntuneBackup

#Restore Only Devcie Configurations
Invoke-IntuneRestoreDeviceConfiguration -Path C:\temp\IntuneBackup
Invoke-IntuneRestoreDeviceConfigurationAssignment -Path C:\temp\IntuneBackup

#Backup Only Intune Endpoint Security Configurations
Invoke-IntuneBackupDeviceManagementIntent -Path C:\temp\IntuneBackup

#Restore Only Intune Endpoint Security Configurations
Invoke-IntuneRestoreDeviceManagementIntent -Path C:\temp\IntuneBackup