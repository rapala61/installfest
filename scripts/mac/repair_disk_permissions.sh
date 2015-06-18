# Ensure user has full control over their folder
sudo chown -R ${USER} ~

# Repair disk permission
diskutil repairPermissions /