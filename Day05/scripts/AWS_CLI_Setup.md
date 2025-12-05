# AWS CLI Setup & Authentication (Day 5)

## 1. What is `aws configure`?

The `aws configure` command is the starting point for using the AWS CLI.

It stores:
- Who you are (Access Key ID & Secret Access Key)
- Where you operate (Default Region)
- How results are formatted (Output format)

These settings are saved locally in the `~/.aws` folder:
- `~/.aws/credentials` → Keys
- `~/.aws/config` → Region & profile settings

Never commit these files into Git.

---

## 2. Prerequisites

Before running `aws configure`, you need:

1. An AWS account
2. An IAM user with appropriate permissions
3. An **Access Key ID** and **Secret Access Key** generated for that IAM user

These keys are your identity in AWS.
Treat them like passwords.

---

## 3. Running `aws configure` (Step by Step)

In your terminal:

```bash
aws configure
