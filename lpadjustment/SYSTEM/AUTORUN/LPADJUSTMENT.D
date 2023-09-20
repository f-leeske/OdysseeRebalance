// reduce xp for enemies by 10%. To compensate, all xp rewards for quests were increased by 150% and required xp per level is down. TODO check if this works in the long run

const int xp_per_victory = 9;

func void b_giveplayerxp(var int add_xp) {
    var string concattext;

    hero.exp = hero.exp + add_xp;
    concattext = print_xpgained;
    concattext = concatstrings(concattext, inttostring(add_xp));
    printscreen(concattext, -1, ypos_xpgained, font_screensmall, 2);
    if(hero.exp >= hero.exp_next) {
        hero.level = hero.level + 1;
        hero.exp_next = hero.exp_next + ((hero.level + 1) * 470);
        hero.lp = hero.lp + lp_per_level;
        printscreen(print_levelup, -1, ypos_levelup, font_screen, 2);
        snd_play("LevelUp");
    };
    b_checklog();
};

instance pc_hero(npc_default) {
    name = "Roland";
    guild = gil_none;
    id = 0;
    voice = 15;
    npctype = npctype_main;
    bodystateinterruptableoverride = true;
    exp = 0;
    exp_next = 460;
    lp = 10;
    attribute[4] = 10;
    attribute[5] = 10;
    attribute[3] = 10;
    attribute[2] = 10;
    attribute[1] = 30;
    attribute = 30;
    equipitem(pc_hero, 33517);
    createinvitems(pc_hero, itfo_bread, 1);
    createinvitems(pc_hero, itfo_cheese, 1);
    createinvitems(pc_hero, itfo_water, 1);
    createinvitems(pc_hero, itfo_apple, 2);
    createinvitems(pc_hero, itlstorch, 2);
    createinvitems(pc_hero, itmi_gold, 55);
    createinvitems(pc_hero, itlstorch, 2);
    mdl_setvisual(pc_hero, "Humans.mds");
    b_setnpcvisual(pc_hero, male, "Hum_Head_Pony", face_p_normalbart_cronos, bodytex_p, 32527);
    mdl_setmodelfatness(pc_hero, 1.5);
    mdl_applyoverlaymds(pc_hero, "Humans_Militia.mds");
    b_setfightskills(pc_hero, 5);
};


const int t_max = 450; // late game teachers teach higher values

func int lpcosthelpattr(var int learned, var int points){
    // fix learning across lp cost thresholds, and change the thresholds to be more suited to the much higher character levels.
    var int kosten;
    kosten = 0;
    if(learned >=250){
        kosten += 5 * points;
    } else if (learned + points >= 250){
        kosten += 4 * (250-learned);
        kosten += 5 * (points - (250 - learned));
    } else if (learned >= 150){
        kosten += 4 * points;
    } else if (learned + points >= 150){
        kosten += 3 * (150-learned);
        kosten += 4 * (points - (150 - learned));
    } else if (learned >= 90){
        kosten += 3 * points;
    } else if (learned + points >= 90){
        kosten += 2 * (90-learned);
        kosten += 3 * (points - (90 - learned));
    } else if (learned >= 40){
        kosten += 2 * points;
    } else if (learned + points >= 40){
        kosten += 1 * (40-learned);
        kosten += 2 * (points - (40 - learned));
    } else{
        kosten = points;
    };
    return kosten;
};

func int b_getlearncostattribute(var c_npc oth, var int attrib, var int points){
    
    if(attrib == atr_strength || attrib == atr_dexterity){
        var int learnedvalue;
        if (attrib == atr_strength){
            learnedvalue = oth.aivar[81];
        }
        else if (attrib == atr_dexterity){
            learnedvalue = oth.aivar[82];
        };
        return lpcosthelpattr(learnedvalue, points);
    };
    // mana and hp always cost the same. TODO check for health later in game
    return points;
};

