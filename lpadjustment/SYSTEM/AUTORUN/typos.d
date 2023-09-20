// i found a random typo in the script. 
// CURRENTLY NOT USED TO BUILD THE .MOD FILE
instance itpo_gegengift(c_item) {
    name = "Gegengift";
    mainflag = item_kat_potions;
    flags = item_multi | item_mission;
    value = value_gegengift;
    visual = "ItMi_Flask.3ds";
    material = mat_glas;
    on_state = use_gegengift;
    scemename = "POTIONFAST";
    wear = wear_effect;
    effect = "SPELLFX_ITEMGLIMMER";
    description = "Dieses Mittel macht immun gegen das Gift vieler Monster";
    text[1] = name_bonus_hp;
    count[1] = hp_gegengift;
    text[5] = name_value;
    count[5] = value;
};