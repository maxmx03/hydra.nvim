vim9script

def CreateBuffer()
  enew

  setlocal buftype=nofile
  setlocal noswapfile
  setlocal nobuflisted
  setlocal nowrap

  var colors = {
    base04: '#181a1f',
    base03: '#1c1e24',
    base02: '#282c34',
    base01: '#53565c',
    base0: '#d4d4d6',
    pink: '#ff7eb6',
    blue: '#33b1ff',
    purple: '#b392f0',
    red: '#f97583',
    yellow: '#e5c07b',
    orange: '#d19a66',
    green: '#85e89d',
    teal: '#2bbac5',
    white: '#ffffff',
    add: '#89ca78',
    change: '#d19a66',
    delete: '#ef596f',
    hint: '#61afef',
    info: '#61afef',
    warn: '#e5c07b',
    error: '#ef596f',
    ok: '#89ca78',
  }

  var lines = []
  for color in keys(colors)
    add(lines, color .. " = " .. colors[color])
  endfor

  append(0, lines)

  setlocal nomodifiable

  file Hydra\ Colors
enddef

if !exists(":Hydra")
  command Hydra :call CreateBuffer()
endif
