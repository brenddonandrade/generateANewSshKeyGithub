# generateANewSshKeyGithub

Here’s a polished **README.md** draft you can use for your project. It explains the purpose of your script, how to use it, and what steps it automates:

```markdown
# 🔑 Generate a New SSH Key for GitHub

This repository contains a simple Bash script that helps you generate and configure a new SSH key for use with GitHub.  
It automates the process of creating the key, adding it to the SSH agent, and guiding you through adding it to your GitHub account.

---

## 📜 Script Information
- **Script Name:** `configure`
- **Author:** Brenddon Andrade
- **Created:** 13-Jan-2026
- **Version:** 1.0
- **Description:** Creates a new SSH key for your computer and prepares it for GitHub authentication.
- **Reference:** [GitHub Docs – Generating a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)

---

## ⚙️ Usage

1. Clone or download this repository.
2. Make the script executable:
   ```bash
   chmod +x configure
   ```
3. Run the script:
   ```bash
   ./configure
   ```

---

## 🚀 What the Script Does

1. **Generate a new SSH key**
   - Prompts you for your email.
   - Creates a new SSH key using the `ed25519` algorithm.

2. **Add the SSH key to the ssh-agent**
   - Starts the ssh-agent in the background.
   - Adds your private key (`~/.ssh/id_ed25519`) to the agent.

3. **Guide you to add the key to GitHub**
   - Displays your public key (`~/.ssh/id_ed25519.pub`).
   - Provides step-by-step instructions to add the key to your GitHub account:
     - Go to **Settings** → **SSH and GPG keys**.
     - Click **New SSH key**.
     - Add a descriptive title (e.g., *Personal laptop*).
     - Paste your public key.
     - Save.

---

## ✅ Example

```bash
$ ./configure
Type your email: your_email@example.com
# Key is generated and added to ssh-agent
# Public key is displayed for you to copy into GitHub
```

---

## 🛡️ Notes
- This script uses the **ed25519** algorithm, recommended for modern SSH keys.
- Make sure you copy the **public key** (`id_ed25519.pub`) into GitHub, not the private key.
- If you already have an SSH key, you may want to back it up before generating a new one.

---

## 📌 License
This project is open-source. Feel free to use and modify it for your own needs.
```

Would you like me to also add a **quick troubleshooting section** (e.g., what to do if `ssh-agent` isn’t running or if GitHub doesn’t recognize the key)? That could make your README even more beginner-friendly.
