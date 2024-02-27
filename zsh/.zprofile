# Autostart X using startx after tty login.
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx $XDG_CONFIG_HOME/xinitrc \
        -- \
        -ardelay 200 \
        -arinterval 20
fi