func int lpcosthelptalentmelee(var int learned, var int points){
// TODO fix thresholds after playing later chapters
    var int kosten;
    kosten = 0;
    if(learned >=85){
        kosten += 5 * points;
    } else if (learned + points >= 85){
        kosten += 4 * (85-learned);
        kosten += 5 * (points - (85 - learned));
    } else if (learned >= 70){
        kosten += 4 * points;
    } else if (learned + points >= 70){
        kosten += 3 * (70-learned);
        kosten += 4 * (points - (70 - learned));
    } else if (learned >= 50){
        kosten += 3 * points;
    } else if (learned + points >= 50){
        kosten += 2 * (50-learned);
        kosten += 3 * (points - (50 - learned));
    } else if (learned >= 30){
        kosten += 2 * points;
    } else if (learned + points >= 30){
        kosten += 1 * (30-learned);
        kosten += 2 * (points - (30 - learned));
    } else{
        kosten = points;
    };
    return kosten;
};

func int lpcosthelptalentranged(var int learned, var int points){
// hitting is more fun than missing, so lp costs down significantly for ranged. TODO change teacher max values, check param in line 566
// TODO fix thresholds after playing later chapters
     var int kosten;
    kosten = 0;
    if(learned >=180){
        kosten += 5 * points;
    } else if (learned + points >= 180){
        kosten += 4 * (180-learned);
        kosten += 5 * (points - (180 - learned));
    } else if (learned >= 140){
        kosten += 4 * points;
    } else if (learned + points >= 140){
        kosten += 3 * (140-learned);
        kosten += 4 * (points - (140 - learned));
    } else if (learned >= 100){
        kosten += 3 * points;
    } else if (learned + points >= 100){
        kosten += 2 * (100-learned);
        kosten += 3 * (points - (100 - learned));
    } else if (learned >= 60){
        kosten += 2 * points;
    } else if (learned + points >= 60){
        kosten += 1 * (60-learned);
        kosten += 2 * (points - (60 - learned));
    } else{
        kosten = points;
    };
    return kosten;
};

