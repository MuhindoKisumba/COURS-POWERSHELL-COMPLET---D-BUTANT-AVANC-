####################################################################################################
# COURS POWERSHELL COMPLET - DÉBUTANT À AVANCÉ
# Administration Système - Réseau - Active Directory - Automatisation
# Compatible PowerShell 5.x et PowerShell 7+
####################################################################################################

########################################
# 1. AFFICHAGE ET VARIABLES
########################################

# Affichage
Write-Host "Bonjour PowerShell"
Write-Output "Texte envoyé dans le pipeline"

# Variables
$Nom = "Abdiel"
$Age = 25

Write-Host "Nom : $Nom"
Write-Host "Age : $Age"

# Types de données
[string]$Ville = "Goma"
[int]$Annee = 2026
[double]$Salaire = 2500.50
[bool]$Actif = $true

########################################
# 2. ENTRÉE UTILISATEUR
########################################

$Utilisateur = Read-Host "Entrez votre nom"
Write-Host "Bienvenue $Utilisateur"

########################################
# 3. OPÉRATEURS
########################################

# Calculs
10 + 5
20 - 5
10 * 2
100 / 4
15 % 4

# Comparaisons
10 -eq 10
10 -ne 5
10 -gt 5
10 -lt 20
10 -ge 10
10 -le 15

########################################
# 4. CONDITIONS
########################################

$Age = 20

if ($Age -ge 18)
{
    Write-Host "Majeur"
}
else
{
    Write-Host "Mineur"
}

########################################
# 5. BOUCLE FOR
########################################

for ($i=1; $i -le 10; $i++)
{
    Write-Host "Compteur : $i"
}

########################################
# 6. BOUCLE WHILE
########################################

$i = 1

while ($i -le 5)
{
    Write-Host $i
    $i++
}

########################################
# 7. BOUCLE FOREACH
########################################

$Utilisateurs = @(
"Jean",
"Marie",
"Paul",
"David"
)

foreach ($User in $Utilisateurs)
{
    Write-Host $User
}

########################################
# 8. TABLEAUX
########################################

$Serveurs = @(
"SRV-AD",
"SRV-FILE",
"SRV-WEB"
)

$Serveurs

$Serveurs[0]
$Serveurs[1]

########################################
# 9. FONCTIONS
########################################

function Bonjour
{
    Write-Host "Bonjour à tous"
}

Bonjour

function Addition
{
    param(
        [int]$A,
        [int]$B
    )

    return $A + $B
}

Addition 10 20

########################################
# 10. GESTION DES DOSSIERS ET FICHIERS
########################################

# Créer un dossier
New-Item -Path C:\Data -ItemType Directory

# Créer un fichier
New-Item -Path C:\Data\Test.txt -ItemType File

# Écrire dans un fichier
Set-Content -Path C:\Data\Test.txt -Value "Bonjour"

# Lire un fichier
Get-Content C:\Data\Test.txt

# Copier
Copy-Item C:\Data\Test.txt C:\Backup\

# Déplacer
Move-Item C:\Data\Test.txt C:\Archive\

# Supprimer
Remove-Item C:\Data\Test.txt

########################################
# 11. EXPLORATION DU SYSTÈME
########################################

# Lister les fichiers
Get-ChildItem

# Lister les dossiers
Get-ChildItem C:\

# Rechercher un fichier
Get-ChildItem C:\ -Recurse -Filter *.log

########################################
# 12. SERVICES WINDOWS
########################################

# Tous les services
Get-Service

# Service spécifique
Get-Service Spooler

# Démarrer
Start-Service Spooler

# Arrêter
Stop-Service Spooler

# Redémarrer
Restart-Service Spooler

########################################
# 13. PROCESSUS WINDOWS
########################################

# Tous les processus
Get-Process

# Processus Chrome
Get-Process chrome

# Arrêter un processus
Stop-Process -Name chrome -Force

########################################
# 14. INFORMATIONS SYSTÈME
########################################

