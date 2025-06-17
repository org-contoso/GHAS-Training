# Lab 1 - Create a Security Configuration

This lab guides you through the process of creating a Security Configuration in your GitHub organization. This step should be completed before starting any of the other labs.

## Who Can Do This?
- **Admin**, **Org Owner**, or **Security Manager**

Only users with one of these roles can create a new Security Configuration for the organization.

## Preparation
Before setting up Security Configurations, have a volunteer developer fork a repository:

- Fork this repository: [octodemo/codeql-monorepo](https://github.com/octodemo/codeql-monorepo)

## Steps to Create a Security Configuration

1. Go to your organization's **Settings** > **Advanced Security** > **Configurations**.
2. Click **Create a New configuration** and enable it for all repositories.

This will ensure that all repositories in your organization are covered by the new security configuration before you begin the labs.

---

## After Setting Up Security Configuration

Once the security configuration has been set up, check how the code security configurations are now applied by default to new repositories.

Have a developer volunteer fork each of the following repositories:

- [skills/secure-code-game](https://github.com/skills/secure-code-game)
- [org-contoso/old-vulnerable-node](https://github.com/org-contoso/old-vulnerable-node)
- [org-contoso/webapp-ts](https://github.com/org-contoso/webapp-ts)
- [org-contoso/scaling-parakeet-main](https://github.com/org-contoso/scaling-parakeet-main)

Observe how the security configuration is automatically applied to these new forks.
