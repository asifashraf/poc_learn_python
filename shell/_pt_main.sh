#!/bin/bash
action=$1
if [[ -z "$action" || "$action" == "--help" ]]; then
  clear
  echo "  ====== Python learning ======"
  echo "  pt.                 pull, push"


else
 case $action in

    "pull")
        source cd-pt
        git pull
    ;;

    "push")
        source cd-pt
        git add .
        git commit -m "$1"
        git push
    ;;

  *)
    # Handle unknown or missing arguments
    echo "Invalid or missing argument. Please specify a valid action or use --help for usage information."
    ;;

 esac
fi


















