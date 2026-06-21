#  COURS POWERSHELL COMPLET - DÉBUTANT À AVANCÉ

##  Présentation

Ce projet constitue un guide pratique et pédagogique destiné aux administrateurs systèmes, techniciens réseaux, ingénieurs DevOps, étudiants en informatique et professionnels IT souhaitant maîtriser PowerShell.

Le script couvre les fondamentaux du langage PowerShell ainsi que les tâches d'administration les plus courantes sous Windows.

Compatible avec :

- Windows PowerShell 5.1
- PowerShell 7+
- Windows 10
- Windows 11
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022
- Windows Server 2025

---

#  Objectifs pédagogiques

À la fin de ce cours, vous serez capable de :

- Comprendre la syntaxe PowerShell
- Manipuler les variables et les types de données
- Utiliser les structures conditionnelles
- Créer des boucles et automatiser des tâches
- Développer des fonctions personnalisées
- Gérer les fichiers et dossiers
- Administrer les services Windows
- Superviser les processus système
- Interroger les composants matériels
- Administrer les utilisateurs locaux
- Configurer et diagnostiquer le réseau
- Collecter des journaux Windows
- Exporter des rapports CSV et HTML
- Administrer Active Directory
- Automatiser des sauvegardes
- Réaliser des inventaires matériels

---

#  Contenu du cours

## 1. Affichage et Variables

Introduction aux commandes :

- Write-Host
- Write-Output
- Variables PowerShell
- Types de données

Compétences acquises :

- Manipuler les données
- Comprendre les objets PowerShell

---

## 2. Entrée Utilisateur

Utilisation de :

- Read-Host

Compétences acquises :

- Interaction avec l'utilisateur
- Création de scripts interactifs

---

## 3. Opérateurs

Opérateurs :

- Arithmétiques
- Comparaison
- Logiques

Compétences acquises :

- Réaliser des calculs
- Tester des conditions

---

## 4. Conditions

Structures :

- If
- Else
- ElseIf

Compétences acquises :

- Prendre des décisions dans les scripts

---

## 5. Boucles

Structures :

- For
- While
- Foreach

Compétences acquises :

- Répéter des opérations automatiquement

---

## 6. Tableaux

Manipulation de :

- Arrays
- Collections

Compétences acquises :

- Stocker plusieurs valeurs
- Parcourir des listes

---

## 7. Fonctions

Création de :

- Fonctions simples
- Fonctions paramétrées

Compétences acquises :

- Réutilisation du code
- Modularisation

---

## 8. Gestion des Fichiers

Commandes :

- New-Item
- Get-Content
- Set-Content
- Copy-Item
- Move-Item
- Remove-Item

Compétences acquises :

- Administration du système de fichiers

---

## 9. Exploration du Système

Commandes :

- Get-ChildItem
- Recherche de fichiers
- Navigation dans les répertoires

Compétences acquises :

- Gestion avancée des ressources système

---

## 10. Administration des Services

Commandes :

- Get-Service
- Start-Service
- Stop-Service
- Restart-Service

Compétences acquises :

- Gestion des services Windows

---

## 11. Gestion des Processus

Commandes :

- Get-Process
- Stop-Process

Compétences acquises :

- Surveillance des applications
- Dépannage système

---

## 12. Informations Système

Commandes :

- hostname
- whoami
- systeminfo

Compétences acquises :

- Audit rapide d'une machine Windows

---

## 13. WMI et CIM

Classes utilisées :

- Win32_OperatingSystem
- Win32_ComputerSystem
- Win32_BIOS
- Win32_Processor

Compétences acquises :

- Inventaire matériel
- Diagnostic système

---

## 14. Gestion des Utilisateurs Locaux

Commandes :

- Get-LocalUser
- Get-LocalGroup
- Add-LocalGroupMember

Compétences acquises :

- Gestion des comptes Windows

---

## 15. Réseau

Commandes :

- ipconfig
- Get-NetIPAddress
- Get-NetAdapter
- Get-NetRoute

Compétences acquises :

- Administration réseau Windows

---

## 16. Tests Réseau

Commandes :

- Test-Connection
- Test-NetConnection
- Resolve-DnsName

Compétences acquises :

- Diagnostic réseau
- Résolution DNS

---

## 17. Connexions TCP et UDP

Commandes :

- Get-NetTCPConnection
- Get-NetUDPEndpoint

Compétences acquises :

- Analyse des connexions réseau

---

## 18. Journaux Windows

Commandes :

- Get-EventLog
- Get-WinEvent

Compétences acquises :

- Audit de sécurité
- Investigation système

---

## 19. Exportation de Rapports

Formats :

- CSV
- HTML

Compétences acquises :

- Création de rapports automatisés
- Reporting système

---

## 20. Active Directory

Commandes :

- Get-ADUser
- Get-ADComputer
- Get-ADGroup
- Get-ADOrganizationalUnit
- New-ADUser

Compétences acquises :

- Administration d'un domaine Windows

Prérequis :

```powershell
Install-WindowsFeature RSAT-AD-PowerShell
```

---

## 21. Gestion des Erreurs

Structures :

```powershell
try
{
}
catch
{
}
finally
{
}
```

Compétences acquises :

- Scripts robustes
- Gestion des exceptions

---

## 22. Sauvegarde Automatisée

Fonctionnalités :

- Copie récursive
- Sauvegarde de dossiers
- Automatisation

Compétences acquises :

- Protection des données

---

## 23. Inventaire Matériel

Collecte de :

- Fabricant
- Modèle
- Numéro de série
- Disques

Compétences acquises :

- Inventaire IT
- Gestion de parc informatique

---

#  Cas d'utilisation professionnels

Ce cours permet de réaliser :

- Administration Windows
- Support informatique
- Gestion Active Directory
- Gestion réseau
- Automatisation des tâches
- Supervision système
- Audit informatique
- Inventaire matériel
- Reporting automatique
- Maintenance préventive
- Cybersécurité défensive
- SOC Niveau 1
- Administration serveurs Windows

---

# 🎓 Niveau recommandé

| Niveau | Compatible |
|----------|----------|
| Débutant | ✅ |
| Intermédiaire | ✅ |
| Avancé | ✅ |
| Administrateur Système | ✅ |
| Technicien Réseau | ✅ |
| Analyste SOC | ✅ |
| Étudiant Informatique | ✅ |

---

#  Organisation du projet

```text
PowerShell-Cours/
│
├── Cours-PowerShell.ps1
├── README.md
│
├── Rapports/
│   ├── Services.csv
│   └── Rapport.html
│
├── Sauvegardes/
│
└── Exercices/
```

---

#  Exécution

Ouvrir PowerShell en mode Administrateur :

```powershell
powershell.exe
```

Autoriser l'exécution des scripts :

```powershell
Set-ExecutionPolicy RemoteSigned
```

Exécuter le script :

```powershell
.\Cours-PowerShell.ps1
```

---

#  Ressources complémentaires

Thèmes à approfondir :

- PowerShell Remoting
- Desired State Configuration (DSC)
- PowerShell pour Azure
- PowerShell pour Microsoft 365
- Automatisation DevOps
- PowerShell et Docker
- PowerShell et Kubernetes
- PowerShell et la cybersécurité

---

#  Résultat attendu

Après la réalisation complète de ce cours, l'apprenant sera capable d'utiliser PowerShell comme outil principal d'administration Windows, d'automatisation, d'audit, de supervision et de gestion des infrastructures informatiques professionnelles.

---
Auteur : MUHINDO KISUMBA 
Version : 1.0
Licence : Usage pédagogique et professionnel
