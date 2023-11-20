#! /bin/sh

# A rofi-like System/Exit menu for wofi

# wofi crashes w/ no cache file, so let's use a custom one and delete it every time, to avoid reordering entries
rm /home/piotr/.local/share/wofi/exit.cache

A=$(wofi --show dmenu --width=300 --height=300 --cache-file=/home/piotr/.local/share/wofi/exit.cache --prompt=System cat <<EOF
 Lock
 Reboot
⏻ Shutdown
󱖐  Suspend
  Hybernate
EOF
)

case "$A" in

    *Lock) swaylock --config ~/.config/swaylock/config ;;

    *Logout) swaynagmode -R -t red -m ' You are about to exit Sway. Proceed?' \
      -b '  Logout ' 'swaymsg exit' \
      -b '  Reload ' 'swaymsg reload' ;;

    *Reboot) systemctl reboot ;;

    *Shutdown) systemctl -i poweroff ;;

    *Hybernate) systemctl hibernate ;;

    *Suspend) systemctl suspend ;;

esac

exit 0
