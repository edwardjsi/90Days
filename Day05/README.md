# Day 05 – AWS CLI, EC2 Access & Command-Line Discipline

## Why Day 05 Matters

Day-05 is the day DevOps stops being documentation  
and starts being **infrastructure control**.

DevOps engineers:
- Do not click their way into servers
- Do not depend on UI for critical work
- Do not log into production casually

They operate from the command line with:
- Identity
- Authentication
- Automation-first thinking

---

## Remote Access: Console vs Terminal

AWS gives two ways to access EC2:

### 1. AWS Console (UI)
This is useful for:
- Emergency access
- Learning basics
- Validation

But this is not how DevOps operates daily.

---

### 2. Terminal Access (SSH)
This is the standard in real environments.

SSH gives:
- Security
- Speed
- Automation
- Scriptability
- Auditability

DevOps works where automation works:
The command line.

---

## SSH Authentication Concept

SSH is not password-based in production environments.

It uses:
- Public key authentication
- Private key ownership
- Identity linking

The `.pem` file is:
- Your identity
- Your access control
- Your security token

If you lose it → You lose access  
If it leaks → You lose control

---

## Identity Is Everything

Cloud access is not magic.
It is identity.

AWS CLI does nothing until:
An identity is configured.

Authentication is:
- Who you are
- What you can do
- Where you can operate

Without authentication:
There is no automation.

---

## AWS CLI Philosophy

You do not memorize AWS CLI commands.

You learn:
- How to navigate documentation
- How to discover options
- How to test with small commands
- How to validate outputs

Great DevOps engineers don’t remember flags.
They remember **how to find the truth fast**.

---

## DevOps Ownership Starts Here

Day-05 introduces:

✅ Secure Authentication  
✅ Remote Access Discipline  
✅ CLI Control  
✅ Documentation Navigation  
✅ Identity Awareness  
✅ Permission Consciousness  

This is no longer learning.
This is becoming operational.

---

## Final Principle

UI is for comfort.  
CLI is for control.

The terminal is where:
Unreliable systems become stable.

---

✅ Day-05 Completed  
Next: Automation over access.
