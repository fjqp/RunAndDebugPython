function RunPython()
python << EOF

import vim
from threading import Thread

def run_python():
    filename = vim.current.buffer.name
    vim.os.system('python ' + filename)

p = Thread(target = run_python, name = 'run')
p.daemon = True
p.start()

EOF
endfunction
