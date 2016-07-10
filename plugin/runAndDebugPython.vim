function RunPython()
python << EOF

import vim
from threading import Thread

def run_python():
    filename = vim.current.buffer.name
    vim.os.system('python ' + filename)

p = Thread(target = run_python)
p.daemon = True
p.start()

EOF
endfunction

function DebugPython()
python << EOF

import vim
from threading import Thread

def debug_python():
    filename = vim.current.buffer.name
    vim.os.system('python ' + filename)

p = Thread(target = debug_python)
p.daemon = True
p.start()

EOF
endfunction
