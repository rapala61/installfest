#-------------------------------------------------------------------------------
# Repair disk permissions (mac/repair_disk_permissions.sh)
#-------------------------------------------------------------------------------

# Ensure user has full control over their folder
inform "Ensuring the current user owns their home folder." true
sudo chown -R ${USER} ~
show "Complete!"

# Repair disk permission
inform "Running repair permissions..." true
inform "  Note: this may take a VERY LONG TIME!"
diskutil repairPermissions /
show "Complete!"
