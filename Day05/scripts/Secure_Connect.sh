
---

## 2) `scripts/Secure_Connect.sh`

Now create `scripts/Secure_Connect.sh` with this content:

```bash
#!/usr/bin/env bash
#
# Secure_Connect.sh
#
# Purpose:
#   Demonstrate a secure SSH connection to an EC2 instance
#   using a PEM key (identity file) and the standard SSH structure.
#
# Usage (example):
#   ./Secure_Connect.sh /path/to/key.pem ec2-user 11.22.33.44
#
# Notes:
#   - The PEM file is your SSH credential (private key).
#   - The -i flag tells SSH which identity file to use.
#   - The user (ec2-user, ubuntu, etc.) depends on the AMI.
#   - The host is the public IP or DNS of the EC2 instance.

KEY_FILE="$1"   # Example: /home/edward/keys/my-ec2-key.pem
SSH_USER="$2"   # Example: ec2-user (Amazon Linux) or ubuntu (Ubuntu)
HOST="$3"       # Example: 54.201.10.20

if [ -z "$KEY_FILE" ] || [ -z "$SSH_USER" ] || [ -z "$HOST" ]; then
  echo "Usage: $0 <path-to-pem> <ssh-user> <host>"
  echo "Example: $0 ~/.ssh/my-key.pem ec2-user 54.201.10.20"
  exit 1
fi

# Ensure the key file has secure permissions
# SSH will refuse to use keys that are too open.
chmod 400 "$KEY_FILE"

# Core SSH command (this is the important part for learning):
# ssh -i <identity-file.pem> <user>@<host>
#
# Example:
# ssh -i ~/.ssh/my-ec2-key.pem ec2-user@54.201.10.20

ssh -i "$KEY_FILE" "${SSH_USER}@${HOST}"
