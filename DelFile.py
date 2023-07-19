from pathlib import Path

import subprocess
import os
import os.path
from os import path



Str_1 = '/lustre/or-scratch/cades-ccsi/scratch/tyr/US_LA2_Trans_opt_'
Str_2 = '/run/US_LA2_Trans_opt_'

for i in range(60):

    case = Str_1 + str(i) + Str_2 + str(i) + '.elm.h0.2013-12-31-00000.nc'
    cmd = (f"rm {case}")
    subprocess.run(cmd, universal_newlines=True, shell=True)
    
