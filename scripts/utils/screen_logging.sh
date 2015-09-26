# utils/screen_logging.sh

function inform () {
  echo ""
  echo "${BG_GREEN}${BLACK}${BOLD}>>>>    $* ${RESET}"
}

function warn () {
  # echo ""
  echo "${BG_RED}${WHITE}${BOLD}>>>>    $* ${RESET}"
}

function pause_awhile () {
  echo ""
  read -p "${BG_YELLOW}${WHITE}${BOLD}>>>>    $*. Press <Enter> to continue.${RESET}"
}
