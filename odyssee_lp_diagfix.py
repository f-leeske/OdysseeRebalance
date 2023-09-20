# replace all calls of b_getlearncostattribute with the new signature with 3 arguments.
# fix all the incorrect calculations of LP costs by moving the '* 5' factors into the third argument.

import re
from tqdm import tqdm 
f = 'C:\\Users\\Fabian\\Modding\\Gothic\\odysseedecomp\\decdatout\\GOTHIC.d'

re_attribute = re.compile("b_getlearncostattribute\(other, (?P<atrname>atr_strength|atr_dexterity|atr_mana_max|atr_hitpoints_max)\) \* (?P<amount>\d*)")
attribute_sub = "b_getlearncostattribute(other, \g<atrname>, \g<amount>)"
re_talent = re.compile("b_getlearncosttalent\(other, (?P<atrname>npc_talent_1h|npc_talent_2h|npc_talent_bow|npc_talent_crossbow), 1\) \* (?P<amount>\d*)")
talent_sub = "b_getlearncosttalent(other, \g<atrname>, \g<amount>)"

with open(f) as gothicd:
    lines = gothicd.readlines()

# building or finding an actual parser is not worth it

in_func = False
re_match = False
current_func = ""

for l in tqdm(lines):
    if not in_func and l.startswith('func'):
        in_func = True
    if not in_func:
        continue
    subbed_str = re_attribute.sub(attribute_sub,l)
    subbed_str = re_talent.sub(talent_sub,subbed_str)
    
    if subbed_str != l:
        re_match = True
    current_func += subbed_str
    
    if l == "};\n":
        if re_match:
            with open('Zfixeddialogue.d','a') as o:
                o.write(current_func + "\n\n")
        current_func = ""
        re_match = False
        in_func = False

    