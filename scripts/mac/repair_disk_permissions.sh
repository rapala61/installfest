#-------------------------------------------------------------------------------
# Repair disk permissions (mac/repair_disk_permissions.sh)
#-------------------------------------------------------------------------------

# Ensure user has full control over their folder
inform "Ensuring the current user owns their home folder."

sudo chown -R ${USER} ~

# Repair disk permission
inform "Running repair permissions... This may take a VERY LONG TIME!"

diskutil repairPermissions /
