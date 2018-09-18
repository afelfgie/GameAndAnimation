sp='/-\|'
sc=0
spin() {
    printf "\b${sp:sc++:1}"
    ((sc==${#sp})) && sc=0
    sleep 0.1
}
endspin() {
    printf '\r%s\n' "$@"
    sleep 0.1
}
until work_done; do
   spin
   some_work ...
done
endspin
