#!/bin/bash
OPTION=$(echo -e "Logout\nShutdown\nReboot" | dmenu -p "Choose an action:")

case "$OPTION" in
    Logout)
        i3-msg exit
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
esac

