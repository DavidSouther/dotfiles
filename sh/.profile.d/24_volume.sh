function vu {
  amixer -q set Master 2dB+ unmute
}

function vd {
  amixer -q set Master 2dB- unmute
}

function vm {
  amixer -q set Master -D Pulse toggle
}

function vs {
  amixer -q set Master $1 unmute
}
