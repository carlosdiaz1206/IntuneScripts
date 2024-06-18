<#
COPYRIGHT
Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license.
See LICENSE in the project root for license information.


Version History
1.0    Carlos Diaz 05/20/2023     Initial version

This is a sample script and is shared with no warranty. 
The purpose of this script is to create a local administrator account to be used as an initial account for LAPS.
#>

# Username and Password
$username = "sample"
$password = ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force

# Creating the user
New-LocalUser -Name $username -Password $password -FullName $username -Description "Local admin account"

# Adding the user to the administrators group
Add-LocalGroupMember -Group "Administrators" -Member $username
