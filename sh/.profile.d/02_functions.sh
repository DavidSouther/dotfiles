## kill the process listening on a TCP port.
killport () {
  lsof -iTCP -sTCP:LISTEN | grep $1 | awk '{print $2}' | xargs kill 2>/dev/null
  lsof -iTCP -sTCP:LISTEN -P | grep $1 | awk '{print $2}' | xargs kill 2>/dev/null
}
