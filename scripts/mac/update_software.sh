#-------------------------------------------------------------------------------
# Update software on Mac (mac/update_software.sh)
#-------------------------------------------------------------------------------

# Check for recommended software updates
inform "Running software update on Mac OS..."

sudo softwareupdate -i -r --ignore iTunes > /dev/null 2>&1