func int b_getlearncosttalent(var c_npc oth, var int talent, var int skill) {
    // fix learning across threshold for weapon talents; reduce cost of hunter loot stuff; increase perm potion lp cost
    var int kosten;
    var int learned;
    kosten = 0;
    if(talent == npc_talent_mage) {
        if((skill >= 1) && (skill <= 6)) {
            kosten = 5;
        };
    };
    if(talent == npc_talent_1h) {
        learned = oth.aivar[84];
        kosten = lpcosthelptalentmelee(learned, skill);
    };
    if(talent == npc_talent_2h) {
        learned = oth.aivar[85];
        kosten = lpcosthelptalentmelee(learned, skill);
    };
    if(talent == npc_talent_bow) {
        learned = oth.aivar[86];
        kosten = lpcosthelptalentranged(learned, skill);
    };
    if(talent == npc_talent_crossbow) {
        learned = oth.aivar[87];
        kosten = lpcosthelptalentranged(learned, skill);
    };
    if((talent == npc_talent_sneak) || (talent == npc_talent_acrobat)) {
        kosten = 5;
    };
    if(talent == npc_talent_picklock) {
        kosten = 5;
    };
    if(talent == npc_talent_pickpocket) {
        kosten = 10;
    };
    if(talent == npc_talent_smith) {
        if(skill == weapon_common) {
            kosten = 3;
        }
        else if(skill == weapon_1h_special_01) {
            kosten = 6;
        }
        else if(skill == weapon_2h_special_01) {
            kosten = 6;
        }
        else if(skill == weapon_1h_special_02) {
            kosten = 8;
        }
        else if(skill == weapon_2h_special_02) {
            kosten = 8;
        }
        else if(skill == weapon_1h_special_03) {
            kosten = 10;
        }
        else if(skill == weapon_2h_special_03) {
            kosten = 10;
        }
        else if(skill == weapon_1h_special_04) {
            kosten = 15;
        }
        else if(skill == weapon_2h_special_04) {
            kosten = 15;
        }
        else if(skill == weapon_1h_harad_01) {
            kosten = 6;
        }
        else if(skill == weapon_1h_harad_02) {
            kosten = 8;
        }
        else if(skill == weapon_1h_harad_03) {
            kosten = 10;
        }
        else if(skill == weapon_1h_harad_04) {
            kosten = 15;
        };
    };
    if(talent == npc_talent_alchemy) {
        if(skill == potion_health_01) {
            kosten = 3;
        }
        else if(skill == potion_health_02) {
            kosten = 5;
        }
        else if(skill == potion_health_03) {
            kosten = 8;
        }
        else if(skill == potion_health_04) {
            kosten = 10;
        }
        else if(skill == potion_mana_01) {
            kosten = 3;
        }
        else if(skill == potion_mana_02) {
            kosten = 5;
        }
        else if(skill == potion_mana_03) {
            kosten = 6;
        }
        else if(skill == potion_mana_04) {
            kosten = 10;
        }
        else if(skill == potion_speed) {
            kosten = 5;
        }
        else if(skill == potion_perm_str) {
            kosten = 40;
        }
        else if(skill == potion_perm_dex) {
            kosten = 40;
        }
        else if(skill == potion_perm_mana) {
            kosten = 25;
        }
        else if(skill == potion_perm_health) {
            kosten = 24;
        }
        else if(skill == potion_stamina) {
            kosten = 5;
        }
        else if(skill == potion_perm_stamina) {
            kosten = 10;
        }
        else if(skill == potion_megadrink) {
            kosten = 50;
        };
    };
    if(talent == npc_talent_takeanimaltrophy) {
        if(skill == trophy_teeth) {
            kosten = 3;
        }
        else if(skill == trophy_claws) {
            kosten = 3;
        }
        else if(skill == trophy_fur) {
            kosten = 3;
        }
        else if(skill == trophy_heart) {
            kosten = 3;
        }
        else if(skill == trophy_shadowhorn) {
            kosten = 3;
        }
        else if(skill == trophy_firetongue) {
            kosten = 2;
        }
        else if(skill == trophy_bfwing) {
            kosten = 2;
        }
        else if(skill == trophy_bfsting) {
            kosten = 2;
        }
        else if(skill == trophy_mandibles) {
            kosten = 2;
        }
        else if(skill == trophy_crawlerplate) {
            kosten = 3;
        }
        else if(skill == trophy_drgsnapperhorn) {
            kosten = 2;
        }
        else if(skill == trophy_dragonscale) {
            kosten = 10;
        }
        else if(skill == trophy_dragonblood) {
            kosten = 10;
        }
        else if(skill == trophy_reptileskin) {
            kosten = 2;
        };
    };
    if(talent == npc_talent_foreignlanguage) {
        if(skill == language_1) {
            kosten = 15;
        }
        else if(skill == language_2) {
            kosten = 20;
        }
        else if(skill == language_3) {
            kosten = 25;
        };
    };
    if(talent == npc_talent_dementorlanguage) {
        if(skill == dmtlanguage_1) {
            kosten = 3;
        }
        else if(skill == dmtlanguage_2) {
            kosten = 5;
        }
        else if(skill == dmtlanguage_3) {
            kosten = 10;
        };
    };
    if(talent == npc_talent_wispdetector) {
        if(skill == wispskill_nf) {
            kosten = 0;
        }
        else if(skill == wispskill_ff) {
            kosten = 1;
        }
        else if(skill == wispskill_none) {
            kosten = 1;
        }
        else if(skill == wispskill_rune) {
            kosten = 1;
        }
        else if(skill == wispskill_magic) {
            kosten = 1;
        }
        else if(skill == wispskill_food) {
            kosten = 1;
        }
        else if(skill == wispskill_potions) {
            kosten = 1;
        };
    };
    if(talent == npc_talent_runes) {
        if(skill == spl_pallight) {
            kosten = 1;
        }
        else if(skill == spl_pallightheal) {
            kosten = 5;
        }
        else if(skill == spl_palholybolt) {
            kosten = 3;
        }
        else if(skill == spl_palmediumheal) {
            kosten = 10;
        }
        else if(skill == spl_palrepelevil) {
            kosten = 5;
        }
        else if(skill == spl_palfullheal) {
            kosten = 15;
        }
        else if(skill == spl_paldestroyevil) {
            kosten = 10;
        }
        else if(skill == spl_palteleportsecret) {
            kosten = 5;
        }
        else if(skill == spl_light) {
            kosten = 1;
        }
        else if(skill == spl_firebolt) {
            kosten = 5;
        }
        else if(skill == spl_lightheal) {
            kosten = 5;
        }
        else if(skill == spl_summongoblinskeleton) {
            kosten = 3;
        }
        else if(skill == spl_zap) {
            kosten = 3;
        }
        else if(skill == spl_icebolt) {
            kosten = 5;
        }
        else if(skill == spl_instantfireball) {
            kosten = 10;
        }
        else if(skill == spl_summonwolf) {
            kosten = 5;
        }
        else if(skill == spl_windfist) {
            kosten = 5;
        }
        else if(skill == spl_sleep) {
            kosten = 5;
        }
        else if(skill == spl_charm) {
            kosten = 5;
        }
        else if(skill == spl_icelance) {
            kosten = 5;
        }
        else if(skill == spl_whirlwind) {
            kosten = 5;
        }
        else if(skill == spl_mediumheal) {
            kosten = 10;
        }
        else if(skill == spl_lightningflash) {
            kosten = 5;
        }
        else if(skill == spl_chargefireball) {
            kosten = 10;
        }
        else if(skill == spl_summonskeleton) {
            kosten = 10;
        }
        else if(skill == spl_fear) {
            kosten = 5;
        }
        else if(skill == spl_icecube) {
            kosten = 10;
        }
        else if(skill == spl_thunderstorm) {
            kosten = 5;
        }
        else if(skill == spl_geyser) {
            kosten = 10;
        }
        else if(skill == spl_chargezap) {
            kosten = 10;
        }
        else if(skill == spl_summongolem) {
            kosten = 15;
        }
        else if(skill == spl_destroyundead) {
            kosten = 10;
        }
        else if(skill == spl_pyrokinesis) {
            kosten = 15;
        }
        else if(skill == spl_waterfist) {
            kosten = 10;
        }
        else if(skill == spl_firestorm) {
            kosten = 10;
        }
        else if(skill == spl_icewave) {
            kosten = 20;
        }
        else if(skill == spl_summondemon) {
            kosten = 20;
        }
        else if(skill == spl_fullheal) {
            kosten = 15;
        }
        else if(skill == spl_masterofdisaster) {
            kosten = 15;
        }
        else if(skill == spl_firerain) {
            kosten = 20;
        }
        else if(skill == spl_breathofdeath) {
            kosten = 20;
        }
        else if(skill == spl_massdeath) {
            kosten = 20;
        }
        else if(skill == spl_armyofdarkness) {
            kosten = 20;
        }
        else if(skill == spl_shrink) {
            kosten = 20;
        }
        else {
            kosten = 5;
        };
    };
    return kosten;
};

