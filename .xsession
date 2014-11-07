#eval $(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
conky -d &
sleep 1s
nm-applet &
dropbox start &
exec awesome
