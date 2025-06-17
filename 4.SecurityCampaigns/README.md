# Lab 4 - Creating a Security Campaign on GitHub

This lab explains how to create and manage a Security Campaign in your GitHub organization.

## Who Can Create a Security Campaign?
- Organization owners, security managers, and organization members with the admin role

## Steps to Create a Security Campaign

1. Go to your organization's **Settings** > **Security**.
2. Select **Campaigns**.
3. Click **Create Campaign** (for example, select "MITRE TOP 10 KEV").
4. Configure the campaign as needed and click **Publish**.

## What Happens When a Campaign is Started?
- Anyone with **write** access to a repository included in the campaign, and who has subscribed to watch either "All activity" or "security alerts" in that repository, is notified.
- The new campaign is shown in the sidebar of the **Security** tab for each repository included.
- If you have write access to more than one repository in the organization, you can view the campaign in the **Security** tab for the organization.

## Additional Information
- For more details, see the [GitHub Docs: Fixing alerts in security campaigns](https://docs.github.com/en/code-security/code-scanning/managing-code-scanning-alerts/fixing-alerts-in-security-campaign)