hostname
whoami
systeminfo

# Version PowerShell
$PSVersionTable

########################################
# 15. WMI / CIM
########################################

Get-CimInstance Win32_OperatingSystem
Get-CimInstance Win32_ComputerSystem
Get-CimInstance Win32_BIOS
Get-CimInstance Win32_Processor

########################################
# 16. UTILISATEURS LOCAUX
########################################

Get-LocalUser

Get-LocalGroup

Get-LocalGroupMember Administrators

########################################
# 17. CRÉATION D'UTILISATEUR LOCAL
########################################

$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force

New-LocalUser `
-Name "Formation" `
-Password $password `
-FullName "Utilisateur Formation"

Add-LocalGroupMember `
-Group Administrators `
-Member Formation

########################################
# 18. CONFIGURATION RÉSEAU
########################################

ipconfig

ipconfig /all

Get-NetIPAddress

Get-NetAdapter

Get-NetRoute

########################################
# 19. TESTS RÉSEAU
########################################

Test-Connection google.com

Test-NetConnection google.com -Port 443

Resolve-DnsName google.com

########################################
# 20. CONNEXIONS TCP
########################################

Get-NetTCPConnection

Get-NetUDPEndpoint

########################################
# 21. JOURNAUX WINDOWS
########################################

Get-EventLog System -Newest 20

Get-EventLog Security -Newest 20

Get-WinEvent -LogName System -MaxEvents 50

########################################
# 22. EXPORT CSV
########################################

Get-Service |
Export-Csv `
-NoTypeInformation `
-Path C:\Data\Services.csv

Import-Csv C:\Data\Services.csv

########################################
# 23. EXPORT HTML
########################################

Get-Process |
ConvertTo-Html |
Out-File C:\Data\Rapport.html

########################################
# 24. GESTION ACTIVE DIRECTORY
########################################

# Module AD requis

Get-ADUser -Filter *

Get-ADComputer -Filter *

Get-ADGroup -Filter *

Get-ADOrganizationalUnit -Filter *

########################################
# 25. CRÉATION D'UTILISATEUR AD
########################################

New-ADUser `
-Name "Jean Pierre" `
-GivenName "Jean" `
-Surname "Pierre" `
-SamAccountName "jpierre" `
-Enabled $true

########################################
# 26. RECHERCHE DANS ACTIVE DIRECTORY
########################################

Get-ADUser Abdiel

Get-ADUser -Filter * |
Select Name,SamAccountName

########################################
# 27. GESTION DES ERREURS
########################################

try
{
    Get-Content C:\Inexistant.txt
}
catch
{
    Write-Host "Erreur détectée"
}
finally
{
    Write-Host "Traitement terminé"
}

########################################
# 28. AUTOMATISATION DE SAUVEGARDE
########################################

$Source = "C:\Documents"
$Destination = "D:\Backup"

Copy-Item `
-Path $Source `
-Destination $Destination `
-Recurse `
-Force

########################################
# 29. INVENTAIRE MATÉRIEL
########################################

Get-CimInstance Win32_ComputerSystem |
Select Manufacturer,Model

Get-CimInstance Win32_BIOS |
Select SerialNumber

Get-CimInstance Win32_LogicalDisk |
Select DeviceID,Size,FreeSpace

########################################
# 30. COMMANDES ESSENTIELLES À MÉMORISER
########################################

Get-Help
Get-Command
Get-Member
Get-Service
Get-Process
Get-ChildItem
Get-Content
Set-Content
Copy-Item
Move-Item
Remove-Item
Get-NetIPAddress
Get-NetTCPConnection
Get-LocalUser
Get-EventLog
Get-WinEvent
Export-Csv
Import-Csv
ConvertTo-Html
Test-Connection
Test-NetConnection
Invoke-WebRequest
Invoke-RestMethod
Get-CimInstance
Get-ADUser
Get-ADComputer

####################################################################################################
# FIN DU COURS POWERSHELL
####################################################################################################