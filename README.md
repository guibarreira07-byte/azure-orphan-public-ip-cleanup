# Azure Orphan Public IP Cleanup

This script identifies and removes orphaned Public IP addresses in Azure.

## Problem
Orphaned Public IPs generate unnecessary costs and increase exposure.

## Solution
Automation using Azure PowerShell to:
- Identify unused Public IPs
- Filter by naming pattern
- Remove safely

## Technologies
- Azure
- PowerShell
- Azure Automation

## Usage
Run the script in Azure Automation or locally with Az module installed.

## Important
Always validate resources before deletion in production environments.
