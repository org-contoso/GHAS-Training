# 2.CodeQL-Autofix

## Table of Contents

- [Apply Autofix on PRs](#apply-autofix-on-prs)
- [Apply Autofix on Security Alerts](#apply-autofix-on-security-alerts)

This lab is related to CodeQL Autofix features.

---

## Activity 1 - Apply Autofix on PRs

1. **Go to the latest PR that you created in the previous lab**
   - Note the **Edit** button next to it which you can use to edit a manual fix directly on the vulnerable file. We will not use this, instead we will go with Copilot's suggested fix.
   - Click on the `Commit suggestion` button
   
   ![image](https://github.com/user-attachments/assets/164abaae-1ed7-4058-b085-83b75c4dc218)

2. **When all checks have passed and no new alerts in code were detected, continue to Merge PR**

![image](https://github.com/user-attachments/assets/328b27e9-29ee-438f-9143-3bf0798994fd)

- Confirm Merge Request and Let Copilot Apply the fix on the default (main) branch

## Activity 2 - Apply Autofix on Security Alerts

First we need to introduce the vulnerability again.

   - Go to Server > routes.py
   - Edit line 16 by highlighting the SQL statement and replace it with this text: `"SELECT * FROM books WHERE name LIKE '%" + name + "%'"`.
   - This time, select the radio button next to **Commit directly to the main branch**.
   - Click **Propose changes**.

![image](https://github.com/user-attachments/assets/c602055f-a86a-43e2-b5b8-925d5c438ed1)

Now, we will test applying Autofix from the Security Alerts.

1. **Navigate to the Security tab**
   - Go to your repository on GitHub.
   - Click on the **Security** tab.
   - Select **Code scanning alerts** from the left menu.
   
   ![image](https://github.com/user-attachments/assets/718d0356-f2ab-41e5-b6c1-7e30f8b59565)


2. **Review Code Scanning Alerts**
   - You will see a list of code scanning alerts detected by CodeQL.
   - Click on an alert to view more details.
   
   ![image](https://github.com/user-attachments/assets/05fd13a7-f732-4711-8c46-028ff4b18edd)

3. **Apply Autofix**
   - If an autofix is available, you will see a **"Apply autofix"** button.
   - Click on **Apply autofix** to automatically generate a pull request with the suggested fix.
   
   ![image](https://github.com/user-attachments/assets/63c56d73-f4fa-4a66-a9e3-492baf55271c)

4. **Review and Merge the Pull Request**
   - Review the changes in the pull request created by the autofix.
   - If satisfied, merge the pull request to apply the fix to your codebase.
   
   ![image](https://github.com/user-attachments/assets/efc5519e-bcff-4beb-bcbb-bc86c5cbf5b9)
