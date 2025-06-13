# GHAS-Training: CodeQL CLI Hands-on Exercise Guidelines

## Overview
This document provides step-by-step guidelines for conducting a hands-on exercise using the CodeQL CLI. These instructions are intended for trainers and participants to ensure a smooth and effective learning experience.

## Prerequisites
- Git installed and configured
- CodeQL CLI installed ([Download & Install Guide](https://docs.github.com/en/code-security/code-scanning/using-codeql-cli/about-the-codeql-cli))
- Access to this repository
- A sample codebase to analyze (can be a simple JavaScript, Python, or Java project)

## Exercise Steps

### 1. Clone the Repository
```pwsh
git clone https://github.com/org-contoso/GHAS-Training.git
cd GHAS-Training
```

### 2. Set Up the CodeQL Database
```pwsh
codeql database create my-database --language=<LANGUAGE> --source-root=./<source-folder>
```
Replace `<LANGUAGE>` with the language of your codebase (e.g., `javascript`, `python`, `java`).
Replace `<source-folder>` with the path to your source code.

### 3. Run CodeQL Analysis
```pwsh
codeql database analyze my-database <path-to-qlpack> --format=sarifv2.1.0 --output=results.sarif
```
Replace `<path-to-qlpack>` with the path to the CodeQL queries you want to run (e.g., `codeql-repo/qlpacks/javascript-code-scanning.qls`).

### 4. Review Results
Open the `results.sarif` file in a compatible viewer or upload it to GitHub for visualization.

### 5. Clean Up (Optional)
```pwsh
Remove-Item -Recurse -Force my-database
Remove-Item results.sarif
```

## Tips for Trainers
- Ensure all participants have the prerequisites installed before the session.
- Walk through each step and explain the purpose of each command.
- Encourage participants to experiment with different queries and codebases.

## References
- [CodeQL CLI Documentation](https://docs.github.com/en/code-security/code-scanning/using-codeql-cli/about-the-codeql-cli)
- [CodeQL Query Help](https://codeql.github.com/docs/)

# GHAS-Training

This repository contains hands-on exercises and resources for GitHub Advanced Security (GHAS) and CodeQL.

## Repository Structure

- **1.CodeQL-Intro**: Introductory materials and exercises for learning CodeQL basics. Start here to get familiar with CodeQL concepts and the official GitHub Skills course.
- **2.CodeQL-Autofix**: Exercises and resources related to CodeQL Autofix features, including how to apply autofixes to vulnerabilities using GitHub's security features.
- **3.CodeQL-CLI**: Step-by-step hands-on exercises for using the CodeQL CLI, including setup, analysis, and reviewing results.

Each folder contains a README with detailed instructions for the respective topic.
