# Day 4 – Infrastructure Automation with AWS, Azure & Terraform

Today’s focus is learning how cloud servers (VMs) should be created the DevOps way.

In real-world DevOps, infrastructure is NOT created by clicking through cloud consoles.
Everything must be automated, repeatable, and version-controlled.

---

## What We Are Learning Today

We study why organizations moved from physical data centers to cloud providers like AWS and Azure.

More importantly, we learn why **manual cloud operations are not acceptable in DevOps** and how automation replaces them.

---

## What We Cover

1. Why companies migrated from on-premise data centers to cloud platforms.
2. Why creating servers manually from UI is inefficient and risky.
3. The three DevOps approaches for building infrastructure:
   - Cloud Console (Manual)
   - CLI / API automation
   - Infrastructure as Code (IaC)
4. Why Terraform is chosen for multi-cloud automation.
5. How IaC transforms infrastructure into version-controlled code.

---

## What Was Committed Today

The document `docs/Automation_Methods.md` explains:

- Why UI-based provisioning fails in real environments
- How CLI automation works and where it is used
- Why Terraform is the industry standard
- Differences between cloud-native tools and Terraform
- DevOps best practices for infrastructure automation

---

## DevOps Mindset Learned Today

Infrastructure should behave like software:
- Predictable
- Reproducible
- Auditable
- Automated

---

## Final Takeaway

DevOps does not **create servers**.
DevOps **builds systems that create servers automatically**.