// remove increase of "learned" attribute when getting the skill through other means

func void b_raiseattribute(var c_npc oth, var int attrib, var int points) {
    var string concattext;

    if(attrib == atr_strength) {
        oth.attribute[4] = oth.attribute[4] + points;
        concattext = concatstrings(print_learnstr, inttostring(points));
        prints(concattext);
    };
    if(attrib == atr_dexterity) {
        oth.attribute[5] = oth.attribute[5] + points;
        concattext = concatstrings(print_learndex, inttostring(points));
        prints(concattext);
    };
    if((npc_talent_acrobat_gelernt == true) && (npc_gettalentskill(oth, npc_talent_acrobat) == 0)) {
        npc_settalentskill(oth, npc_talent_acrobat, 1);
        printscreen(print_addon_acrobatbonus, -1, 55, font_screen, 2);
    };
    if((npc_talent_firemaster_gelernt == true) && (npc_gettalentskill(oth, npc_talent_firemaster) == 0)) {
        npc_settalentskill(oth, npc_talent_firemaster, 1);
        printscreen(print_mod_feuermeisterbonus, -1, 55, font_screen, 2);
    };
    if((krankheitheilen == true) && (npc_gettalentskill(oth, npc_talent_c) == 0)) {
        npc_settalentskill(oth, npc_talent_c, 1);
        printscreen(print_giftresistenzgelernt, -1, 55, font_screen, 2);
    };
    if((knows_assassinengift == true) && (npc_gettalentskill(oth, npc_talent_d) == 0)) {
        npc_settalentskill(oth, npc_talent_d, 1);
        printscreen(print_giftherstellunggelernt, -1, 55, font_screen, 2);
    };
    if(npc_gettalentskill(oth, npc_talent_e) == 0) {
        npc_settalentskill(oth, npc_talent_e, 1);
    };
    if((player_talent_wispdetector[6] == true) && (npc_gettalentskill(oth, npc_talent_wispdetector) == 0)) {
        npc_settalentskill(oth, npc_talent_wispdetector, 1);
        printscreen(print_mod_irrlichtgelernt, -1, 55, font_screen, 2);
    };
    if((npc_talent_regenerate_gelernt == true) && (npc_gettalentskill(oth, npc_talent_regenerate) == 0)) {
        npc_settalentskill(oth, npc_talent_regenerate, 1);
        printscreen(print_mod_regenerategelernt, -1, 55, font_screen, 2);
    };
    if((player_talent_dementorlanguage[2] == true) && (npc_gettalentskill(oth, player_talent_dementorlanguage) == 0)) {
        npc_settalentskill(oth, player_talent_dementorlanguage, 1);
        printscreen(print_dementorlanguagegelernt, -1, 55, font_screen, 2);
    };
    if((player_talent_foreignlanguage[2] == true) && (npc_gettalentskill(oth, player_talent_foreignlanguage) == 0)) {
        npc_settalentskill(oth, player_talent_foreignlanguage, 1);
        printscreen(print_foreignlanguagegelernt, -1, 55, font_screen, 2);
    };
    if(attrib == atr_mana_max) {
        oth.attribute[3] = oth.attribute[3] + points;
        concattext = concatstrings(print_learnmana_max, inttostring(points));
        prints(concattext);
    };
    if(attrib == atr_hitpoints_max) {
        oth.attribute[1] = oth.attribute[1] + points;
        concattext = concatstrings(print_learnhitpoints_max, inttostring(points));
        prints(concattext);
    };
};


