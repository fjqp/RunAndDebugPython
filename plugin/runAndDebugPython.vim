function RunPython()
python << EOF

import os
from threading import Thread

def run():
    os.system('python %')

p = Thread(target = run, name = 'run')
p.daemon = True
p.start()


EOF
endfunction
