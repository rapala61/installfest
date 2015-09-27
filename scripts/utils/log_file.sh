#-------------------------------------------------------------------------------
# Logging (utils/log_file.sh)
#-------------------------------------------------------------------------------

clear

# set up logfile
LOGFOLDER="$HOME/.wdi";
LOGFILE="$LOGFOLDER/install.log"

mkdir -p $LOGFOLDER

exec > >(tee $LOGFILE); exec 2>&1

echo "Script compiled at: ${COMPILED_AT}"
echo "Script execution begun: $(date)"
echo ""