func int b_teachattributepoints(var c_npc slf, var c_npc oth, var int attrib, var int points, var int teachermax) {
    var string concattext;
    var int kosten;
    var int realattribute;

    kosten = b_getlearncostattribute(oth, attrib, points);
    if((attrib != atr_strength) && (attrib != atr_dexterity) && (attrib != atr_mana_max)) {
        print("*** ERROR: Wrong Parameter ***");
        return false;
    };
    if(attrib == atr_strength) {
        realattribute = oth.aivar[81];
    }
    else if(attrib == atr_dexterity) {
        realattribute = oth.aivar[82];
    }
    else if(attrib == atr_mana_max) {
        realattribute = oth.aivar[83];
    };
    if(realattribute >= teachermax) {
        concattext = concatstrings(print_nolearnoverpersonalmax, inttostring(teachermax));
        printscreen(concattext, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNYOUREBETTER");
        return false;
    };
    if((realattribute + points) > teachermax) {
        concattext = concatstrings(print_nolearnoverpersonalmax, inttostring(teachermax));
        printscreen(concattext, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNOVERPERSONALMAX");
        return false;
    };
    if(oth.lp < kosten) {
        printscreen(print_notenoughlp, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNNOPOINTS");
        return false;
    };
    oth.lp = oth.lp - kosten;
    b_raiseattribute(oth, attrib, points);
    b_raiserealattributelearncounter(oth, attrib, points);
    return true;
};


func void b_raisefighttalent(var c_npc oth, var int talent, var int percent) {
    b_addfightskill(oth, talent, percent);
};

func int b_teachfighttalentpercent(var c_npc slf, var c_npc oth, var int talent, var int percent, var int teachermax) {
    var string concattext;
    var int kosten;
    var int realhitchance;

    kosten = b_getlearncosttalent(oth, talent, percent);
    if((talent != npc_talent_1h) && (talent != npc_talent_2h) && (talent != npc_talent_bow) && (talent != npc_talent_crossbow)) {
        print("*** ERROR: Wrong Parameter ***");
        return false;
    };
    if(talent == npc_talent_1h) {
        realhitchance = oth.aivar[84];
    }
    else if(talent == npc_talent_2h) {
        realhitchance = oth.aivar[85];
    }
    else if(talent == npc_talent_bow) {
        realhitchance = oth.aivar[86];
    }
    else if(talent == npc_talent_crossbow) {
        realhitchance = oth.aivar[87];
    };
    if(realhitchance >= teachermax) {
        concattext = concatstrings(print_nolearnoverpersonalmax, inttostring(teachermax));
        printscreen(concattext, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNYOUREBETTER");
        return false;
    };
    if((realhitchance + percent) > teachermax) {
        concattext = concatstrings(print_nolearnoverpersonalmax, inttostring(teachermax));
        printscreen(concattext, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNOVERPERSONALMAX");
        return false;
    };
    if(oth.lp < kosten) {
        printscreen(print_notenoughlp, -1, -1, font_screen, 2);
        b_say(slf, oth, "$NOLEARNNOPOINTS");
        return false;
    };
    oth.lp = oth.lp - kosten;
    if(talent == npc_talent_1h) {
        b_raisefighttalent(oth, npc_talent_1h, percent);
        b_raiserealfighttalentpercent(oth, npc_talent_1h, percent);
        if(oth.aivar[84] >= (oth.aivar[85] + 30)) {
            b_raisefighttalent(oth, npc_talent_2h, percent);
            b_raiserealfighttalentpercent(oth, npc_talent_2h, percent);
            printscreen(print_learn1h_and_2h, -1, -1, font_screen, 2);
        }
        else {
            printscreen(print_learn1h, -1, -1, font_screen, 2);
        };
        return true;
    };
    if(talent == npc_talent_2h) {
        b_raisefighttalent(oth, npc_talent_2h, percent);
        b_raiserealfighttalentpercent(oth, npc_talent_2h, percent);
        if(oth.aivar[85] >= (oth.aivar[84] + 30)) {
            b_raisefighttalent(oth, npc_talent_1h, percent);
            b_raiserealfighttalentpercent(oth, npc_talent_1h, percent);
            printscreen(print_learn2h_and_1h, -1, -1, font_screen, 2);
        }
        else {
            printscreen(print_learn2h, -1, -1, font_screen, 2);
        };
        return true;
    };
    if(talent == npc_talent_bow) {
        b_raisefighttalent(oth, npc_talent_bow, percent);
        b_raiserealfighttalentpercent(oth, npc_talent_bow, percent);
        if(oth.aivar[86] >= (oth.aivar[87] + 30)) {
            b_raisefighttalent(oth, npc_talent_crossbow, percent);
            b_raiserealfighttalentpercent(oth, npc_talent_crossbow, percent);
            printscreen(print_learnbow_and_crossbow, -1, -1, font_screen, 2);
        }
        else {
            printscreen(print_learnbow, -1, -1, font_screen, 2);
        };
        return true;
    };
    if(talent == npc_talent_crossbow) {
        b_raisefighttalent(oth, npc_talent_crossbow, percent);
        b_raiserealfighttalentpercent(oth, npc_talent_crossbow, percent);
        if(oth.aivar[87] >= (oth.aivar[86] + 30)) {
            b_raisefighttalent(oth, npc_talent_bow, percent);
            b_raiserealfighttalentpercent(oth, npc_talent_bow, percent);
            printscreen(print_learncrossbow_and_bow, -1, -1, font_screen, 2);
        }
        else {
            printscreen(print_learncrossbow, -1, -1, font_screen, 2);
        };
        return true;
    };
};

func void b_blessattribute(var c_npc oth, var int attrib, var int points) {
    var string concattext;

    if(attrib == atr_strength) {
        oth.attribute[4] = oth.attribute[4] + points;
        concattext = concatstrings(print_blessstr, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_dexterity) {
        oth.attribute[5] = oth.attribute[5] + points;
        concattext = concatstrings(print_blessdex, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_mana_max) {
        oth.attribute[3] = oth.attribute[3] + points;
        oth.aivar[83] = oth.aivar[83] + points;
        oth.attribute[2] = oth.attribute[3];
        concattext = concatstrings(print_blessmana_max, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_hitpoints_max) {
        oth.attribute[1] = oth.attribute[1] + points;
        oth.aivar[92] = oth.aivar[92] + points;
        oth.attribute = oth.attribute[1];
        concattext = concatstrings(print_blesshitpoints_max, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_hitpoints) {
        oth.attribute = oth.attribute[1];
        printscreen(print_blesshitpoints, -1, -1, font_screen, 2);
    };
    if(attrib == atr_mana) {
        oth.attribute[2] = oth.attribute[3];
        printscreen(print_blessmana, -1, -1, font_screen, 2);
    };
};

func void b_blessattributeadanos(var c_npc oth, var int attrib, var int points) {
    var string concattext;

    if(attrib == atr_strength) {
        oth.attribute[4] = oth.attribute[4] + points;
        concattext = concatstrings(print_adanosblessstr, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_dexterity) {
        oth.attribute[5] = oth.attribute[5] + points;
        concattext = concatstrings(print_adanosblessdex, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_mana_max) {
        oth.attribute[3] = oth.attribute[3] + points;
        oth.aivar[83] = oth.aivar[83] + points;
        oth.attribute[2] = oth.attribute[3];
        concattext = concatstrings(print_adanosblessmana_max, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_hitpoints_max) {
        oth.attribute[1] = oth.attribute[1] + points;
        oth.aivar[92] = oth.aivar[92] + points;
        oth.attribute = oth.attribute[1];
        concattext = concatstrings(print_adanosblesshitpoints_max, inttostring(points));
        printscreen(concattext, -1, -1, font_screen, 2);
    };
    if(attrib == atr_hitpoints) {
        oth.attribute = oth.attribute[1];
        printscreen(print_adanosblesshitpoints, -1, -1, font_screen, 2);
    };
    if(attrib == atr_mana) {
        oth.attribute[2] = oth.attribute[3];
        printscreen(print_adanosblessmana, -1, -1, font_screen, 2);
    };
};

func void useitpo_potionofdeath() {
    if(hero.guild == gil_kdf) {
        wld_playeffect("spellFX_LIGHTSTAR_BLUE", hero, hero, 0, 0, 0, false);
        snd_play("SFX_HealObsession");
        self.attribute = self.attribute[1];
        self.attribute[2] = self.attribute[3];
        npc_changeattribute(self, atr_strength, 5);
        npc_changeattribute(self, atr_dexterity, 5);
        printscreen(print_learnstr5, -1, 45, font_screen, 2);
        printscreen(print_learndex5, -1, 55, font_screen, 2);
        printscreen(print_fullyhealed, -1, 65, font_screen, 2);
        mdl_applyoverlaymdstimed(self, "HUMANS_SPRINT.MDS", time_speed);
    }
    else {
        ai_wait(hero, 3.0);
        ai_playani(self, "S_FIRE_VICTIM");
        wld_playeffect("VOB_MAGICBURN", hero, hero, 0, 0, 0, false);
        b_say(self, self, "$Dead");
        ai_stopfx(self, "VOB_MAGICBURN");
        npc_changeattribute(self, atr_hitpoints, -self.attribute[1]);
        npc_stopani(self, "S_FIRE_VICTIM");
    };
};