xautolock -time 10 -locker '~/.i3scripts/locker.sh' &

while true; do
    out=$(xprop -id $(xdotool getwindowfocus) | grep "WM_STATE(ATOM)" | grep "FULLSCREEN")
    echo $out
    # If the focused window is fullscreen
    if ! [$out -eq ""]
    then
        # Restart the xautolock program (this resets the timer)
        killall xautolock
        xautolock -time 10 -locker '~/.i3scripts/locker.sh' &
    fi
    sleep 10s
done
