#-------------------------------------------------------------------------------
# Set up basic env vars (utils/set_env_vars.sh)
#-------------------------------------------------------------------------------

# Standard Bash Variables
# `OSTYPE` A string describing the operating system Bash is running on.
# `MACHTYPE` system type in cpu-company-system
# `SECONDS` number of seconds since the shell was started.

# FIXME (PJ) should have a better place to decide these versions:
#   Ruby (rbenv), Python (pyenv), Node (nvm)
BELOVED_RUBY_VERSION="2.2.3"
CURRENT_STABLE_RUBY_VERSION="2.2.3"

# TODO (pj) decide what the python versions should really be...
#   and maybe come up with a bigger, better place to hang this info
BELOVED_PYTHON_VERSION="anaconda-2.0.1"
CURRENT_STABLE_PYTHON_VERSION="3.4.1"

# NOT BEING USED YET, BUT SHOULD!
NODE_VERSION="stable" # using nvm's language...

if [[ "$OSTYPE" == "darwin"* ]]; then
  SYSTEM="mac"
  BASH_FILE=".bash_profile"
  MINIMUM_MAC_OS="10.7.0"
else
  SYSTEM="ubuntu"
  BASH_FILE=".bashrc"
fi

# the downloaded repo
SCRIPT_DIR="$HOME/.wdi/installfest"
SCRIPT_SETTINGS="$SCRIPT_DIR/settings"

SCRIPT_DOTFILES=($SCRIPT_SETTINGS/dotfiles/*)
SCRIPT_FONTS=($SCRIPT_SETTINGS/fonts/*)
SCRIPT_SUBL_PREFS=($SCRIPT_SETTINGS/sublime/*)
SCRIPT_THEMES=($SCRIPT_SETTINGS/terminal/*)

# the working folder
STUDENT_FOLDER="$HOME/code/wdi"

# Deprecated as part of the utils/report_log.sh system...
# TODO (PJ) update how reporting is done?
# OWNER="ga-students"
# REPO="wdi_melville_instructors"
