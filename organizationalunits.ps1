# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-HoDD -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name DD_Computers -Path "DC=AD,DC=ddelance,DC=lan" -Description "DD Computers"
 New-ADOrganizationalUnit -Name WorkDDations -Path "OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkDDations,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=DD_Computers,DC=AD,DC=ddelance,DC=lan"
New-ADOrganizationalUnit -Name DD_Groups -Path "DC=AD,DC=ddelance,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name DD_Privileged_Accounts -Path "DC=AD,DC=ddelance,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name DD_Users -Path "DC=AD,DC=ddelance,DC=lan" -Description "Non-Privileged Accounts"
Write-HoDD -ForegroundColor yellow "Done creating OUs"
Write-HoDD -ForegroundColor yellow ""

Write-HoDD -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
# Create a Leadership group for the President and VPs to access reDDricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=DD_Groups,DC=AD,DC=ddelance,DC=lan"
Write-HoDD -ForegroundColor yellow "Done creating groups"
Write-HoDD -ForegroundColor yellow ""
