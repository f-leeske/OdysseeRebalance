# multiply all quest xp rewards with 2.5

import re
from tqdm import tqdm

re_xp = re.compile("const int xp_(?P<name>.+) = (?P<value>\d+);")


f = 'C:\\Users\\Fabian\\Modding\\Gothic\\odysseedecomp\\decdatout\\GOTHIC.d'

with open(f) as gothicd:
    lines = gothicd.readlines()

for l in tqdm(lines):
    if l.startswith("const int xp_per_victory"):
         continue 
    matched = re_xp.match(l)
    if matched:
        value = int(matched['value'])
        name = matched['name']
        
        subbed = re_xp.sub(f'const int xp_\g<name> = {int(2.5*value)};', l)
        with open('doubledxp.d','a') as o:
                o.write(subbed + "\n")
