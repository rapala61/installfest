#-------------------------------------------------------------------------------
# Create and Upload SSH key (add_ssh_key_to_github.sh)
#-------------------------------------------------------------------------------

# SSH keys establish a secure connection between your computer and GitHub
# This script follows these instructions
# `https://help.github.com/articles/generating-ssh-keys`

# SSH Keygen
inform "Generating an SSH key to establish a secure connection " true
inform "  your computer and GitHub. "

pause_awhile "Note: when you see the prompts:
        'Enter a file in which to save the key (...)', and
        'Enter passphrase (empty for no passphrase)',
      ${BOLD}just press Enter!
" true

ssh-keygen -t rsa -b 4096 -C $github_email
ssh-add ~/.ssh/id_rsa

public_key=$(cat ~/.ssh/id_rsa.pub)

echo "SSH key created..."

# Upload to GitHub

inform "Uploading SSH key to GitHub..." true

curl https://api.github.com/user/keys \
  -H "User-Agent: WDIInstallFest" \
  -H "Accept: application/vnd.github.v3+json" \
  -u "$github_name:$github_password" \
  -d '{"title":"WDI Installfest", "key":"'"$public_key"'"}'

echo ""
echo "Key uploaded!"
