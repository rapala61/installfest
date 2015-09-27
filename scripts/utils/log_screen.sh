# utils/log_screen.sh

function show () {
  echo -e "${BG_WHITE}${BLACK}> $* ${RESET}"
}

function inform () {
  if [[ $2 ]]; then echo ""; fi
  echo -e "${BG_GREEN}${BLACK}${BOLD}>>>>  $1 ${RESET}"
}

function warn () {
  if [[ $2 ]]; then echo ""; fi
  echo -e "${BG_RED}${WHITE}${BOLD}>>>>  $1 ${RESET}"
}

function pause_awhile () {
  if [[ $2 ]]; then echo ""; fi
  echo -e "${BG_YELLOW}${WHITE}${BOLD}>>>>  $1 ${RESET}"
  read -p "${BG_YELLOW}${WHITE}${BOLD}Press <Enter> to continue.${RESET}"
}
