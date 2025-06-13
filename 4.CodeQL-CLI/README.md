# 3.CodeQL-CLI

This folder contains hands-on exercises and documentation for using the CodeQL CLI.

## CodeQL CLI Hands-on Exercise Guidelines

### Prerequisites
- Git installed and configured
- CodeQL CLI installed (see Download & Install Guide below)
- Access to this repository
- A sample codebase to analyze (can be a simple JavaScript, Python, or Java project)

### Download & Install Guide

> **Reference:** These instructions are taken from the [official CodeQL CLI setup guide](https://docs.github.com/en/code-security/codeql-cli/getting-started-with-the-codeql-cli/setting-up-the-codeql-cli)

1. **Download the CodeQL CLI tar archive**

   - Download the CodeQL bundle from [https://github.com/github/codeql-action/releases](https://github.com/github/codeql-action/releases).
   - The bundle contains:
     - CodeQL CLI product
     - A compatible version of the queries and libraries from [https://github.com/github/codeql](https://github.com/github/codeql)
     - Precompiled versions of all the queries included in the bundle

   > You should always use the CodeQL bundle. This ensures compatibility and gives much better performance than a separate download of the CodeQL CLI and checkout of the CodeQL queries.

   ![CodeQL CLI Download Assets](../assets/codeql-cli-download-assets.png)

2. **Add CodeQL to your PATH**

   - Extract the CodeQL bundle to a directory, for example: `C:\Users\kganguly\code\GHAS\codeql`
   - Add `C:\Users\kganguly\code\GHAS\codeql` to your system `PATH` environment variable.
   - This allows you to run CodeQL processes by simply using the `codeql` command in your terminal, regardless of your current directory.

3. **Set Up the CodeQL Database**
   ```pwsh
   codeql database create my-database --language=<LANGUAGE> --source-root=./<source-folder>
   ```
   Replace `<LANGUAGE>` with the language of your codebase (e.g., `javascript`, `python`, `java`).
   Replace `<source-folder>` with the path to your source code.
4. **Run CodeQL Analysis**
   ```pwsh
   codeql database analyze my-database <path-to-qlpack> --format=sarifv2.1.0 --output=results.sarif
   ```
   Replace `<path-to-qlpack>` with the path to the CodeQL queries you want to run (e.g., `codeql-repo/qlpacks/javascript-code-scanning.qls`).
5. **Review Results**
   Open the `results.sarif` file in a compatible viewer or upload it to GitHub for visualization.
6. **Clean Up (Optional)**
   ```pwsh
   Remove-Item -Recurse -Force my-database
   Remove-Item results.sarif
   ```

### Tips for Trainers
- Ensure all participants have the prerequisites installed before the session.
- Walk through each step and explain the purpose of each command.
- Encourage participants to experiment with different queries and codebases.

### References
- [CodeQL CLI Documentation](https://docs.github.com/en/code-security/code-scanning/using-codeql-cli/about-the-codeql-cli)
- [CodeQL Query Help](https://codeql.github.com/docs/)
