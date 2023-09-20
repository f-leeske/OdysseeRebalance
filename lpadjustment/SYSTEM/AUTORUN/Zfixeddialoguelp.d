// replaced all calls of b_getlearncostattribute with the updated signature of 3 arguments.
// replaced all calls of b_getlearncosttalent for weapon talents with the correct value as the third parameter

func void dia_addon_cavalorn_teach_choices() {
    info_clearchoices(67806);
    info_addchoice(67806, dialog_back, dia_addon_cavalorn_teach_back);
    if(npc_gettalentskill(other, npc_talent_sneak) == false) {
        info_addchoice(67806, b_buildlearnstring("Schleichen", b_getlearncosttalent(other, npc_talent_sneak, 1)), dia_addon_cavalorn_teach_sneak);
    };
    info_addchoice(67806, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_addon_cavalorn_teach_bow_1);
    info_addchoice(67806, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_addon_cavalorn_teach_bow_5);
    info_addchoice(67806, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_addon_cavalorn_teach_1h_1);
    info_addchoice(67806, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_addon_cavalorn_teach_1h_5);
};


func void dia_addon_10008_bandit_teach_info() {
    ai_output(other, self, "DIA_Addon_10008_Bandit_Teach_15_00");
    info_clearchoices(67897);
    info_addchoice(67897, dialog_back, dia_addon_10008_bandit_teach_back);
    info_addchoice(67897, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_10008_bandit_teach_str_1);
    info_addchoice(67897, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_10008_bandit_teach_str_5);
};


func void dia_addon_10008_bandit_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(67897);
    info_addchoice(67897, dialog_back, dia_addon_10008_bandit_teach_back);
    info_addchoice(67897, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_10008_bandit_teach_str_1);
    info_addchoice(67897, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_10008_bandit_teach_str_5);
};


func void dia_addon_10008_bandit_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(67897);
    info_addchoice(67897, dialog_back, dia_addon_10008_bandit_teach_back);
    info_addchoice(67897, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_10008_bandit_teach_str_1);
    info_addchoice(67897, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_10008_bandit_teach_str_5);
};


func void dia_addon_lucia_teach_info() {
    ai_output(other, self, "DIA_Addon_Lucia_TEACH_15_00");
    info_clearchoices(68677);
    info_addchoice(68677, dialog_back, dia_addon_lucia_teach_back);
    info_addchoice(68677, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_lucia_teach_1);
    info_addchoice(68677, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_lucia_teach_5);
};


func void dia_addon_lucia_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(68677);
    info_addchoice(68677, dialog_back, dia_addon_lucia_teach_back);
    info_addchoice(68677, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_lucia_teach_1);
    info_addchoice(68677, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_lucia_teach_5);
};


func void dia_addon_lucia_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(68677);
    info_addchoice(68677, dialog_back, dia_addon_lucia_teach_back);
    info_addchoice(68677, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_lucia_teach_1);
    info_addchoice(68677, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_lucia_teach_5);
};


func void dia_addon_merdarion_adw_teach_mana_info() {
    ai_output(other, self, "DIA_Addon_Merdarion_ADW_TEACH_MANA_15_00");
    info_clearchoices(69435);
    info_addchoice(69435, dialog_back, dia_addon_merdarion_adw_teach_mana_back);
    info_addchoice(69435, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_addon_merdarion_adw_teach_mana_1);
    info_addchoice(69435, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_addon_merdarion_adw_teach_mana_5);
};


func void dia_addon_merdarion_adw_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_high);
    info_clearchoices(69435);
    info_addchoice(69435, dialog_back, dia_addon_merdarion_adw_teach_mana_back);
    info_addchoice(69435, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_addon_merdarion_adw_teach_mana_1);
    info_addchoice(69435, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_addon_merdarion_adw_teach_mana_5);
};


func void dia_addon_merdarion_adw_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_high);
    info_clearchoices(69435);
    info_addchoice(69435, dialog_back, dia_addon_merdarion_adw_teach_mana_back);
    info_addchoice(69435, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_addon_merdarion_adw_teach_mana_1);
    info_addchoice(69435, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_addon_merdarion_adw_teach_mana_5);
};


func void b_aj_teach() {
    info_clearchoices(70018);
    info_addchoice(70018, dialog_back, dia_addon_alligatorjack_teach_back);
    info_addchoice(70018, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_addon_alligatorjack_teach_bow_5);
    info_addchoice(70018, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_addon_alligatorjack_teach_bow_1);
    info_addchoice(70018, b_buildlearnstring("Tiere h�uten", b_getlearncosttalent(other, npc_talent_takeanimaltrophy, trophy_reptileskin)), dia_addon_alligatorjack_teach_fur);
    info_addchoice(70018, b_buildlearnstring("Z�hne ziehen", b_getlearncosttalent(other, npc_talent_takeanimaltrophy, trophy_teeth)), dia_addon_alligatorjack_teach_teeth);
};


func void dia_addon_morgan_teach_info() {
    ai_output(other, self, "DIA_Addon_Morgan_Teach_15_00");
    morgan_merke1h = other.hitchance[1];
    info_clearchoices(70088);
    info_addchoice(70088, dialog_back, dia_addon_morgan_teach_back);
    info_addchoice(70088, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_addon_morgan_teach_1h_1);
    info_addchoice(70088, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_addon_morgan_teach_1h_5);
};


func void dia_addon_morgan_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 1, 75);
    info_clearchoices(70088);
    info_addchoice(70088, dialog_back, dia_addon_morgan_teach_back);
    info_addchoice(70088, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_addon_morgan_teach_1h_1);
    info_addchoice(70088, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_addon_morgan_teach_1h_5);
};


func void dia_addon_morgan_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 5, 75);
    info_clearchoices(70088);
    info_addchoice(70088, dialog_back, dia_addon_morgan_teach_back);
    info_addchoice(70088, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_addon_morgan_teach_1h_1);
    info_addchoice(70088, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_addon_morgan_teach_1h_5);
};


func void dia_addon_henry_teach_info() {
    ai_output(other, self, "DIA_Addon_Henry_Teach_15_00");
    henry_merke2h = other.hitchance[2];
    info_clearchoices(70178);
    info_addchoice(70178, dialog_back, dia_addon_henry_teach_back);
    info_addchoice(70178, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_addon_henry_teach_2h_1);
    info_addchoice(70178, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_addon_henry_teach_2h_5);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_addon_henry_teach_cb_1);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_addon_henry_teach_cb_5);
};


func void dia_addon_henry_teach_cb_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 75);
    info_clearchoices(70178);
    info_addchoice(70178, dialog_back, dia_addon_henry_teach_back);
    info_addchoice(70178, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_addon_henry_teach_2h_1);
    info_addchoice(70178, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_addon_henry_teach_2h_5);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_addon_henry_teach_cb_1);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_addon_henry_teach_cb_5);
};


func void dia_addon_henry_teach_cb_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 75);
    info_clearchoices(70178);
    info_addchoice(70178, dialog_back, dia_addon_henry_teach_back);
    info_addchoice(70178, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_addon_henry_teach_2h_1);
    info_addchoice(70178, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_addon_henry_teach_2h_5);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_addon_henry_teach_cb_1);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_addon_henry_teach_cb_5);
};


func void dia_addon_henry_teach_2h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 1, 90);
    info_clearchoices(70178);
    info_addchoice(70178, dialog_back, dia_addon_henry_teach_back);
    info_addchoice(70178, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_addon_henry_teach_2h_1);
    info_addchoice(70178, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_addon_henry_teach_2h_5);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_addon_henry_teach_cb_1);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_addon_henry_teach_cb_5);
};


func void dia_addon_henry_teach_2h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 5, 90);
    info_clearchoices(70178);
    info_addchoice(70178, dialog_back, dia_addon_henry_teach_back);
    info_addchoice(70178, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_addon_henry_teach_2h_1);
    info_addchoice(70178, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_addon_henry_teach_2h_5);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_addon_henry_teach_cb_1);
    info_addchoice(70178, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_addon_henry_teach_cb_5);
};


func void dia_addon_brandon_teachplayer_info() {
    ai_output(other, self, "DIA_Addon_Francis_TeachPlayer_15_00");
    brandon_merke_str = other.attribute[4];
    brandon_merke_dex = other.attribute[5];
    if(mis_brandon_bringhering == log_success) {
        info_clearchoices(70503);
        info_addchoice(70503, dialog_back, dia_addon_brandon_teachplayer_back);
        info_addchoice(70503, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_brandon_teachplayer_dex_1);
        info_addchoice(70503, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_brandon_teachplayer_dex_5);
        info_addchoice(70503, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_brandon_teachplayer_str_1);
        info_addchoice(70503, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_brandon_teachplayer_str_5);
    }
    else {
        ai_output(self, other, "DIA_Addon_Brandon_TeachPlayer_04_01");
    };
};


func void dia_addon_brandon_teachplayer_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(70503);
    info_addchoice(70503, dialog_back, dia_addon_brandon_teachplayer_back);
    info_addchoice(70503, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_brandon_teachplayer_dex_1);
    info_addchoice(70503, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_brandon_teachplayer_dex_5);
    info_addchoice(70503, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_brandon_teachplayer_str_1);
    info_addchoice(70503, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_brandon_teachplayer_str_5);
};


func void dia_addon_brandon_teachplayer_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(70503);
    info_addchoice(70503, dialog_back, dia_addon_brandon_teachplayer_back);
    info_addchoice(70503, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_brandon_teachplayer_dex_1);
    info_addchoice(70503, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_brandon_teachplayer_dex_5);
    info_addchoice(70503, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_brandon_teachplayer_str_1);
    info_addchoice(70503, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_brandon_teachplayer_str_5);
};


func void dia_addon_brandon_teachplayer_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(70503);
    info_addchoice(70503, dialog_back, dia_addon_brandon_teachplayer_back);
    info_addchoice(70503, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_brandon_teachplayer_dex_1);
    info_addchoice(70503, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_brandon_teachplayer_dex_5);
    info_addchoice(70503, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_brandon_teachplayer_str_1);
    info_addchoice(70503, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_brandon_teachplayer_str_5);
};


func void dia_addon_brandon_teachplayer_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(70503);
    info_addchoice(70503, dialog_back, dia_addon_brandon_teachplayer_back);
    info_addchoice(70503, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_addon_brandon_teachplayer_dex_1);
    info_addchoice(70503, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_addon_brandon_teachplayer_dex_5);
    info_addchoice(70503, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_brandon_teachplayer_str_1);
    info_addchoice(70503, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_brandon_teachplayer_str_5);
};


func void dia_addon_erol_teach_info() {
    ai_output(other, self, "DIA_Addon_Erol_Teach_15_00");
    if(mis_addon_erol_banditstuff != log_success) {
        ai_output(self, other, "DIA_Addon_Erol_Teach_10_01");
        ai_output(self, other, "DIA_Addon_Erol_Teach_10_02");
        ai_output(self, other, "DIA_Addon_Erol_Teach_10_03");
    }
    else if(erol_bonus == false) {
        ai_output(self, other, "DIA_Addon_Erol_Teach_Add_10_00");
        ai_output(self, other, "DIA_Addon_Erol_Teach_Add_10_01");
        ai_output(self, other, "DIA_Addon_Erol_Teach_Add_10_02");
        ai_output(self, other, "DIA_Addon_Erol_Teach_Add_10_03");
        b_raiseattribute(other, atr_strength, 1);
        erol_bonus = true;
    }
    else {
        ai_output(self, other, "DIA_Addon_Erol_Teach_Add_10_04");
        info_clearchoices(70867);
        info_addchoice(70867, dialog_back, dia_addon_erol_teach_back);
        info_addchoice(70867, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_erol_teach_str_1);
        info_addchoice(70867, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_erol_teach_str_5);
    };
};


func void dia_addon_erol_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(70867);
    info_addchoice(70867, dialog_back, dia_addon_erol_teach_back);
    info_addchoice(70867, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_erol_teach_str_1);
    info_addchoice(70867, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_erol_teach_str_5);
};


func void dia_addon_erol_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(70867);
    info_addchoice(70867, dialog_back, dia_addon_erol_teach_back);
    info_addchoice(70867, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_addon_erol_teach_str_1);
    info_addchoice(70867, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_addon_erol_teach_str_5);
};


func void dia_mod_cavalorn_teach_choices() {
    info_clearchoices(71441);
    info_addchoice(71441, dialog_back, dia_mod_cavalorn_teach_back);
    if(npc_gettalentskill(other, npc_talent_sneak) == false) {
        info_addchoice(71441, b_buildlearnstring("Schleichen", b_getlearncosttalent(other, npc_talent_sneak, 1)), dia_mod_cavalorn_teach_sneak);
    };
    info_addchoice(71441, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_mod_cavalorn_teach_bow_1);
    info_addchoice(71441, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_mod_cavalorn_teach_bow_5);
    info_addchoice(71441, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_mod_cavalorn_teach_1h_1);
    info_addchoice(71441, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_mod_cavalorn_teach_1h_5);
};


func void dia_dragomir_mod_teach_info() {
    ai_output(other, self, "DIA_Hero_ARMBRUSTSCHIESSEN_15_01");
    info_clearchoices(72192);
    info_addchoice(72192, dialog_back, dia_dragomir_mod_teach_back);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_mod_teach_1h_1);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_mod_teach_1h_5);
};


func void dia_dragomir_mod_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 130);
    info_clearchoices(72192);
    info_addchoice(72192, dialog_back, dia_dragomir_mod_teach_back);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_mod_teach_1h_1);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_mod_teach_1h_5);
};


func void dia_dragomir_mod_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 130);
    info_clearchoices(72192);
    info_addchoice(72192, dialog_back, dia_dragomir_mod_teach_back);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_mod_teach_1h_1);
    info_addchoice(72192, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_mod_teach_1h_5);
};


func void dia_dragomir_mod_teachbow_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    info_clearchoices(72198);
    info_addchoice(72198, dialog_back, dia_dragomir_mod_teachbow_back);
    info_addchoice(72198, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dragomir_mod_teachbow_bow_1);
    info_addchoice(72198, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dragomir_mod_teachbow_bow_5);
};


func void dia_dragomir_mod_teachbow_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(72198);
    info_addchoice(72198, dialog_back, dia_dragomir_mod_teachbow_back);
    info_addchoice(72198, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dragomir_mod_teachbow_bow_1);
    info_addchoice(72198, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dragomir_mod_teachbow_bow_5);
};


func void dia_dragomir_mod_teachbow_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(72198);
    info_addchoice(72198, dialog_back, dia_dragomir_mod_teachbow_back);
    info_addchoice(72198, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dragomir_mod_teachbow_bow_1);
    info_addchoice(72198, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dragomir_mod_teachbow_bow_5);
};


func void dia_niclas_mod_teach_info() {
    ai_output(other, self, "DIA_Niclas_MOD_Teach_15_00");
    if(other.hitchance[3] >= 60) {
        ai_output(self, other, "DIA_Niclas_MOD_Teach_03_01");
    }
    else {
        info_clearchoices(72235);
        info_addchoice(72235, dialog_back, dia_niclas_mod_teach_back);
        info_addchoice(72235, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_mod_teach_bow_1);
        info_addchoice(72235, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_mod_teach_bow_5);
    };
};


func void dia_niclas_mod_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 60);
    info_clearchoices(72235);
    info_addchoice(72235, dialog_back, dia_niclas_mod_teach_back);
    info_addchoice(72235, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_mod_teach_bow_1);
    info_addchoice(72235, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_mod_teach_bow_5);
};


func void dia_niclas_mod_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 60);
    info_clearchoices(72235);
    info_addchoice(72235, dialog_back, dia_niclas_mod_teach_back);
    info_addchoice(72235, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_mod_teach_bow_1);
    info_addchoice(72235, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_mod_teach_bow_5);
};


func void dia_dragomir_teach_info() {
    ai_output(other, self, "DIA_Dragomir_Teach_15_00");
    info_clearchoices(74114);
    info_addchoice(74114, dialog_back, dia_dragomir_teach_back);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_teach_1h_1);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_teach_1h_5);
};


func void dia_dragomir_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 75);
    info_clearchoices(74114);
    info_addchoice(74114, dialog_back, dia_dragomir_teach_back);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_teach_1h_1);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_teach_1h_5);
};


func void dia_dragomir_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 75);
    info_clearchoices(74114);
    info_addchoice(74114, dialog_back, dia_dragomir_teach_back);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_dragomir_teach_1h_1);
    info_addchoice(74114, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_dragomir_teach_1h_5);
};


func void dia_niclas_teach_info() {
    ai_output(other, self, "DIA_Niclas_Teach_15_00");
    if(other.hitchance[3] >= 60) {
        ai_output(self, other, "DIA_Niclas_Teach_03_01");
    }
    else {
        info_clearchoices(74145);
        info_addchoice(74145, dialog_back, dia_niclas_teach_back);
        info_addchoice(74145, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_teach_bow_1);
        info_addchoice(74145, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_teach_bow_5);
    };
};


func void dia_niclas_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 60);
    info_clearchoices(74145);
    info_addchoice(74145, dialog_back, dia_niclas_teach_back);
    info_addchoice(74145, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_teach_bow_1);
    info_addchoice(74145, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_teach_bow_5);
};


func void dia_niclas_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 60);
    info_clearchoices(74145);
    info_addchoice(74145, dialog_back, dia_niclas_teach_back);
    info_addchoice(74145, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_niclas_teach_bow_1);
    info_addchoice(74145, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_niclas_teach_bow_5);
};


func void dia_drax_bow_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 120) {
        ai_output(self, other, "DIA_Drax_MOD_TeachBow_42_01");
    }
    else {
        info_clearchoices(74547);
        info_addchoice(74547, dialog_back, dia_drax_bow_teach_back);
        info_addchoice(74547, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_drax_bow_teach_bow_1);
        info_addchoice(74547, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_drax_bow_teach_bow_5);
    };
};


func void dia_drax_bow_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 120);
    info_clearchoices(74547);
    info_addchoice(74547, dialog_back, dia_drax_bow_teach_back);
    info_addchoice(74547, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_drax_bow_teach_bow_1);
    info_addchoice(74547, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_drax_bow_teach_bow_5);
};


func void dia_drax_bow_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 120);
    info_clearchoices(74547);
    info_addchoice(74547, dialog_back, dia_drax_bow_teach_back);
    info_addchoice(74547, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_drax_bow_teach_bow_1);
    info_addchoice(74547, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_drax_bow_teach_bow_5);
};


func void dia_zyon_teach_mana_info() {
    ai_output(other, self, "DIA_Tartaron_TEACH_MANA_15_00");
    info_clearchoices(75666);
    info_addchoice(75666, dialog_back, dia_zyon_teach_mana_back);
    info_addchoice(75666, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_zyon_teach_mana_1);
    info_addchoice(75666, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_zyon_teach_mana_5);
};


func void dia_zyon_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(75666);
    info_addchoice(75666, dialog_back, dia_zyon_teach_mana_back);
    info_addchoice(75666, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_zyon_teach_mana_1);
    info_addchoice(75666, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_zyon_teach_mana_5);
};


func void dia_zyon_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(75666);
    info_addchoice(75666, dialog_back, dia_zyon_teach_mana_back);
    info_addchoice(75666, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_zyon_teach_mana_1);
    info_addchoice(75666, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_zyon_teach_mana_5);
};


func void dia_ferros_teach_info() {
    ai_output(other, self, "DIA_Ferros_Teach_15_00");
    if(mis_ocgateopen == true) {
        ai_output(self, other, "DIA_Ferros_Teach_01_01");
    }
    else {
        ai_output(self, other, "DIA_Ferros_Teach_01_02");
        info_clearchoices(77433);
        info_addchoice(77433, dialog_back, dia_ferros_teach_back);
        info_addchoice(77433, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ferros_teach_str_1);
        info_addchoice(77433, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ferros_teach_str_5);
        info_addchoice(77433, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ferros_teach_dex_1);
        info_addchoice(77433, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ferros_teach_dex_5);
    };
};


func void dia_ferros_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_addchoice(77433, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ferros_teach_str_5);
};


func void dia_ferros_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_addchoice(77433, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ferros_teach_dex_5);
};


func void dia_grant_teachkraft_info() {
    ai_output(other, self, "DIA_Grant_TeachKraft_15_00");
    grant_merke_str = other.attribute[4];
    info_clearchoices(77789);
    info_addchoice(77789, dialog_back, dia_grant_teachkraft_back);
    info_addchoice(77789, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_grant_teachkraft_str_1);
    info_addchoice(77789, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_grant_teachkraft_str_5);
};


func void dia_grant_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(77789);
    info_addchoice(77789, dialog_back, dia_grant_teachkraft_back);
    info_addchoice(77789, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_grant_teachkraft_str_1);
    info_addchoice(77789, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_grant_teachkraft_str_5);
};


func void dia_grant_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(77789);
    info_addchoice(77789, dialog_back, dia_grant_teachkraft_back);
    info_addchoice(77789, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_grant_teachkraft_str_1);
    info_addchoice(77789, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_grant_teachkraft_str_5);
};


func void dia_wambek_teachbow_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 130) {
        ai_output(self, other, "DIA_Wambek_TeachBow_18_01");
    }
    else {
        info_clearchoices(79102);
        info_addchoice(79102, dialog_back, dia_wambek_teach_back);
        info_addchoice(79102, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_wambek_teachbow_bow_1);
        info_addchoice(79102, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_wambek_teachbow_bow_5);
    };
};


func void dia_wambek_teachbow_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(79102);
    info_addchoice(79102, dialog_back, dia_wambek_teachbow_back);
    info_addchoice(79102, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_wambek_teachbow_bow_1);
    info_addchoice(79102, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_wambek_teachbow_bow_5);
};


func void dia_wambek_teachbow_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(79102);
    info_addchoice(79102, dialog_back, dia_wambek_teachbow_back);
    info_addchoice(79102, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_wambek_teachbow_bow_1);
    info_addchoice(79102, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_wambek_teachbow_bow_5);
};


func void dia_almansor_teach_mana_info() {
    ai_output(other, self, "DIA_Almansor_TEACH_MANA_15_00");
    info_clearchoices(79733);
    info_addchoice(79733, dialog_back, dia_almansor_teach_mana_back);
    info_addchoice(79733, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_almansor_teach_mana_1);
    info_addchoice(79733, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_almansor_teach_mana_5);
};


func void dia_almansor_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(79733);
    info_addchoice(79733, dialog_back, dia_almansor_teach_mana_back);
    info_addchoice(79733, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_almansor_teach_mana_1);
    info_addchoice(79733, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_almansor_teach_mana_5);
};


func void dia_almansor_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(79733);
    info_addchoice(79733, dialog_back, dia_almansor_teach_mana_back);
    info_addchoice(79733, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_almansor_teach_mana_1);
    info_addchoice(79733, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_almansor_teach_mana_5);
};


func void dia_tartaron_teach_mana_info() {
    ai_output(other, self, "DIA_Tartaron_TEACH_MANA_15_00");
    info_clearchoices(79884);
    info_addchoice(79884, dialog_back, dia_tartaron_teach_mana_back);
    info_addchoice(79884, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_tartaron_teach_mana_1);
    info_addchoice(79884, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_tartaron_teach_mana_5);
};


func void dia_tartaron_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(79884);
    info_addchoice(79884, dialog_back, dia_tartaron_teach_mana_back);
    info_addchoice(79884, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_tartaron_teach_mana_1);
    info_addchoice(79884, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_tartaron_teach_mana_5);
};


func void dia_tartaron_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(79884);
    info_addchoice(79884, dialog_back, dia_tartaron_teach_mana_back);
    info_addchoice(79884, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_tartaron_teach_mana_1);
    info_addchoice(79884, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_tartaron_teach_mana_5);
};


func void dia_belasar_teach_mana_info() {
    ai_output(other, self, "DIA_Belasar_TEACH_MANA_15_00");
    info_clearchoices(80106);
    info_addchoice(80106, dialog_back, dia_belasar_teach_mana_back);
    info_addchoice(80106, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_belasar_teach_mana_1);
    info_addchoice(80106, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_belasar_teach_mana_5);
};


func void dia_belasar_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_high);
    info_clearchoices(80106);
    info_addchoice(80106, dialog_back, dia_belasar_teach_mana_back);
    info_addchoice(80106, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_belasar_teach_mana_1);
    info_addchoice(80106, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_belasar_teach_mana_5);
};


func void dia_belasar_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_high);
    info_clearchoices(80106);
    info_addchoice(80106, dialog_back, dia_belasar_teach_mana_back);
    info_addchoice(80106, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_belasar_teach_mana_1);
    info_addchoice(80106, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_belasar_teach_mana_5);
};


func void dia_aramis_teach_info() {
    ai_output(other, self, "DIA_Hero_TEACHDEX_15_00");
    info_clearchoices(80843);
    info_addchoice(80843, dialog_back, dia_aramis_teach_back);
    info_addchoice(80843, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_aramis_teach_1);
    info_addchoice(80843, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_aramis_teach_5);
};


func void dia_aramis_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(80843);
    info_addchoice(80843, dialog_back, dia_aramis_teach_back);
    info_addchoice(80843, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_aramis_teach_1);
    info_addchoice(80843, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_aramis_teach_5);
};


func void dia_aramis_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(80843);
    info_addchoice(80843, dialog_back, dia_aramis_teach_back);
    info_addchoice(80843, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_aramis_teach_1);
    info_addchoice(80843, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_aramis_teach_5);
};


func void dia_turan_teach_info() {
    ai_output(other, self, "DIA_Hero_Kraft_15_00");
    if(npc_knowsinfo(other, 81315) && (npc_hasitems(hero, itmi_gold) >= 50)) {
        turan_merke_str = other.attribute[4];
        info_clearchoices(81319);
        info_addchoice(81319, dialog_back, dia_turan_teach_back);
        info_addchoice(81319, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_turan_teach_str_1);
        info_addchoice(81319, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_turan_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Turan_Teach_10_01");
        ai_output(self, other, "DIA_Turan_Teach_10_02");
    };
};


func void dia_turan_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(81319);
    info_addchoice(81319, dialog_back, dia_turan_teach_back);
    info_addchoice(81319, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_turan_teach_str_1);
    info_addchoice(81319, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_turan_teach_str_5);
};


func void dia_turan_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    b_giveinvitems(other, self, 34244, 250);
    info_clearchoices(81319);
    info_addchoice(81319, dialog_back, dia_turan_teach_back);
    info_addchoice(81319, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_turan_teach_str_1);
    info_addchoice(81319, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_turan_teach_str_5);
};


func void dia_rocco_teach_info() {
    ai_output(other, self, "DIA_HERO_Train_DEX_15_01");
    if(npc_knowsinfo(other, 81602) && (npc_hasitems(hero, itmi_gold) >= 50)) {
        rocco_merke_dex = other.attribute[5];
        info_clearchoices(81606);
        info_addchoice(81606, dialog_back, dia_rocco_teach_back);
        info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_rocco_teach_dex_1);
        info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_rocco_teach_dex_5);
    }
    else {
        ai_output(self, other, "DIA_Rocco_Teach_12_01");
        ai_output(self, other, "DIA_Rocco_Teach_12_02");
    };
};


func void dia_rocco_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(81606);
    info_addchoice(81606, dialog_back, dia_rocco_teach_back);
    info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_rocco_teach_dex_1);
    info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_rocco_teach_dex_5);
};


func void dia_rocco_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(81606);
    info_addchoice(81606, dialog_back, dia_rocco_teach_back);
    info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_rocco_teach_dex_1);
    info_addchoice(81606, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_rocco_teach_dex_5);
};


func void dia_mahmud_teach_info() {
    ai_output(other, self, "DIA_Hero_Kraft_15_00");
    if(npc_knowsinfo(other, 82121) && (npc_hasitems(hero, itmi_gold) >= 50)) {
        mahmud_merke_str = other.attribute[4];
        info_clearchoices(82125);
        info_addchoice(82125, dialog_back, dia_mahmud_teach_back);
        info_addchoice(82125, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_mahmud_teach_str_1);
        info_addchoice(82125, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_mahmud_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Mahmud_Teach_01_01");
        ai_output(self, other, "DIA_Mahmud_Teach_01_02");
    };
};


func void dia_mahmud_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(82125);
    info_addchoice(82125, dialog_back, dia_mahmud_teach_back);
    info_addchoice(82125, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_mahmud_teach_str_1);
    info_addchoice(82125, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_mahmud_teach_str_5);
};


func void dia_mahmud_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    b_giveinvitems(other, self, 34244, 250);
    info_clearchoices(82125);
    info_addchoice(82125, dialog_back, dia_mahmud_teach_back);
    info_addchoice(82125, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_mahmud_teach_str_1);
    info_addchoice(82125, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_mahmud_teach_str_5);
};


func void dia_sarbos_teach_info() {
    ai_output(other, self, "DIA_Hero_Faehigkeiten_15_01");
    if(npc_knowsinfo(other, 82354) && (npc_hasitems(hero, itmi_gold) >= 50)) {
        sarbos_merke_str = other.attribute[4];
        sarbos_merke_dex = other.attribute[5];
        info_clearchoices(82357);
        info_addchoice(82357, dialog_back, dia_sarbos_teach_back);
        info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_sarbos_teach_dex_1);
        info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_sarbos_teach_dex_5);
        info_addchoice(82357, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_sarbos_teach_str_1);
        info_addchoice(82357, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_sarbos_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Sarbos_Teach_10_01");
        ai_output(self, other, "DIA_Sarbos_Teach_10_02");
    };
};


func void dia_sarbos_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(82357);
    info_addchoice(82357, dialog_back, dia_sarbos_teach_back);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_sarbos_teach_dex_1);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_sarbos_teach_dex_5);
    info_addchoice(82357, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_sarbos_teach_str_1);
    info_addchoice(82357, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_sarbos_teach_str_5);
};


func void dia_sarbos_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    b_giveinvitems(other, self, 34244, 250);
    info_clearchoices(82357);
    info_addchoice(82357, dialog_back, dia_sarbos_teach_back);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_sarbos_teach_dex_1);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_sarbos_teach_dex_5);
    info_addchoice(82357, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_sarbos_teach_str_1);
    info_addchoice(82357, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_sarbos_teach_str_5);
};


func void dia_sarbos_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(82357);
    info_addchoice(82357, dialog_back, dia_sarbos_teach_back);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_sarbos_teach_dex_1);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_sarbos_teach_dex_5);
    info_addchoice(82357, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_sarbos_teach_str_1);
    info_addchoice(82357, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_sarbos_teach_str_5);
};


func void dia_sarbos_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(82357);
    info_addchoice(82357, dialog_back, dia_sarbos_teach_back);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_sarbos_teach_dex_1);
    info_addchoice(82357, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_sarbos_teach_dex_5);
    info_addchoice(82357, b_buildlearnstring("St�rke + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_sarbos_teach_str_1);
    info_addchoice(82357, b_buildlearnstring("St�rke + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_sarbos_teach_str_5);
};


func void dia_ortega_teachkraft_info() {
    ai_output(other, self, "DIA_HERO_Train_STR_15_01");
    if(ortegabezahlt == true) {
        ortega_merke_str = other.attribute[4];
        info_clearchoices(83232);
        info_addchoice(83232, dialog_back, dia_ortega_teachkraft_back);
        info_addchoice(83232, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ortega_teachkraft_str_1);
        info_addchoice(83232, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ortega_teachkraft_str_5);
    }
    else if(ortegabezahlt == false) {
        ai_output(self, other, "DIA_Ortega_TeachKraft_01_01");
    };
};


func void dia_ortega_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(83232);
    info_addchoice(83232, dialog_back, dia_ortega_teachkraft_back);
    info_addchoice(83232, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ortega_teachkraft_str_1);
    info_addchoice(83232, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ortega_teachkraft_str_5);
};


func void dia_ortega_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(83232);
    info_addchoice(83232, dialog_back, dia_ortega_teachkraft_back);
    info_addchoice(83232, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ortega_teachkraft_str_1);
    info_addchoice(83232, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ortega_teachkraft_str_5);
};


func void dia_bahal_teach_info() {
    ai_output(other, self, "DIA_Bahal_Teach_15_00");
    if(npc_knowsinfo(other, 84408) && (npc_hasitems(hero, itmi_gold) >= 50)) {
        bahal_merke_dex = other.attribute[5];
        info_clearchoices(84412);
        info_addchoice(84412, dialog_back, dia_bahal_teach_back);
        info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_bahal_teach_dex_1);
        info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_bahal_teach_dex_5);
    }
    else {
        ai_output(self, other, "DIA_Bahal_Teach_10_01");
        ai_output(self, other, "DIA_Bahal_Teach_10_02");
    };
};


func void dia_bahal_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(84412);
    info_addchoice(84412, dialog_back, dia_bahal_teach_back);
    info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_bahal_teach_dex_1);
    info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_bahal_teach_dex_5);
};


func void dia_bahal_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    b_giveinvitems(other, self, 34244, 250);
    info_clearchoices(84412);
    info_addchoice(84412, dialog_back, dia_bahal_teach_back);
    info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_bahal_teach_dex_1);
    info_addchoice(84412, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 250 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_bahal_teach_dex_5);
};


func void dia_herrmann_bow_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 140) {
        ai_output(self, other, "DIA_Herrmann_MOD_TeachBow_13_01");
    }
    else {
        info_clearchoices(85644);
        info_addchoice(85644, dialog_back, dia_herrmann_bow_teach_back);
        info_addchoice(85644, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_herrmann_bow_teach_bow_1);
        info_addchoice(85644, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_herrmann_bow_teach_bow_5);
    };
};


func void dia_herrmann_bow_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 140);
    info_clearchoices(85644);
    info_addchoice(85644, dialog_back, dia_herrmann_bow_teach_back);
    info_addchoice(85644, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_herrmann_bow_teach_bow_1);
    info_addchoice(85644, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_herrmann_bow_teach_bow_5);
};


func void dia_herrmann_bow_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 140);
    info_clearchoices(85644);
    info_addchoice(85644, dialog_back, dia_herrmann_bow_teach_back);
    info_addchoice(85644, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_herrmann_bow_teach_bow_1);
    info_addchoice(85644, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_herrmann_bow_teach_bow_5);
};


func void dia_ignatius_mod_teach_mana_info() {
    ai_output(other, self, "DIA_Parlan_Mod_TEACH_MANA_15_00");
    info_clearchoices(85727);
    info_addchoice(85727, dialog_back, dia_ignatius_mod_teach_mana_back);
    info_addchoice(85727, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_ignatius_mod_teach_mana_1);
    info_addchoice(85727, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_ignatius_mod_teach_mana_5);
};


func void dia_ignatius_mod_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(85727);
    info_addchoice(85727, dialog_back, dia_ignatius_mod_teach_mana_back);
    info_addchoice(85727, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_ignatius_mod_teach_mana_1);
    info_addchoice(85727, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_ignatius_mod_teach_mana_5);
};


func void dia_ignatius_mod_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(85727);
    info_addchoice(85727, dialog_back, dia_ignatius_mod_teach_mana_back);
    info_addchoice(85727, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_ignatius_mod_teach_mana_1);
    info_addchoice(85727, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_ignatius_mod_teach_mana_5);
};


func void dia_karolix_mod_teach_mana_info() {
    ai_output(other, self, "DIA_Parlan_Mod_TEACH_MANA_15_00");
    info_clearchoices(86123);
    info_addchoice(86123, dialog_back, dia_karolix_mod_teach_mana_back);
    info_addchoice(86123, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karolix_mod_teach_mana_1);
    info_addchoice(86123, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karolix_mod_teach_mana_5);
};


func void dia_karolix_mod_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(86123);
    info_addchoice(86123, dialog_back, dia_karolix_mod_teach_mana_back);
    info_addchoice(86123, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karolix_mod_teach_mana_1);
    info_addchoice(86123, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karolix_mod_teach_mana_5);
};


func void dia_karolix_mod_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(86123);
    info_addchoice(86123, dialog_back, dia_karolix_mod_teach_mana_back);
    info_addchoice(86123, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karolix_mod_teach_mana_1);
    info_addchoice(86123, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karolix_mod_teach_mana_5);
};


func void dia_k3_391_niko_teach_info() {
    ai_output(other, self, "DIA_Niclas_MOD_Teach_15_00");
    if(other.hitchance[3] >= 100) {
        ai_output(self, other, "DIA_k3_391_niko_Teach_13_01");
    }
    else {
        info_clearchoices(86379);
        info_addchoice(86379, dialog_back, dia_k3_391_niko_teach_back);
        info_addchoice(86379, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_k3_391_niko_teach_bow_1);
        info_addchoice(86379, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_k3_391_niko_teach_bow_5);
    };
};


func void dia_k3_391_niko_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(86379);
    info_addchoice(86379, dialog_back, dia_k3_391_niko_teach_back);
    info_addchoice(86379, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_k3_391_niko_teach_bow_1);
    info_addchoice(86379, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_k3_391_niko_teach_bow_5);
};


func void dia_k3_391_niko_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(86379);
    info_addchoice(86379, dialog_back, dia_k3_391_niko_teach_back);
    info_addchoice(86379, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_k3_391_niko_teach_bow_1);
    info_addchoice(86379, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_k3_391_niko_teach_bow_5);
};


func void dia_pyrokar_mod_teach_mana_info() {
    ai_output(other, self, "DIA_Pyrokar_MOD_TEACH_MANA_15_00");
    info_clearchoices(86485);
    info_addchoice(86485, dialog_back, dia_pyrokar_mod_teach_mana_back);
    info_addchoice(86485, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_mod_teach_mana_1);
    info_addchoice(86485, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_mod_teach_mana_5);
};


func void dia_pyrokar_mod_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(86485);
    info_addchoice(86485, dialog_back, dia_pyrokar_mod_teach_mana_back);
    info_addchoice(86485, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_mod_teach_mana_1);
    info_addchoice(86485, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_mod_teach_mana_5);
};


func void dia_pyrokar_mod_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(86485);
    info_addchoice(86485, dialog_back, dia_pyrokar_mod_teach_mana_back);
    info_addchoice(86485, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_mod_teach_mana_1);
    info_addchoice(86485, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_mod_teach_mana_5);
};


func void dia_parlan_mod_teach_mana_info() {
    ai_output(other, self, "DIA_Parlan_Mod_TEACH_MANA_15_00");
    info_clearchoices(86621);
    info_addchoice(86621, dialog_back, dia_parlan_mod_teach_mana_back);
    info_addchoice(86621, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_mod_teach_mana_1);
    info_addchoice(86621, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_mod_teach_mana_5);
};


func void dia_parlan_mod_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(86621);
    info_addchoice(86621, dialog_back, dia_parlan_mod_teach_mana_back);
    info_addchoice(86621, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_mod_teach_mana_1);
    info_addchoice(86621, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_mod_teach_mana_5);
};


func void dia_parlan_mod_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(86621);
    info_addchoice(86621, dialog_back, dia_parlan_mod_teach_mana_back);
    info_addchoice(86621, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_mod_teach_mana_1);
    info_addchoice(86621, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_mod_teach_mana_5);
};


func void dia_karrypto_mod_teach_mana_info() {
    ai_output(other, self, "DIA_Pyrokar_MOD_TEACH_MANA_15_00");
    info_clearchoices(86948);
    info_addchoice(86948, dialog_back, dia_karrypto_mod_teach_mana_back);
    info_addchoice(86948, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karrypto_mod_teach_mana_1);
    info_addchoice(86948, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karrypto_mod_teach_mana_5);
};


func void dia_karrypto_mod_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(86948);
    info_addchoice(86948, dialog_back, dia_karrypto_mod_teach_mana_back);
    info_addchoice(86948, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karrypto_mod_teach_mana_1);
    info_addchoice(86948, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karrypto_mod_teach_mana_5);
};


func void dia_karrypto_mod_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(86948);
    info_addchoice(86948, dialog_back, dia_karrypto_mod_teach_mana_back);
    info_addchoice(86948, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_karrypto_mod_teach_mana_1);
    info_addchoice(86948, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_karrypto_mod_teach_mana_5);
};


func void dia_seiankdf_teach_mana_info() {
    ai_output(other, self, "DIA_Tartaron_TEACH_MANA_15_00");
    info_clearchoices(87046);
    info_addchoice(87046, dialog_back, dia_seiankdf_teach_mana_back);
    info_addchoice(87046, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seiankdf_teach_mana_1);
    info_addchoice(87046, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seiankdf_teach_mana_5);
};


func void dia_seiankdf_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(87046);
    info_addchoice(87046, dialog_back, dia_seiankdf_teach_mana_back);
    info_addchoice(87046, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seiankdf_teach_mana_1);
    info_addchoice(87046, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seiankdf_teach_mana_5);
};


func void dia_seiankdf_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(87046);
    info_addchoice(87046, dialog_back, dia_seiankdf_teach_mana_back);
    info_addchoice(87046, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seiankdf_teach_mana_1);
    info_addchoice(87046, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seiankdf_teach_mana_5);
};


func void dia_seianathanoskap6_teach_mana_info() {
    ai_output(other, self, "DIA_Tartaron_TEACH_MANA_15_00");
    info_clearchoices(87166);
    info_addchoice(87166, dialog_back, dia_seianathanoskap6_teach_mana_back);
    info_addchoice(87166, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seianathanoskap6_teach_mana_1);
    info_addchoice(87166, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seianathanoskap6_teach_mana_5);
};


func void dia_seianathanoskap6_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(87166);
    info_addchoice(87166, dialog_back, dia_seianathanoskap6_teach_mana_back);
    info_addchoice(87166, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seianathanoskap6_teach_mana_1);
    info_addchoice(87166, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seianathanoskap6_teach_mana_5);
};


func void dia_seianathanoskap6_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(87166);
    info_addchoice(87166, dialog_back, dia_seianathanoskap6_teach_mana_back);
    info_addchoice(87166, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seianathanoskap6_teach_mana_1);
    info_addchoice(87166, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seianathanoskap6_teach_mana_5);
};


func void dia_pyrokar_teach_mana_info() {
    ai_output(other, self, "DIA_Pyrokar_TEACH_MANA_15_00");
    info_clearchoices(87258);
    info_addchoice(87258, dialog_back, dia_pyrokar_teach_mana_back);
    info_addchoice(87258, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_teach_mana_1);
    info_addchoice(87258, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_teach_mana_5);
};


func void dia_pyrokar_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(87258);
    info_addchoice(87258, dialog_back, dia_pyrokar_teach_mana_back);
    info_addchoice(87258, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_teach_mana_1);
    info_addchoice(87258, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_teach_mana_5);
};


func void dia_pyrokar_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(87258);
    info_addchoice(87258, dialog_back, dia_pyrokar_teach_mana_back);
    info_addchoice(87258, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_pyrokar_teach_mana_1);
    info_addchoice(87258, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_pyrokar_teach_mana_5);
};


func void dia_parlan_teach_mana_info() {
    ai_output(other, self, "DIA_Parlan_TEACH_MANA_15_00");
    info_clearchoices(87652);
    info_addchoice(87652, dialog_back, dia_parlan_teach_mana_back);
    info_addchoice(87652, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_teach_mana_1);
    info_addchoice(87652, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_teach_mana_5);
};


func void dia_parlan_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(87652);
    info_addchoice(87652, dialog_back, dia_parlan_teach_mana_back);
    info_addchoice(87652, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_teach_mana_1);
    info_addchoice(87652, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_teach_mana_5);
};


func void dia_parlan_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(87652);
    info_addchoice(87652, dialog_back, dia_parlan_teach_mana_back);
    info_addchoice(87652, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_parlan_teach_mana_1);
    info_addchoice(87652, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_parlan_teach_mana_5);
};


func void dia_wulfias_teach_kho_gesundheit_info() {
    ai_output(other, self, "DIA_Hero_TEACH_PermHealth_15_00");
    info_clearchoices(88213);
    info_addchoice(88213, dialog_back, dia_wulfias_teach_kho_gesundheit_back);
    info_addchoice(88213, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_kho_gesundheit_1);
    info_addchoice(88213, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_kho_gesundheit_5);
};


func void dia_wulfias_teach_kho_gesundheit_1() {
    if((hero.lp >= 1) && (other.attribute[1] <= t_god)) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_4);
        npc_changeattribute(other, atr_hitpoints, hpmax_4);
        hero.lp = hero.lp - 1;
        info_clearchoices(88213);
        info_addchoice(88213, dialog_back, dia_wulfias_teach_kho_gesundheit_back);
        info_addchoice(88213, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_kho_gesundheit_1);
        info_addchoice(88213, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_kho_gesundheit_5);
    }
    else if((hero.lp <= 1) && (other.attribute[1] <= t_god)) {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void dia_wulfias_teach_kho_gesundheit_5() {
    if((hero.lp >= 5) && (other.attribute[1] <= t_god)) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_20);
        npc_changeattribute(other, atr_hitpoints, hpmax_20);
        hero.lp = hero.lp - 5;
        info_clearchoices(88213);
        info_addchoice(88213, dialog_back, dia_wulfias_teach_kho_gesundheit_back);
        info_addchoice(88213, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_kho_gesundheit_1);
        info_addchoice(88213, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_kho_gesundheit_5);
    }
    else if((hero.lp <= 5) && (other.attribute[1] <= t_god)) {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void dia_wulfias_teach_kho_mana_info() {
    ai_output(other, self, "DIA_Hero_TEACH_MANA_15_00");
    info_clearchoices(88219);
    info_addchoice(88219, dialog_back, dia_wulfias_teach_kho_mana_back);
    info_addchoice(88219, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_kho_mana_1);
    info_addchoice(88219, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_kho_mana_5);
};


func void dia_wulfias_teach_kho_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(88219);
    info_addchoice(88219, dialog_back, dia_wulfias_teach_kho_mana_back);
    info_addchoice(88219, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_kho_mana_1);
    info_addchoice(88219, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_kho_mana_5);
};


func void dia_wulfias_teach_kho_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(88219);
    info_addchoice(88219, dialog_back, dia_wulfias_teach_kho_mana_back);
    info_addchoice(88219, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_kho_mana_1);
    info_addchoice(88219, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_kho_mana_5);
};


func void dia_wulfias_teach_mana_info() {
    ai_output(other, self, "DIA_Hero_TEACH_MANA_15_00");
    info_clearchoices(88354);
    info_addchoice(88354, dialog_back, dia_wulfias_teach_mana_back);
    info_addchoice(88354, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_mana_1);
    info_addchoice(88354, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_mana_5);
};


func void dia_wulfias_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(88354);
    info_addchoice(88354, dialog_back, dia_wulfias_teach_mana_back);
    info_addchoice(88354, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_mana_1);
    info_addchoice(88354, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_mana_5);
};


func void dia_wulfias_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(88354);
    info_addchoice(88354, dialog_back, dia_wulfias_teach_mana_back);
    info_addchoice(88354, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_wulfias_teach_mana_1);
    info_addchoice(88354, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_wulfias_teach_mana_5);
};


func void dia_wulfias_teach_gesundheit_info() {
    ai_output(other, self, "DIA_Hero_TEACH_PermHealth_15_00");
    info_clearchoices(88418);
    info_addchoice(88418, dialog_back, dia_wulfias_teach_gesundheit_back);
    info_addchoice(88418, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_gesundheit_1);
    info_addchoice(88418, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_gesundheit_5);
};


func void dia_wulfias_teach_gesundheit_1() {
    if((hero.lp >= 1) && (other.attribute[1] <= t_god)) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_4);
        npc_changeattribute(other, atr_hitpoints, hpmax_4);
        hero.lp = hero.lp - 1;
        info_clearchoices(88418);
        info_addchoice(88418, dialog_back, dia_wulfias_teach_gesundheit_back);
        info_addchoice(88418, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_gesundheit_1);
        info_addchoice(88418, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_gesundheit_5);
    }
    else if((hero.lp <= 1) && (other.attribute[1] <= t_god)) {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void dia_wulfias_teach_gesundheit_5() {
    if((hero.lp >= 5) && (other.attribute[1] <= t_god)) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_20);
        npc_changeattribute(other, atr_hitpoints, hpmax_20);
        hero.lp = hero.lp - 5;
        info_clearchoices(88418);
        info_addchoice(88418, dialog_back, dia_wulfias_teach_gesundheit_back);
        info_addchoice(88418, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_wulfias_teach_gesundheit_1);
        info_addchoice(88418, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_wulfias_teach_gesundheit_5);
    }
    else if((hero.lp <= 5) && (other.attribute[1] <= t_god)) {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void dia_merkurius_teach_mana_info() {
    ai_output(other, self, "DIA_Merkurius_TEACH_MANA_15_00");
    info_clearchoices(88774);
    info_addchoice(88774, dialog_back, dia_merkurius_teach_mana_back);
    info_addchoice(88774, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_merkurius_teach_mana_1);
    info_addchoice(88774, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_merkurius_teach_mana_5);
};


func void dia_merkurius_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(88774);
    info_addchoice(88774, dialog_back, dia_merkurius_teach_mana_back);
    info_addchoice(88774, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_merkurius_teach_mana_1);
    info_addchoice(88774, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_merkurius_teach_mana_5);
};


func void dia_merkurius_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(88774);
    info_addchoice(88774, dialog_back, dia_merkurius_teach_mana_back);
    info_addchoice(88774, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_merkurius_teach_mana_1);
    info_addchoice(88774, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_merkurius_teach_mana_5);
};


func void dia_mortis_teach_info() {
    ai_output(other, self, "DIA_Mortis_Teach_15_00");
    info_clearchoices(90201);
    info_addchoice(90201, dialog_back, dia_mortis_teach_back);
    info_addchoice(90201, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_teach_1);
    info_addchoice(90201, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_teach_5);
};


func void dia_mortis_teach_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_low);
    info_clearchoices(90201);
    info_addchoice(90201, dialog_back, dia_mortis_teach_back);
    info_addchoice(90201, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_teach_1);
    info_addchoice(90201, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_teach_5);
};


func void dia_mortis_teach_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_low);
    info_clearchoices(90201);
    info_addchoice(90201, dialog_back, dia_mortis_teach_back);
    info_addchoice(90201, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_teach_1);
    info_addchoice(90201, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_teach_5);
};


func void dia_ruga_teachdex_info() {
    ai_output(other, self, "DIA_Ruga_TEACHDEX_15_00");
    info_clearchoices(90254);
    info_addchoice(90254, dialog_back, dia_ruga_teachdex_back);
    info_addchoice(90254, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_teachdex_1);
    info_addchoice(90254, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_teachdex_5);
};


func void dia_ruga_teachdex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_low);
    info_clearchoices(90254);
    info_addchoice(90254, dialog_back, dia_ruga_teachdex_back);
    info_addchoice(90254, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_teachdex_1);
    info_addchoice(90254, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_teachdex_5);
};


func void dia_ruga_teachdex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_low);
    info_clearchoices(90254);
    info_addchoice(90254, dialog_back, dia_ruga_teachdex_back);
    info_addchoice(90254, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_teachdex_1);
    info_addchoice(90254, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_teachdex_5);
};


func void dia_mortis_mod_teach_info() {
    ai_output(other, self, "DIA_Mortis_Mod_Teach_15_00");
    info_clearchoices(90794);
    info_addchoice(90794, dialog_back, dia_mortis_mod_teach_back);
    info_addchoice(90794, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_mod_teach_1);
    info_addchoice(90794, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_mod_teach_5);
};


func void dia_mortis_mod_teach_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_low);
    info_clearchoices(90794);
    info_addchoice(90794, dialog_back, dia_mortis_mod_teach_back);
    info_addchoice(90794, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_mod_teach_1);
    info_addchoice(90794, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_mod_teach_5);
};


func void dia_mortis_mod_teach_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_low);
    info_clearchoices(90794);
    info_addchoice(90794, dialog_back, dia_mortis_mod_teach_back);
    info_addchoice(90794, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mortis_mod_teach_1);
    info_addchoice(90794, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mortis_mod_teach_5);
};


func void dia_ruga_mod_teachdex_info() {
    ai_output(other, self, "DIA_Ruga_Mod_TEACHDEX_15_00");
    info_clearchoices(90918);
    info_addchoice(90918, dialog_back, dia_ruga_mod_teachdex_back);
    info_addchoice(90918, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_mod_teachdex_1);
    info_addchoice(90918, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_mod_teachdex_5);
};


func void dia_ruga_mod_teachdex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_low);
    info_clearchoices(90918);
    info_addchoice(90918, dialog_back, dia_ruga_mod_teachdex_back);
    info_addchoice(90918, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_mod_teachdex_1);
    info_addchoice(90918, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_mod_teachdex_5);
};


func void dia_ruga_mod_teachdex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_low);
    info_clearchoices(90918);
    info_addchoice(90918, dialog_back, dia_ruga_mod_teachdex_back);
    info_addchoice(90918, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_ruga_mod_teachdex_1);
    info_addchoice(90918, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_ruga_mod_teachdex_5);
};


func void dia_halvar_teach_info() {
    ai_output(other, self, "DIA_Halvar_Teach_15_00");
    if((other.guild == gil_mil) || (other.guild == gil_pal) || (other.guild == gil_none)) {
        halvar_merke_str = other.attribute[4];
        halvar_merke_dex = other.attribute[5];
        info_clearchoices(91509);
        info_addchoice(91509, dialog_back, dia_halvar_teach_back);
        info_addchoice(91509, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_teach_dex_1);
        info_addchoice(91509, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_teach_dex_5);
        info_addchoice(91509, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_teach_str_1);
        info_addchoice(91509, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Halvar_Teach_43_01");
        ai_output(self, other, "DIA_Halvar_Teach_43_02");
    };
};


func void dia_halvar_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(91509);
    info_addchoice(91509, dialog_back, dia_halvar_teach_back);
    info_addchoice(91509, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_teach_dex_1);
    info_addchoice(91509, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_teach_dex_5);
    info_addchoice(91509, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_teach_str_1);
    info_addchoice(91509, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_teach_str_5);
};


func void dia_halvar_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(91509);
    info_addchoice(91509, dialog_back, dia_halvar_teach_back);
    info_addchoice(91509, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_teach_dex_1);
    info_addchoice(91509, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_teach_dex_5);
    info_addchoice(91509, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_teach_str_1);
    info_addchoice(91509, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_teach_str_5);
};


func void dia_halvar_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(91509);
    info_addchoice(91509, dialog_back, dia_halvar_teach_back);
    info_addchoice(91509, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_teach_dex_1);
    info_addchoice(91509, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_teach_dex_5);
    info_addchoice(91509, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_teach_str_1);
    info_addchoice(91509, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_teach_str_5);
};


func void dia_halvar_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(91509);
    info_addchoice(91509, dialog_back, dia_halvar_teach_back);
    info_addchoice(91509, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_teach_dex_1);
    info_addchoice(91509, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_teach_dex_5);
    info_addchoice(91509, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_teach_str_1);
    info_addchoice(91509, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_teach_str_5);
};


func void dia_bruno_teachkraft_info() {
    ai_output(other, self, "DIA_Bruno_TeachKraft_15_00");
    if((other.guild == gil_mil) || (other.guild == gil_pal) || (other.guild == gil_none)) {
        bruno_merke_str = other.attribute[4];
        bruno_merke_dex = other.attribute[5];
        info_clearchoices(92996);
        info_addchoice(92996, dialog_back, dia_bruno_teachkraft_back);
        info_addchoice(92996, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_bruno_teachkraft_dex_1);
        info_addchoice(92996, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_bruno_teachkraft_dex_5);
        info_addchoice(92996, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bruno_teachkraft_str_1);
        info_addchoice(92996, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bruno_teachkraft_str_5);
    }
    else {
        ai_output(self, other, "DIA_Bruno_TeachKraft_09_01");
        ai_output(self, other, "DIA_Bruno_TeachKraft_09_02");
    };
};


func void dia_bruno_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(92996);
    info_addchoice(92996, dialog_back, dia_bruno_teachkraft_back);
    info_addchoice(92996, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_bruno_teachkraft_dex_1);
    info_addchoice(92996, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_bruno_teachkraft_dex_5);
    info_addchoice(92996, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bruno_teachkraft_str_1);
    info_addchoice(92996, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bruno_teachkraft_str_5);
};


func void dia_bruno_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(92996);
    info_addchoice(92996, dialog_back, dia_bruno_teachkraft_back);
    info_addchoice(92996, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_bruno_teachkraft_dex_1);
    info_addchoice(92996, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_bruno_teachkraft_dex_5);
    info_addchoice(92996, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bruno_teachkraft_str_1);
    info_addchoice(92996, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bruno_teachkraft_str_5);
};


func void dia_bruno_teachkraft_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(92996);
    info_addchoice(92996, dialog_back, dia_bruno_teachkraft_back);
    info_addchoice(92996, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_bruno_teachkraft_dex_1);
    info_addchoice(92996, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_bruno_teachkraft_dex_5);
    info_addchoice(92996, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bruno_teachkraft_str_1);
    info_addchoice(92996, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bruno_teachkraft_str_5);
};


func void dia_bruno_teachkraft_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(92996);
    info_addchoice(92996, dialog_back, dia_bruno_teachkraft_back);
    info_addchoice(92996, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_bruno_teachkraft_dex_1);
    info_addchoice(92996, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_bruno_teachkraft_dex_5);
    info_addchoice(92996, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bruno_teachkraft_str_1);
    info_addchoice(92996, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bruno_teachkraft_str_5);
};


func void dia_halvar_kho_teach_info() {
    ai_output(other, self, "DIA_Halvar_Teach_15_00");
    if((other.guild == gil_mil) || (other.guild == gil_pal) || (other.guild == gil_none)) {
        halvar_kho_merke_str = other.attribute[4];
        halvar_kho_merke_dex = other.attribute[5];
        info_clearchoices(93249);
        info_addchoice(93249, dialog_back, dia_halvar_kho_teach_back);
        info_addchoice(93249, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_kho_teach_dex_1);
        info_addchoice(93249, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_kho_teach_dex_5);
        info_addchoice(93249, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_kho_teach_str_1);
        info_addchoice(93249, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_kho_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Halvar_Teach_43_01");
        ai_output(self, other, "DIA_Halvar_Teach_43_02");
    };
};


func void dia_halvar_kho_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(93249);
    info_addchoice(93249, dialog_back, dia_halvar_kho_teach_back);
    info_addchoice(93249, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_kho_teach_dex_1);
    info_addchoice(93249, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_kho_teach_dex_5);
    info_addchoice(93249, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_kho_teach_str_1);
    info_addchoice(93249, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_kho_teach_str_5);
};


func void dia_halvar_kho_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(93249);
    info_addchoice(93249, dialog_back, dia_halvar_kho_teach_back);
    info_addchoice(93249, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_kho_teach_dex_1);
    info_addchoice(93249, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_kho_teach_dex_5);
    info_addchoice(93249, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_kho_teach_str_1);
    info_addchoice(93249, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_kho_teach_str_5);
};


func void dia_halvar_kho_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(93249);
    info_addchoice(93249, dialog_back, dia_halvar_kho_teach_back);
    info_addchoice(93249, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_kho_teach_dex_1);
    info_addchoice(93249, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_kho_teach_dex_5);
    info_addchoice(93249, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_kho_teach_str_1);
    info_addchoice(93249, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_kho_teach_str_5);
};


func void dia_halvar_kho_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(93249);
    info_addchoice(93249, dialog_back, dia_halvar_kho_teach_back);
    info_addchoice(93249, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_halvar_kho_teach_dex_1);
    info_addchoice(93249, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_halvar_kho_teach_dex_5);
    info_addchoice(93249, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_halvar_kho_teach_str_1);
    info_addchoice(93249, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_halvar_kho_teach_str_5);
};


func void dia_mrhelp_teach_gesundheit_info() {
    ai_output(other, self, "DIA_Hero_TEACH_PermHealth_15_00");
    info_clearchoices(94289);
    info_addchoice(94289, dialog_back, dia_mrhelp_teach_gesundheit_back);
    info_addchoice(94289, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_mrhelp_teach_gesundheit_1);
    info_addchoice(94289, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_mrhelp_teach_gesundheit_5);
};


func void dia_mrhelp_teach_gesundheit_1() {
    if(hero.lp >= 1) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_4);
        npc_changeattribute(other, atr_hitpoints, hpmax_4);
        hero.lp = hero.lp - 1;
        info_clearchoices(94289);
        info_addchoice(94289, dialog_back, dia_mrhelp_teach_gesundheit_back);
        info_addchoice(94289, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_mrhelp_teach_gesundheit_1);
        info_addchoice(94289, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_mrhelp_teach_gesundheit_5);
    }
    else {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void dia_mrhelp_teach_gesundheit_5() {
    if(hero.lp >= 5) {
        b_raiseattribute(other, atr_hitpoints_max, hpmax_20);
        npc_changeattribute(other, atr_hitpoints, hpmax_20);
        hero.lp = hero.lp - 5;
        info_clearchoices(94289);
        info_addchoice(94289, dialog_back, dia_mrhelp_teach_gesundheit_back);
        info_addchoice(94289, b_buildlearnstring(print_learnpermhealth1, b_getlearncostattribute(other, atr_hitpoints_max, 1)), dia_mrhelp_teach_gesundheit_1);
        info_addchoice(94289, b_buildlearnstring(print_learnpermhealth5, b_getlearncostattribute(other, atr_hitpoints_max, 5)), dia_mrhelp_teach_gesundheit_5);
    }
    else {
        ai_output(other, self, "DIA_Hero_ZUWENIGERFAHRUNG_15_01");
    };
};


func void none_2238_loga_lernen_dex_info() {
    ai_output(other, self, "NONE_2238_Loga_LERNEN_DEX_Info_15_01");
    info_clearchoices(94922);
    info_addchoice(94922, dialog_back, none_2238_loga_lernen_dex_back);
    info_addchoice(94922, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), none_2238_loga_lernen_dex_1);
    info_addchoice(94922, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), none_2238_loga_lernen_dex_5);
};


func void none_2238_loga_lernen_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, 80);
    info_clearchoices(94922);
    info_addchoice(94922, dialog_back, none_2238_loga_lernen_dex_back);
    info_addchoice(94922, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), none_2238_loga_lernen_dex_1);
    info_addchoice(94922, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), none_2238_loga_lernen_dex_5);
};


func void none_2238_loga_lernen_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, 80);
    info_clearchoices(94922);
    info_addchoice(94922, dialog_back, none_2238_loga_lernen_dex_back);
    info_addchoice(94922, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), none_2238_loga_lernen_dex_1);
    info_addchoice(94922, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), none_2238_loga_lernen_dex_5);
};


func void none_2239_refty_lernen_staerke_info() {
    ai_output(other, self, "NONE_2239_Refty_LERNEN_STAERKE_Info_15_01");
    info_clearchoices(94957);
    info_addchoice(94957, dialog_back, none_2239_refty_lernen_staerke_back);
    info_addchoice(94957, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), none_2239_refty_lernen_staerke_1);
    info_addchoice(94957, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), none_2239_refty_lernen_staerke_5);
};


func void none_2239_refty_lernen_staerke_1() {
    b_teachattributepoints(self, other, atr_strength, 1, 90);
    info_clearchoices(94957);
    info_addchoice(94957, dialog_back, none_2239_refty_lernen_staerke_back);
    info_addchoice(94957, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), none_2239_refty_lernen_staerke_1);
    info_addchoice(94957, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), none_2239_refty_lernen_staerke_5);
};


func void none_2239_refty_lernen_staerke_5() {
    b_teachattributepoints(self, other, atr_strength, 5, 90);
    info_clearchoices(94957);
    info_addchoice(94957, dialog_back, none_2239_refty_lernen_staerke_back);
    info_addchoice(94957, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), none_2239_refty_lernen_staerke_1);
    info_addchoice(94957, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), none_2239_refty_lernen_staerke_5);
};


func void dia_4295_dieb_teach_info() {
    ai_output(other, self, "DIA_Hero_TEACHDEX_15_00");
    info_clearchoices(95109);
    info_addchoice(95109, dialog_back, dia_4295_dieb_teach_back);
    info_addchoice(95109, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_4295_dieb_teach_1);
    info_addchoice(95109, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_4295_dieb_teach_5);
};


func void dia_4295_dieb_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(95109);
    info_addchoice(95109, dialog_back, dia_4295_dieb_teach_back);
    info_addchoice(95109, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_4295_dieb_teach_1);
    info_addchoice(95109, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_4295_dieb_teach_5);
};


func void dia_4295_dieb_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(95109);
    info_addchoice(95109, dialog_back, dia_4295_dieb_teach_back);
    info_addchoice(95109, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_4295_dieb_teach_1);
    info_addchoice(95109, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_4295_dieb_teach_5);
};


func void dia_baromir_bowteach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 130) {
        ai_output(self, other, "DIA_BAROMIR_TEACHHUNTING_NO_08_00");
    }
    else {
        info_clearchoices(95153);
        info_addchoice(95153, dialog_back, dia_baromir_bowteach_back);
        info_addchoice(95153, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_baromir_bowteach_bow_1);
        info_addchoice(95153, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_baromir_bowteach_bow_5);
    };
};


func void dia_baromir_bowteach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(95153);
    info_addchoice(95153, dialog_back, dia_baromir_bowteach_back);
    info_addchoice(95153, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_baromir_bowteach_bow_1);
    info_addchoice(95153, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_baromir_bowteach_bow_5);
};


func void dia_baromir_bowteach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(95153);
    info_addchoice(95153, dialog_back, dia_baromir_bowteach_back);
    info_addchoice(95153, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_baromir_bowteach_bow_1);
    info_addchoice(95153, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_baromir_bowteach_bow_5);
};


func void dia_opolos_teach_str_info() {
    ai_output(other, self, "DIA_Opolos_TEACH_STR_15_00");
    info_clearchoices(95723);
    info_addchoice(95723, dialog_back, dia_opolos_teach_str_back);
    info_addchoice(95723, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_opolos_teach_str_1);
    info_addchoice(95723, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_opolos_teach_str_5);
};


func void dia_opolos_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(95723);
    info_addchoice(95723, dialog_back, dia_opolos_teach_str_back);
    info_addchoice(95723, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_opolos_teach_str_1);
    info_addchoice(95723, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_opolos_teach_str_5);
};


func void dia_opolos_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(95723);
    info_addchoice(95723, dialog_back, dia_opolos_teach_str_back);
    info_addchoice(95723, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_opolos_teach_str_1);
    info_addchoice(95723, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_opolos_teach_str_5);
};


func void dia_out_10000_markus_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 130) {
        ai_output(self, other, "DIA_OUT_10000_MARKUS_Teach_39_01");
    }
    else {
        info_clearchoices(96832);
        info_addchoice(96832, dialog_back, dia_out_10000_markus_teach_back);
        info_addchoice(96832, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_out_10000_markus_teach_bow_1);
        info_addchoice(96832, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_out_10000_markus_teach_bow_5);
    };
};


func void dia_out_10000_markus_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(96832);
    info_addchoice(96832, dialog_back, dia_out_10000_markus_teach_back);
    info_addchoice(96832, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_out_10000_markus_teach_bow_1);
    info_addchoice(96832, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_out_10000_markus_teach_bow_5);
};


func void dia_out_10000_markus_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(96832);
    info_addchoice(96832, dialog_back, dia_out_10000_markus_teach_back);
    info_addchoice(96832, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_out_10000_markus_teach_bow_1);
    info_addchoice(96832, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_out_10000_markus_teach_bow_5);
};


func void dia_halfdan_teach_info() {
    ai_output(other, self, "DIA_Hakoon_Teach_15_00");
    if(other.hitchance[3] >= 100) {
        ai_output(self, other, "DIA_Hakoon_Teach_01_01");
    }
    else {
        info_clearchoices(96940);
        info_addchoice(96940, dialog_back, dia_halfdan_teach_back);
        info_addchoice(96940, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_halfdan_teach_bow_1);
        info_addchoice(96940, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_halfdan_teach_bow_5);
    };
};


func void dia_halfdan_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 100);
    info_clearchoices(96940);
    info_addchoice(96940, dialog_back, dia_halfdan_teach_back);
    info_addchoice(96940, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_halfdan_teach_bow_1);
    info_addchoice(96940, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_halfdan_teach_bow_5);
};


func void dia_halfdan_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 100);
    info_clearchoices(96940);
    info_addchoice(96940, dialog_back, dia_halfdan_teach_back);
    info_addchoice(96940, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_halfdan_teach_bow_1);
    info_addchoice(96940, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_halfdan_teach_bow_5);
};


func void dia_hakoon_teach_info() {
    ai_output(other, self, "DIA_Hakoon_Teach_15_00");
    if(other.hitchance[3] >= 100) {
        ai_output(self, other, "DIA_Hakoon_Teach_01_01");
    }
    else {
        info_clearchoices(97091);
        info_addchoice(97091, dialog_back, dia_hakoon_teach_back);
        info_addchoice(97091, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_hakoon_teach_bow_1);
        info_addchoice(97091, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_hakoon_teach_bow_5);
    };
};


func void dia_hakoon_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 100);
    info_clearchoices(97091);
    info_addchoice(97091, dialog_back, dia_hakoon_teach_back);
    info_addchoice(97091, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_hakoon_teach_bow_1);
    info_addchoice(97091, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_hakoon_teach_bow_5);
};


func void dia_hakoon_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 100);
    info_clearchoices(97091);
    info_addchoice(97091, dialog_back, dia_hakoon_teach_back);
    info_addchoice(97091, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_hakoon_teach_bow_1);
    info_addchoice(97091, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_hakoon_teach_bow_5);
};


func void dia_olaf_teach_info() {
    ai_output(other, self, "DIA_Hero_Faehigkeiten_15_01");
    olaf_merke_str = other.attribute[4];
    olaf_merke_dex = other.attribute[5];
    info_clearchoices(97312);
    info_addchoice(97312, dialog_back, dia_olaf_teach_back);
    info_addchoice(97312, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_olaf_teach_dex_1);
    info_addchoice(97312, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_olaf_teach_dex_5);
    info_addchoice(97312, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_olaf_teach_str_1);
    info_addchoice(97312, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_olaf_teach_str_5);
};


func void dia_olaf_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(97312);
    info_addchoice(97312, dialog_back, dia_olaf_teach_back);
    info_addchoice(97312, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_olaf_teach_dex_1);
    info_addchoice(97312, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_olaf_teach_dex_5);
    info_addchoice(97312, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_olaf_teach_str_1);
    info_addchoice(97312, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_olaf_teach_str_5);
};


func void dia_olaf_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(97312);
    info_addchoice(97312, dialog_back, dia_olaf_teach_back);
    info_addchoice(97312, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_olaf_teach_dex_1);
    info_addchoice(97312, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_olaf_teach_dex_5);
    info_addchoice(97312, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_olaf_teach_str_1);
    info_addchoice(97312, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_olaf_teach_str_5);
};


func void dia_olaf_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(97312);
    info_addchoice(97312, dialog_back, dia_olaf_teach_back);
    info_addchoice(97312, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_olaf_teach_dex_1);
    info_addchoice(97312, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_olaf_teach_dex_5);
    info_addchoice(97312, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_olaf_teach_str_1);
    info_addchoice(97312, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_olaf_teach_str_5);
};


func void dia_olaf_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(97312);
    info_addchoice(97312, dialog_back, dia_olaf_teach_back);
    info_addchoice(97312, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_olaf_teach_dex_1);
    info_addchoice(97312, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_olaf_teach_dex_5);
    info_addchoice(97312, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_olaf_teach_str_1);
    info_addchoice(97312, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_olaf_teach_str_5);
};


func void dia_dag_bow_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 120) {
        ai_output(self, other, "DIA_Dag_MOD_TeachBow_38_01");
    }
    else {
        info_clearchoices(97387);
        info_addchoice(97387, dialog_back, dia_dag_bow_teach_back);
        info_addchoice(97387, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dag_bow_teach_bow_1);
        info_addchoice(97387, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dag_bow_teach_bow_5);
    };
};


func void dia_dag_bow_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 120);
    info_clearchoices(97387);
    info_addchoice(97387, dialog_back, dia_dag_bow_teach_back);
    info_addchoice(97387, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dag_bow_teach_bow_1);
    info_addchoice(97387, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dag_bow_teach_bow_5);
};


func void dia_dag_bow_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 120);
    info_clearchoices(97387);
    info_addchoice(97387, dialog_back, dia_dag_bow_teach_back);
    info_addchoice(97387, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_dag_bow_teach_bow_1);
    info_addchoice(97387, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_dag_bow_teach_bow_5);
};


func void dia_gudrun_teach_info() {
    ai_output(other, self, "DIA_HERO_Train_DEX_15_01");
    gudrun_merke_dex = other.attribute[5];
    info_clearchoices(97904);
    info_addchoice(97904, dialog_back, dia_gudrun_teach_back);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_gudrun_teach_dex_1);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_gudrun_teach_dex_5);
};


func void dia_gudrun_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(97904);
    info_addchoice(97904, dialog_back, dia_gudrun_teach_back);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_gudrun_teach_dex_1);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_gudrun_teach_dex_5);
};


func void dia_gudrun_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(97904);
    info_addchoice(97904, dialog_back, dia_gudrun_teach_back);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_gudrun_teach_dex_1);
    info_addchoice(97904, b_buildlearnstring("Geschicklichkeit + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_gudrun_teach_dex_5);
};


func void dia_ingolf_bow_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 140) {
        ai_output(self, other, "DIA_Ingolf_MOD_TeachBow_37_01");
    }
    else {
        info_clearchoices(97962);
        info_addchoice(97962, dialog_back, dia_ingolf_bow_teach_back);
        info_addchoice(97962, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_ingolf_bow_teach_bow_1);
        info_addchoice(97962, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_ingolf_bow_teach_bow_5);
    };
};


func void dia_ingolf_bow_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 140);
    info_clearchoices(97962);
    info_addchoice(97962, dialog_back, dia_ingolf_bow_teach_back);
    info_addchoice(97962, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_ingolf_bow_teach_bow_1);
    info_addchoice(97962, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_ingolf_bow_teach_bow_5);
};


func void dia_ingolf_bow_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 140);
    info_clearchoices(97962);
    info_addchoice(97962, dialog_back, dia_ingolf_bow_teach_back);
    info_addchoice(97962, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_ingolf_bow_teach_bow_1);
    info_addchoice(97962, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_ingolf_bow_teach_bow_5);
};


func void dia_schaban_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    if(other.hitchance[3] >= 130) {
        ai_output(self, other, "DIA_Schaban_Teach_10_01");
    }
    else {
        info_clearchoices(98237);
        info_addchoice(98237, dialog_back, dia_schaban_teach_back);
        info_addchoice(98237, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_schaban_teach_bow_1);
        info_addchoice(98237, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_schaban_teach_bow_5);
    };
};


func void dia_schaban_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 130);
    info_clearchoices(98237);
    info_addchoice(98237, dialog_back, dia_schaban_teach_back);
    info_addchoice(98237, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_schaban_teach_bow_1);
    info_addchoice(98237, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_schaban_teach_bow_5);
};


func void dia_schaban_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 130);
    info_clearchoices(98237);
    info_addchoice(98237, dialog_back, dia_schaban_teach_back);
    info_addchoice(98237, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_schaban_teach_bow_1);
    info_addchoice(98237, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_schaban_teach_bow_5);
};


func void dia_said_teachkraft_info() {
    ai_output(other, self, "DIA_Said_TeachKraft_15_00");
    if(said_vertrauenja == true) {
        said_merke_str = other.attribute[4];
        said_merke_dex = other.attribute[5];
        info_clearchoices(98365);
        info_addchoice(98365, dialog_back, dia_said_teachkraft_back);
        info_addchoice(98365, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_said_teachkraft_dex_1);
        info_addchoice(98365, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_said_teachkraft_dex_5);
        info_addchoice(98365, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_said_teachkraft_str_1);
        info_addchoice(98365, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_said_teachkraft_str_5);
    }
    else if(said_vertrauenja == false) {
        ai_output(self, other, "DIA_Said_TeachKraft_02_01");
        ai_output(self, other, "DIA_Said_TeachKraft_02_02");
    };
};


func void dia_said_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(98365);
    info_addchoice(98365, dialog_back, dia_said_teachkraft_back);
    info_addchoice(98365, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_said_teachkraft_dex_1);
    info_addchoice(98365, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_said_teachkraft_dex_5);
    info_addchoice(98365, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_said_teachkraft_str_1);
    info_addchoice(98365, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_said_teachkraft_str_5);
};


func void dia_said_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(98365);
    info_addchoice(98365, dialog_back, dia_said_teachkraft_back);
    info_addchoice(98365, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_said_teachkraft_dex_1);
    info_addchoice(98365, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_said_teachkraft_dex_5);
    info_addchoice(98365, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_said_teachkraft_str_1);
    info_addchoice(98365, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_said_teachkraft_str_5);
};


func void dia_said_teachkraft_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(98365);
    info_addchoice(98365, dialog_back, dia_said_teachkraft_back);
    info_addchoice(98365, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_said_teachkraft_dex_1);
    info_addchoice(98365, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_said_teachkraft_dex_5);
    info_addchoice(98365, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_said_teachkraft_str_1);
    info_addchoice(98365, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_said_teachkraft_str_5);
};


func void dia_said_teachkraft_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(98365);
    info_addchoice(98365, dialog_back, dia_said_teachkraft_back);
    info_addchoice(98365, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_said_teachkraft_dex_1);
    info_addchoice(98365, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_said_teachkraft_dex_5);
    info_addchoice(98365, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_said_teachkraft_str_1);
    info_addchoice(98365, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_said_teachkraft_str_5);
};


func void dia_said_mod_teach_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    info_clearchoices(98395);
    info_addchoice(98395, dialog_back, dia_said_mod_teach_back);
    info_addchoice(98395, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_said_mod_teach_1h_1);
    info_addchoice(98395, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_said_mod_teach_1h_5);
};


func void dia_said_mod_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 120);
    info_clearchoices(98395);
    info_addchoice(98395, dialog_back, dia_said_mod_teach_back);
    info_addchoice(98395, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_said_mod_teach_1h_1);
    info_addchoice(98395, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_said_mod_teach_1h_5);
};


func void dia_said_mod_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 120);
    info_clearchoices(98395);
    info_addchoice(98395, dialog_back, dia_said_mod_teach_back);
    info_addchoice(98395, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_said_mod_teach_1h_1);
    info_addchoice(98395, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_said_mod_teach_1h_5);
};


func void dia_amir_teachkraft_info() {
    ai_output(other, self, "DIA_Amir_TeachKraft_15_00");
    if((other.guild == gil_mil) || (other.guild == gil_pal) || (other.guild == gil_none)) {
        amir_merke_str = other.attribute[4];
        amir_merke_dex = other.attribute[5];
        info_clearchoices(98880);
        info_addchoice(98880, dialog_back, dia_amir_teachkraft_back);
        info_addchoice(98880, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_amir_teachkraft_dex_1);
        info_addchoice(98880, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_amir_teachkraft_dex_5);
        info_addchoice(98880, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_amir_teachkraft_str_1);
        info_addchoice(98880, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_amir_teachkraft_str_5);
    }
    else {
        ai_output(self, other, "DIA_Amir_TeachKraft_03_01");
        ai_output(self, other, "DIA_Amir_TeachKraft_03_02");
    };
};


func void dia_amir_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(98880);
    info_addchoice(98880, dialog_back, dia_amir_teachkraft_back);
    info_addchoice(98880, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_amir_teachkraft_dex_1);
    info_addchoice(98880, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_amir_teachkraft_dex_5);
    info_addchoice(98880, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_amir_teachkraft_str_1);
    info_addchoice(98880, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_amir_teachkraft_str_5);
};


func void dia_amir_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(98880);
    info_addchoice(98880, dialog_back, dia_amir_teachkraft_back);
    info_addchoice(98880, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_amir_teachkraft_dex_1);
    info_addchoice(98880, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_amir_teachkraft_dex_5);
    info_addchoice(98880, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_amir_teachkraft_str_1);
    info_addchoice(98880, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_amir_teachkraft_str_5);
};


func void dia_amir_teachkraft_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(98880);
    info_addchoice(98880, dialog_back, dia_amir_teachkraft_back);
    info_addchoice(98880, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_amir_teachkraft_dex_1);
    info_addchoice(98880, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_amir_teachkraft_dex_5);
    info_addchoice(98880, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_amir_teachkraft_str_1);
    info_addchoice(98880, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_amir_teachkraft_str_5);
};


func void dia_amir_teachkraft_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(98880);
    info_addchoice(98880, dialog_back, dia_amir_teachkraft_back);
    info_addchoice(98880, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_amir_teachkraft_dex_1);
    info_addchoice(98880, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_amir_teachkraft_dex_5);
    info_addchoice(98880, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_amir_teachkraft_str_1);
    info_addchoice(98880, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_amir_teachkraft_str_5);
};


func void dia_djaudar_teachkraft_info() {
    ai_output(other, self, "DIA_HERO_Train_STR_15_01");
    djaudar_merke_str = other.attribute[4];
    info_clearchoices(99094);
    info_addchoice(99094, dialog_back, dia_djaudar_teachkraft_back);
    info_addchoice(99094, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_djaudar_teachkraft_str_1);
    info_addchoice(99094, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_djaudar_teachkraft_str_5);
};


func void dia_djaudar_teachkraft_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(99094);
    info_addchoice(99094, dialog_back, dia_djaudar_teachkraft_back);
    info_addchoice(99094, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_djaudar_teachkraft_str_1);
    info_addchoice(99094, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_djaudar_teachkraft_str_5);
};


func void dia_djaudar_teachkraft_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(99094);
    info_addchoice(99094, dialog_back, dia_djaudar_teachkraft_back);
    info_addchoice(99094, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_djaudar_teachkraft_str_1);
    info_addchoice(99094, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_djaudar_teachkraft_str_5);
};


func void dia_32095_waldlaeufer_teach_info() {
    ai_output(other, self, "DIA_Mortis_Mod_Teach_15_00");
    info_clearchoices(99513);
    info_addchoice(99513, dialog_back, dia_32095_waldlaeufer_teach_back);
    info_addchoice(99513, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_32095_waldlaeufer_teach_1);
    info_addchoice(99513, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_32095_waldlaeufer_teach_5);
};


func void dia_32095_waldlaeufer_teach_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(99513);
    info_addchoice(99513, dialog_back, dia_32095_waldlaeufer_teach_back);
    info_addchoice(99513, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_32095_waldlaeufer_teach_1);
    info_addchoice(99513, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_32095_waldlaeufer_teach_5);
};


func void dia_32095_waldlaeufer_teach_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(99513);
    info_addchoice(99513, dialog_back, dia_32095_waldlaeufer_teach_back);
    info_addchoice(99513, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_32095_waldlaeufer_teach_1);
    info_addchoice(99513, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_32095_waldlaeufer_teach_5);
};


func void dia_32098_waldlaeufer_teachdex_info() {
    ai_output(other, self, "DIA_Ruga_Mod_TEACHDEX_15_00");
    ai_output(self, other, "DIA_32098_Waldlaeufer_TEACHDEX_47_01");
    info_clearchoices(99577);
    info_addchoice(99577, dialog_back, dia_32098_waldlaeufer_teachdex_back);
    info_addchoice(99577, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_32098_waldlaeufer_teachdex_1);
    info_addchoice(99577, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_32098_waldlaeufer_teachdex_5);
};


func void dia_32098_waldlaeufer_teachdex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(99577);
    info_addchoice(99577, dialog_back, dia_32098_waldlaeufer_teachdex_back);
    info_addchoice(99577, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_32098_waldlaeufer_teachdex_1);
    info_addchoice(99577, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_32098_waldlaeufer_teachdex_5);
};


func void dia_32098_waldlaeufer_teachdex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(99577);
    info_addchoice(99577, dialog_back, dia_32098_waldlaeufer_teachdex_back);
    info_addchoice(99577, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_32098_waldlaeufer_teachdex_1);
    info_addchoice(99577, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_32098_waldlaeufer_teachdex_5);
};


func void dia_curtis_teach_info() {
    ai_output(other, self, "DIA_Curtis_Teach_15_00");
    if(other.hitchance[3] >= 60) {
        ai_output(self, other, "DIA_Curtis_Teach_99_01");
    }
    else {
        info_clearchoices(99630);
        info_addchoice(99630, dialog_back, dia_curtis_teach_back);
        info_addchoice(99630, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_curtis_teach_bow_1);
        info_addchoice(99630, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_curtis_teach_bow_5);
    };
};


func void dia_curtis_teach_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 60);
    info_clearchoices(99630);
    info_addchoice(99630, dialog_back, dia_curtis_teach_back);
    info_addchoice(99630, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_curtis_teach_bow_1);
    info_addchoice(99630, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_curtis_teach_bow_5);
};


func void dia_curtis_teach_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 60);
    info_clearchoices(99630);
    info_addchoice(99630, dialog_back, dia_curtis_teach_back);
    info_addchoice(99630, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_curtis_teach_bow_1);
    info_addchoice(99630, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_curtis_teach_bow_5);
};


func void dia_seian_teach_mana_info() {
    ai_output(other, self, "DIA_Tartaron_TEACH_MANA_15_00");
    info_clearchoices(99891);
    info_addchoice(99891, dialog_back, dia_seian_teach_mana_back);
    info_addchoice(99891, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seian_teach_mana_1);
    info_addchoice(99891, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seian_teach_mana_5);
};


func void dia_seian_teach_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_mega);
    info_clearchoices(99891);
    info_addchoice(99891, dialog_back, dia_seian_teach_mana_back);
    info_addchoice(99891, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seian_teach_mana_1);
    info_addchoice(99891, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seian_teach_mana_5);
};


func void dia_seian_teach_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_mega);
    info_clearchoices(99891);
    info_addchoice(99891, dialog_back, dia_seian_teach_mana_back);
    info_addchoice(99891, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_seian_teach_mana_1);
    info_addchoice(99891, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_seian_teach_mana_5);
};


func void dia_cobryn_teach_info() {
    ai_output(other, self, "DIA_Hero_ICHBRAUCHETRAINING_15_01");
    cobryn_merke_str = other.attribute[4];
    cobryn_merke_dex = other.attribute[5];
    info_clearchoices(100788);
    info_addchoice(100788, dialog_back, dia_cobryn_teach_back);
    info_addchoice(100788, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cobryn_teach_dex_1);
    info_addchoice(100788, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cobryn_teach_dex_5);
    info_addchoice(100788, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_cobryn_teach_str_1);
    info_addchoice(100788, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_cobryn_teach_str_5);
};


func void dia_cobryn_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(100788);
    info_addchoice(100788, dialog_back, dia_cobryn_teach_back);
    info_addchoice(100788, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cobryn_teach_dex_1);
    info_addchoice(100788, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cobryn_teach_dex_5);
    info_addchoice(100788, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_cobryn_teach_str_1);
    info_addchoice(100788, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_cobryn_teach_str_5);
};


func void dia_cobryn_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(100788);
    info_addchoice(100788, dialog_back, dia_cobryn_teach_back);
    info_addchoice(100788, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cobryn_teach_dex_1);
    info_addchoice(100788, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cobryn_teach_dex_5);
    info_addchoice(100788, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_cobryn_teach_str_1);
    info_addchoice(100788, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_cobryn_teach_str_5);
};


func void dia_cobryn_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(100788);
    info_addchoice(100788, dialog_back, dia_cobryn_teach_back);
    info_addchoice(100788, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cobryn_teach_dex_1);
    info_addchoice(100788, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cobryn_teach_dex_5);
    info_addchoice(100788, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_cobryn_teach_str_1);
    info_addchoice(100788, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_cobryn_teach_str_5);
};


func void dia_cobryn_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(100788);
    info_addchoice(100788, dialog_back, dia_cobryn_teach_back);
    info_addchoice(100788, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cobryn_teach_dex_1);
    info_addchoice(100788, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cobryn_teach_dex_5);
    info_addchoice(100788, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_cobryn_teach_str_1);
    info_addchoice(100788, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_cobryn_teach_str_5);
};


func void dia_ingmar_teach_info() {
    ai_output(other, self, "DIA_Ingmar_Teach_15_00");
    info_clearchoices(101274);
    info_addchoice(101274, dialog_back, dia_ingmar_teach_back);
    info_addchoice(101274, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ingmar_teach_1);
    info_addchoice(101274, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ingmar_teach_5);
};


func void dia_ingmar_teach_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(101274);
    info_addchoice(101274, dialog_back, dia_ingmar_teach_back);
    info_addchoice(101274, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ingmar_teach_1);
    info_addchoice(101274, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ingmar_teach_5);
};


func void dia_ingmar_teach_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(101274);
    info_addchoice(101274, dialog_back, dia_ingmar_teach_back);
    info_addchoice(101274, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_ingmar_teach_1);
    info_addchoice(101274, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_ingmar_teach_5);
};


func void dia_albrecht_teach_info() {
    ai_output(other, self, "DIA_Albrecht_Teach_15_00");
    info_clearchoices(101329);
    info_addchoice(101329, dialog_back, dia_albrecht_teach_back);
    info_addchoice(101329, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_albrecht_teach_1);
    info_addchoice(101329, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_albrecht_teach_5);
};


func void dia_albrecht_teach_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(101329);
    info_addchoice(101329, dialog_back, dia_albrecht_teach_back);
    info_addchoice(101329, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_albrecht_teach_1);
    info_addchoice(101329, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_albrecht_teach_5);
};


func void dia_albrecht_teach_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(101329);
    info_addchoice(101329, dialog_back, dia_albrecht_teach_back);
    info_addchoice(101329, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_albrecht_teach_1);
    info_addchoice(101329, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_albrecht_teach_5);
};


func void dia_milten_di_teachmagic_info() {
    ai_output(other, self, "DIA_Milten_DI_TeachMagic_15_00");
    if(orksturmdi == false) {
        ai_output(self, other, "DIA_Milten_DI_TeachMagic_03_01");
    }
    else if(dia_milten_di_teachmagic_onetime == false) {
        ai_output(self, other, "DIA_Milten_DI_TeachMagic_03_02");
        dia_milten_di_teachmagic_onetime = true;
    }
    else {
        ai_output(self, other, "DIA_Milten_DI_TeachMagic_03_03");
    };
    info_clearchoices(104045);
    info_addchoice(104045, dialog_back, dia_milten_di_teachmagic_back);
    info_addchoice(104045, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_milten_di_teachmagic_mana_1);
    info_addchoice(104045, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_milten_di_teachmagic_mana_5);
    if(hero.guild == gil_kdf) {
        info_addchoice(104045, "Runen herstellen", dia_milten_di_teachmagic_runes);
    };
};


func void dia_milten_di_teachmagic_mana_1() {
    if(b_teachattributepoints(self, other, atr_mana_max, 1, t_high)) {
        ai_output(self, other, "DIA_Milten_DI_TeachMagic_MANA_1_03_00");
    };
    info_clearchoices(104045);
    info_addchoice(104045, dialog_back, dia_milten_di_teachmagic_back);
    info_addchoice(104045, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_milten_di_teachmagic_mana_1);
    info_addchoice(104045, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_milten_di_teachmagic_mana_5);
    if(hero.guild == gil_kdf) {
        info_addchoice(104045, "Runen herstellen", dia_milten_di_teachmagic_runes);
    };
};


func void dia_milten_di_teachmagic_mana_5() {
    if(b_teachattributepoints(self, other, atr_mana_max, 5, t_high)) {
        ai_output(self, other, "DIA_Milten_DI_TeachMagic_MANA_5_03_00");
    };
    info_clearchoices(104045);
    info_addchoice(104045, dialog_back, dia_milten_di_teachmagic_back);
    info_addchoice(104045, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_milten_di_teachmagic_mana_1);
    info_addchoice(104045, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_milten_di_teachmagic_mana_5);
    if(hero.guild == gil_kdf) {
        info_addchoice(104045, "Runen herstellen", dia_milten_di_teachmagic_runes);
    };
};


func void dia_miltennw_mana_info() {
    ai_output(other, self, "DIA_MiltenNW_Mana_15_00");
    info_clearchoices(104156);
    info_addchoice(104156, dialog_back, dia_miltennw_mana_back);
    info_addchoice(104156, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltennw_mana_1);
    info_addchoice(104156, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltennw_mana_5);
};


func void dia_miltennw_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(104156);
    info_addchoice(104156, dialog_back, dia_miltennw_mana_back);
    info_addchoice(104156, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltennw_mana_1);
    info_addchoice(104156, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltennw_mana_5);
};


func void dia_miltennw_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(104156);
    info_addchoice(104156, dialog_back, dia_miltennw_mana_back);
    info_addchoice(104156, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltennw_mana_1);
    info_addchoice(104156, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltennw_mana_5);
};


func void dia_miltenow_mana_info() {
    ai_output(other, self, "DIA_MiltenOW_Mana_15_00");
    info_clearchoices(104218);
    info_addchoice(104218, dialog_back, dia_miltenow_mana_back);
    info_addchoice(104218, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltenow_mana_1);
    info_addchoice(104218, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltenow_mana_5);
};


func void dia_miltenow_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_med);
    info_clearchoices(104218);
    info_addchoice(104218, dialog_back, dia_miltenow_mana_back);
    info_addchoice(104218, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltenow_mana_1);
    info_addchoice(104218, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltenow_mana_5);
};


func void dia_miltenow_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_med);
    info_clearchoices(104218);
    info_addchoice(104218, dialog_back, dia_miltenow_mana_back);
    info_addchoice(104218, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_miltenow_mana_1);
    info_addchoice(104218, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_miltenow_mana_5);
};


func void dia_pc_thief_di_training_talente_info() {
    ai_output(other, self, "DIA_PC_Thief_DI_Training_15_00");
    ai_output(self, other, "DIA_PC_Thief_DI_Training_11_01");
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_pc_thief_di_training_dex_1() {
    if(b_teachattributepoints(self, other, atr_dexterity, 1, t_max)) {
        ai_output(self, other, "DIA_PC_Thief_DI_Training_DEX_1_11_00");
    };
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_pc_thief_di_training_dex_5() {
    if(b_teachattributepoints(self, other, atr_dexterity, 5, t_max)) {
        ai_output(self, other, "DIA_PC_Thief_DI_Training_DEX_5_11_00");
    };
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_pc_thief_di_training_combat_bow_1() {
    if(b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 100)) {
        ai_output(self, other, "DIA_PC_Thief_DI_Training_Combat_BOW_1_11_00");
    };
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_pc_thief_di_training_combat_bow_5() {
    if(b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 100)) {
        ai_output(self, other, "DIA_PC_Thief_DI_Training_Combat_BOW_5_11_00");
    };
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_pc_thief_di_training_talente_picklock() {
    if(b_teachthieftalent(self, other, npc_talent_picklock)) {
        ai_output(self, other, "DIA_PC_Thief_DI_Training_PICKLOCK_11_00");
    };
    info_clearchoices(104345);
    info_addchoice(104345, dialog_back, dia_pc_thief_di_training_talente_back);
    if(npc_gettalentskill(hero, npc_talent_picklock) == false) {
        info_addchoice(104345, "Schl�sser knacken", dia_pc_thief_di_training_talente_picklock);
    };
    info_addchoice(104345, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_pc_thief_di_training_dex_1);
    info_addchoice(104345, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_pc_thief_di_training_dex_5);
    info_addchoice(104345, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_pc_thief_di_training_combat_bow_1);
    info_addchoice(104345, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_pc_thief_di_training_combat_bow_5);
};


func void dia_diegonw_teach_info() {
    ai_output(other, self, "DIA_DiegoNW_Teach_15_00");
    ai_output(self, other, "DIA_DiegoNW_Teach_11_01");
    diegonw_merke_dex = other.attribute[5];
    info_clearchoices(104404);
    info_addchoice(104404, dialog_back, dia_diegonw_teach_back);
    info_addchoice(104404, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegonw_teachdex_1);
    info_addchoice(104404, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegonw_teachdex_5);
};


func void dia_diegonw_teachdex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(104404);
    info_addchoice(104404, dialog_back, dia_diegonw_teach_back);
    info_addchoice(104404, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegonw_teachdex_1);
    info_addchoice(104404, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegonw_teachdex_5);
};


func void dia_diegonw_teachdex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(104404);
    info_addchoice(104404, dialog_back, dia_diegonw_teach_back);
    info_addchoice(104404, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegonw_teachdex_1);
    info_addchoice(104404, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegonw_teachdex_5);
};


func void dia_diegoow_teach_info() {
    ai_output(other, self, "DIA_DiegoOw_Teach_15_00");
    ai_output(self, other, "DIA_Addon_DiegoOw_Teach_11_01");
    diego_merkedex = other.attribute[5];
    diego_merkestr = other.attribute[4];
    info_clearchoices(104449);
    info_addchoice(104449, dialog_back, dia_diegoow_teach_back);
    info_addchoice(104449, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegoow_teachdex_1);
    info_addchoice(104449, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegoow_teachdex_5);
    info_addchoice(104449, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_diegoow_teachstr_1);
    info_addchoice(104449, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_diegoow_teachstr_5);
};


func void dia_diegoow_teachdex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(104449);
    info_addchoice(104449, dialog_back, dia_diegoow_teach_back);
    info_addchoice(104449, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegoow_teachdex_1);
    info_addchoice(104449, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegoow_teachdex_5);
    info_addchoice(104449, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_diegoow_teachstr_1);
    info_addchoice(104449, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_diegoow_teachstr_5);
};


func void dia_diegoow_teachdex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(104449);
    info_addchoice(104449, dialog_back, dia_diegoow_teach_back);
    info_addchoice(104449, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegoow_teachdex_1);
    info_addchoice(104449, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegoow_teachdex_5);
    info_addchoice(104449, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_diegoow_teachstr_1);
    info_addchoice(104449, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_diegoow_teachstr_5);
};


func void dia_diegoow_teachstr_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(104449);
    info_addchoice(104449, dialog_back, dia_diegoow_teach_back);
    info_addchoice(104449, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegoow_teachdex_1);
    info_addchoice(104449, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegoow_teachdex_5);
    info_addchoice(104449, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_diegoow_teachstr_1);
    info_addchoice(104449, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_diegoow_teachstr_5);
};


func void dia_diegoow_teachstr_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(104449);
    info_addchoice(104449, dialog_back, dia_diegoow_teach_back);
    info_addchoice(104449, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_diegoow_teachdex_1);
    info_addchoice(104449, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_diegoow_teachdex_5);
    info_addchoice(104449, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_diegoow_teachstr_1);
    info_addchoice(104449, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_diegoow_teachstr_5);
};


func void dia_8004_morgan_teach_info() {
    ai_output(other, self, "DIA_Hero_ICHBRAUCHETRAINING_15_01");
    morgan_mod_merke1h = other.hitchance[1];
    info_clearchoices(104705);
    info_addchoice(104705, dialog_back, dia_8004_morgan_teach_back);
    info_addchoice(104705, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_8004_morgan_teach_1h_1);
    info_addchoice(104705, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_8004_morgan_teach_1h_5);
};


func void dia_8004_morgan_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 1, 75);
    info_clearchoices(104705);
    info_addchoice(104705, dialog_back, dia_8004_morgan_teach_back);
    info_addchoice(104705, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_8004_morgan_teach_1h_1);
    info_addchoice(104705, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_8004_morgan_teach_1h_5);
};


func void dia_8004_morgan_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 5, 75);
    info_clearchoices(104705);
    info_addchoice(104705, dialog_back, dia_8004_morgan_teach_back);
    info_addchoice(104705, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_8004_morgan_teach_1h_1);
    info_addchoice(104705, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_8004_morgan_teach_1h_5);
};


func void dia_8005_henry_teach_info() {
    ai_output(other, self, "DIA_HERO_Will_Training_15_01");
    henry_mod_merke2h = other.hitchance[2];
    info_clearchoices(104756);
    info_addchoice(104756, dialog_back, dia_8005_henry_teach_back);
    info_addchoice(104756, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_8005_henry_teach_2h_1);
    info_addchoice(104756, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_8005_henry_teach_2h_5);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_8005_henry_teach_cb_1);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_8005_henry_teach_cb_5);
};


func void dia_8005_henry_teach_cb_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 75);
    info_clearchoices(104756);
    info_addchoice(104756, dialog_back, dia_8005_henry_teach_back);
    info_addchoice(104756, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_8005_henry_teach_2h_1);
    info_addchoice(104756, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_8005_henry_teach_2h_5);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_8005_henry_teach_cb_1);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_8005_henry_teach_cb_5);
};


func void dia_8005_henry_teach_cb_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 75);
    info_clearchoices(104756);
    info_addchoice(104756, dialog_back, dia_8005_henry_teach_back);
    info_addchoice(104756, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_8005_henry_teach_2h_1);
    info_addchoice(104756, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_8005_henry_teach_2h_5);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_8005_henry_teach_cb_1);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_8005_henry_teach_cb_5);
};


func void dia_8005_henry_teach_2h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 1, 90);
    info_clearchoices(104756);
    info_addchoice(104756, dialog_back, dia_8005_henry_teach_back);
    info_addchoice(104756, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_8005_henry_teach_2h_1);
    info_addchoice(104756, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_8005_henry_teach_2h_5);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_8005_henry_teach_cb_1);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_8005_henry_teach_cb_5);
};


func void dia_8005_henry_teach_2h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 5, 90);
    info_clearchoices(104756);
    info_addchoice(104756, dialog_back, dia_8005_henry_teach_back);
    info_addchoice(104756, b_buildlearnstring(print_learn2h1, b_getlearncosttalent(other, npc_talent_2h, 1)), dia_8005_henry_teach_2h_1);
    info_addchoice(104756, b_buildlearnstring(print_learn2h5, b_getlearncosttalent(other, npc_talent_2h, 5)), dia_8005_henry_teach_2h_5);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_8005_henry_teach_cb_1);
    info_addchoice(104756, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_8005_henry_teach_cb_5);
};


func void dia_8015_brandon_teachplayer_info() {
    ai_output(other, self, "DIA_HERO_Will_Training_15_01");
    brandon_mod_merke_str = other.attribute[4];
    brandon_mod_merke_dex = other.attribute[5];
    if(mis_brandon_mod_bringhering == log_success) {
        info_clearchoices(104966);
        info_addchoice(104966, dialog_back, dia_8015_brandon_teachplayer_back);
        info_addchoice(104966, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_8015_brandon_teachplayer_dex_1);
        info_addchoice(104966, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_8015_brandon_teachplayer_dex_5);
        info_addchoice(104966, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_8015_brandon_teachplayer_str_1);
        info_addchoice(104966, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_8015_brandon_teachplayer_str_5);
    }
    else {
        ai_output(self, other, "DIA_8015_Brandon_TeachPlayer_04_01");
    };
};


func void dia_8015_brandon_teachplayer_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(104966);
    info_addchoice(104966, dialog_back, dia_8015_brandon_teachplayer_back);
    info_addchoice(104966, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_8015_brandon_teachplayer_dex_1);
    info_addchoice(104966, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_8015_brandon_teachplayer_dex_5);
    info_addchoice(104966, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_8015_brandon_teachplayer_str_1);
    info_addchoice(104966, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_8015_brandon_teachplayer_str_5);
};


func void dia_8015_brandon_teachplayer_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(104966);
    info_addchoice(104966, dialog_back, dia_8015_brandon_teachplayer_back);
    info_addchoice(104966, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_8015_brandon_teachplayer_dex_1);
    info_addchoice(104966, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_8015_brandon_teachplayer_dex_5);
    info_addchoice(104966, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_8015_brandon_teachplayer_str_1);
    info_addchoice(104966, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_8015_brandon_teachplayer_str_5);
};


func void dia_8015_brandon_teachplayer_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(104966);
    info_addchoice(104966, dialog_back, dia_8015_brandon_teachplayer_back);
    info_addchoice(104966, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_8015_brandon_teachplayer_dex_1);
    info_addchoice(104966, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_8015_brandon_teachplayer_dex_5);
    info_addchoice(104966, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_8015_brandon_teachplayer_str_1);
    info_addchoice(104966, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_8015_brandon_teachplayer_str_5);
};


func void dia_8015_brandon_teachplayer_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(104966);
    info_addchoice(104966, dialog_back, dia_8015_brandon_teachplayer_back);
    info_addchoice(104966, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_8015_brandon_teachplayer_dex_1);
    info_addchoice(104966, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_8015_brandon_teachplayer_dex_5);
    info_addchoice(104966, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_8015_brandon_teachplayer_str_1);
    info_addchoice(104966, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_8015_brandon_teachplayer_str_5);
};


func void dia_mod_lucia_teach_info() {
    ai_output(other, self, "DIA_HERO_Train_DEX_15_01");
    info_clearchoices(105187);
    info_addchoice(105187, dialog_back, dia_mod_lucia_teach_back);
    info_addchoice(105187, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_mod_lucia_teach_1);
    info_addchoice(105187, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_mod_lucia_teach_5);
};


func void dia_mod_lucia_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(105187);
    info_addchoice(105187, dialog_back, dia_mod_lucia_teach_back);
    info_addchoice(105187, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_mod_lucia_teach_1);
    info_addchoice(105187, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_mod_lucia_teach_5);
};


func void dia_mod_lucia_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(105187);
    info_addchoice(105187, dialog_back, dia_mod_lucia_teach_back);
    info_addchoice(105187, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_mod_lucia_teach_1);
    info_addchoice(105187, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_mod_lucia_teach_5);
};


func void dia_20910_rebell_teach_info() {
    ai_output(other, self, "DIA_Halvar_Teach_15_00");
    if((other.guild == gil_mil) || (other.guild == gil_pal) || (other.guild == gil_none)) {
        brax_merke_str = other.attribute[4];
        brax_merke_dex = other.attribute[5];
        info_clearchoices(105884);
        info_addchoice(105884, dialog_back, dia_20910_rebell_teach_back);
        info_addchoice(105884, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_20910_rebell_teach_dex_1);
        info_addchoice(105884, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_20910_rebell_teach_dex_5);
        info_addchoice(105884, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_20910_rebell_teach_str_1);
        info_addchoice(105884, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_20910_rebell_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Halvar_Teach_43_01");
        ai_output(self, other, "DIA_Halvar_Teach_43_02");
    };
};


func void dia_20910_rebell_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(105884);
    info_addchoice(105884, dialog_back, dia_20910_rebell_teach_back);
    info_addchoice(105884, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_20910_rebell_teach_dex_1);
    info_addchoice(105884, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_20910_rebell_teach_dex_5);
    info_addchoice(105884, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_20910_rebell_teach_str_1);
    info_addchoice(105884, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_20910_rebell_teach_str_5);
};


func void dia_20910_rebell_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(105884);
    info_addchoice(105884, dialog_back, dia_20910_rebell_teach_back);
    info_addchoice(105884, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_20910_rebell_teach_dex_1);
    info_addchoice(105884, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_20910_rebell_teach_dex_5);
    info_addchoice(105884, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_20910_rebell_teach_str_1);
    info_addchoice(105884, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_20910_rebell_teach_str_5);
};


func void dia_20910_rebell_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(105884);
    info_addchoice(105884, dialog_back, dia_20910_rebell_teach_back);
    info_addchoice(105884, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_20910_rebell_teach_dex_1);
    info_addchoice(105884, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_20910_rebell_teach_dex_5);
    info_addchoice(105884, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_20910_rebell_teach_str_1);
    info_addchoice(105884, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_20910_rebell_teach_str_5);
};


func void dia_20910_rebell_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(105884);
    info_addchoice(105884, dialog_back, dia_20910_rebell_teach_back);
    info_addchoice(105884, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_20910_rebell_teach_dex_1);
    info_addchoice(105884, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_20910_rebell_teach_dex_5);
    info_addchoice(105884, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_20910_rebell_teach_str_1);
    info_addchoice(105884, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_20910_rebell_teach_str_5);
};


func void dia_20911_rebell_teach_info() {
    ai_output(other, self, "DIA_Hero_ARMBRUSTSCHIESSEN_15_01");
    info_clearchoices(105906);
    info_addchoice(105906, dialog_back, dia_20911_rebell_teach_back);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_20911_rebell_teach_1h_1);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_20911_rebell_teach_1h_5);
};


func void dia_20911_rebell_teach_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 130);
    info_clearchoices(105906);
    info_addchoice(105906, dialog_back, dia_20911_rebell_teach_back);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_20911_rebell_teach_1h_1);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_20911_rebell_teach_1h_5);
};


func void dia_20911_rebell_teach_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 130);
    info_clearchoices(105906);
    info_addchoice(105906, dialog_back, dia_20911_rebell_teach_back);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow1, b_getlearncosttalent(other, npc_talent_crossbow, 1)), dia_20911_rebell_teach_1h_1);
    info_addchoice(105906, b_buildlearnstring(print_learncrossbow5, b_getlearncosttalent(other, npc_talent_crossbow, 5)), dia_20911_rebell_teach_1h_5);
};


func void dia_20911_rebell_teachbow_info() {
    ai_output(other, self, "DIA_Hero_BOGENSCHIESSEN_15_01");
    info_clearchoices(105912);
    info_addchoice(105912, dialog_back, dia_20911_rebell_teachbow_back);
    info_addchoice(105912, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_20911_rebell_teachbow_bow_1);
    info_addchoice(105912, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_20911_rebell_teachbow_bow_5);
};


func void dia_20911_rebell_teachbow_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 100);
    info_clearchoices(105912);
    info_addchoice(105912, dialog_back, dia_20911_rebell_teachbow_back);
    info_addchoice(105912, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_20911_rebell_teachbow_bow_1);
    info_addchoice(105912, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_20911_rebell_teachbow_bow_5);
};


func void dia_20911_rebell_teachbow_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 100);
    info_clearchoices(105912);
    info_addchoice(105912, dialog_back, dia_20911_rebell_teachbow_back);
    info_addchoice(105912, b_buildlearnstring(print_learnbow1, b_getlearncosttalent(other, npc_talent_bow, 1)), dia_20911_rebell_teachbow_bow_1);
    info_addchoice(105912, b_buildlearnstring(print_learnbow5, b_getlearncosttalent(other, npc_talent_bow, 5)), dia_20911_rebell_teachbow_bow_5);
};


func void dia_torlof_teach_info() {
    ai_output(other, self, "DIA_Torlof_Teach_15_00");
    if((other.guild == gil_sld) || (other.guild == gil_djg) || (other.guild == gil_none)) {
        torlof_merke_str = other.attribute[4];
        torlof_merke_dex = other.attribute[5];
        info_clearchoices(106396);
        info_addchoice(106396, dialog_back, dia_torlof_teach_back);
        info_addchoice(106396, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_teach_dex_1);
        info_addchoice(106396, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_teach_dex_5);
        info_addchoice(106396, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_teach_str_1);
        info_addchoice(106396, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_teach_str_5);
    }
    else {
        ai_output(self, other, "DIA_Torlof_Teach_01_01");
        ai_output(self, other, "DIA_Torlof_Teach_01_02");
    };
};


func void dia_torlof_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(106396);
    info_addchoice(106396, dialog_back, dia_torlof_teach_back);
    info_addchoice(106396, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_teach_dex_1);
    info_addchoice(106396, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_teach_dex_5);
    info_addchoice(106396, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_teach_str_1);
    info_addchoice(106396, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_teach_str_5);
};


func void dia_torlof_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(106396);
    info_addchoice(106396, dialog_back, dia_torlof_teach_back);
    info_addchoice(106396, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_teach_dex_1);
    info_addchoice(106396, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_teach_dex_5);
    info_addchoice(106396, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_teach_str_1);
    info_addchoice(106396, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_teach_str_5);
};


func void dia_torlof_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(106396);
    info_addchoice(106396, dialog_back, dia_torlof_teach_back);
    info_addchoice(106396, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_teach_dex_1);
    info_addchoice(106396, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_teach_dex_5);
    info_addchoice(106396, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_teach_str_1);
    info_addchoice(106396, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_teach_str_5);
};


func void dia_torlof_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(106396);
    info_addchoice(106396, dialog_back, dia_torlof_teach_back);
    info_addchoice(106396, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_teach_dex_1);
    info_addchoice(106396, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_teach_dex_5);
    info_addchoice(106396, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_teach_str_1);
    info_addchoice(106396, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_teach_str_5);
};


func void dia_torlof_di_teach_info() {
    ai_output(other, self, "DIA_Torlof_DI_Teach_15_00");
    info_clearchoices(106457);
    info_addchoice(106457, dialog_back, dia_torlof_di_teach_back);
    info_addchoice(106457, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_di_teach_dex_1);
    info_addchoice(106457, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_di_teach_dex_5);
    info_addchoice(106457, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_di_teach_str_1);
    info_addchoice(106457, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_di_teach_str_5);
};


func void dia_torlof_di_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(106457);
    info_addchoice(106457, dialog_back, dia_torlof_di_teach_back);
    info_addchoice(106457, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_di_teach_dex_1);
    info_addchoice(106457, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_di_teach_dex_5);
    info_addchoice(106457, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_di_teach_str_1);
    info_addchoice(106457, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_di_teach_str_5);
};


func void dia_torlof_di_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(106457);
    info_addchoice(106457, dialog_back, dia_torlof_di_teach_back);
    info_addchoice(106457, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_di_teach_dex_1);
    info_addchoice(106457, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_di_teach_dex_5);
    info_addchoice(106457, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_di_teach_str_1);
    info_addchoice(106457, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_di_teach_str_5);
};


func void dia_torlof_di_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(106457);
    info_addchoice(106457, dialog_back, dia_torlof_di_teach_back);
    info_addchoice(106457, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_di_teach_dex_1);
    info_addchoice(106457, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_di_teach_dex_5);
    info_addchoice(106457, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_di_teach_str_1);
    info_addchoice(106457, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_di_teach_str_5);
};


func void dia_torlof_di_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(106457);
    info_addchoice(106457, dialog_back, dia_torlof_di_teach_back);
    info_addchoice(106457, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_torlof_di_teach_dex_1);
    info_addchoice(106457, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_torlof_di_teach_dex_5);
    info_addchoice(106457, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_torlof_di_teach_str_1);
    info_addchoice(106457, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_torlof_di_teach_str_5);
};


func void dia_bennet_teachstr_info() {
    ai_output(other, self, "DIA_Bennet_TeachSTR_15_00");
    ai_output(self, other, "DIA_Bennet_TeachSTR_06_01");
    info_clearchoices(106995);
    info_addchoice(106995, dialog_back, dia_bennet_teachstr_back);
    info_addchoice(106995, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_bennet_teachstr_str_1);
    info_addchoice(106995, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bennet_teachstr_str_5);
};


func void dia_bennet_teachstr_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_addchoice(106995, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_bennet_teachstr_str_5);
};


func void dia_nat_teach_info() {
    ai_output(other, self, "DIA_Nat_Teach_15_00");
    ai_output(self, other, "DIA_Nat_Teach_07_01");
    if(npc_knowsinfo(other, 108632) && (npc_hasitems(hero, itmi_gold) >= 10)) {
        nat_merke_dex = other.attribute[5];
        info_clearchoices(108636);
        info_addchoice(108636, dialog_back, dia_nat_teach_back);
        if(npc_hasitems(hero, itmi_gold) >= 10) {
            info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_nat_teach_dex_1);
        };
        if(npc_hasitems(hero, itmi_gold) >= 50) {
            info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_nat_teach_dex_5);
        };
    }
    else {
        ai_output(self, other, "DIA_Nat_Teach_07_02");
        ai_output(self, other, "DIA_Nat_Teach_07_03");
        ai_stopprocessinfos(self);
    };
};


func void dia_nat_teach_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    b_giveinvitems(other, self, 34244, 10);
    info_clearchoices(108636);
    info_addchoice(108636, dialog_back, dia_nat_teach_back);
    info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_nat_teach_dex_1);
    info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_nat_teach_dex_5);
};


func void dia_nat_teach_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(108636);
    info_addchoice(108636, dialog_back, dia_nat_teach_back);
    info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_dexterity, 1)), dia_nat_teach_dex_1);
    info_addchoice(108636, b_buildlearnstring("Geschicklichkeit + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_dexterity, 5)), dia_nat_teach_dex_5);
};


func void dia_huck_teach_info() {
    ai_output(other, self, "DIA_Huck_Teach_15_00");
    if(npc_knowsinfo(other, 108692) && (npc_hasitems(hero, itmi_gold) >= 10)) {
        huck_merke_str = other.attribute[4];
        info_clearchoices(108696);
        info_addchoice(108696, dialog_back, dia_huck_teach_back);
        if(npc_hasitems(hero, itmi_gold) >= 10) {
            info_addchoice(108696, b_buildlearnstring("St�rke + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_huck_teach_str_1);
        };
        if(npc_hasitems(hero, itmi_gold) >= 50) {
            info_addchoice(108696, b_buildlearnstring("St�rke + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_huck_teach_str_5);
        };
    }
    else {
        ai_output(self, other, "DIA_Huck_Teach_03_01");
        ai_output(self, other, "DIA_Huck_Teach_03_02");
        ai_stopprocessinfos(self);
    };
};


func void dia_huck_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    b_giveinvitems(other, self, 34244, 10);
    info_clearchoices(108696);
    info_addchoice(108696, dialog_back, dia_huck_teach_back);
    info_addchoice(108696, b_buildlearnstring("St�rke + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_huck_teach_str_1);
    info_addchoice(108696, b_buildlearnstring("St�rke + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_huck_teach_str_5);
};


func void dia_huck_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    b_giveinvitems(other, self, 34244, 50);
    info_clearchoices(108696);
    info_addchoice(108696, dialog_back, dia_huck_teach_back);
    info_addchoice(108696, b_buildlearnstring("St�rke + 1 (Kosten: 10 Gold)", b_getlearncostattribute(other, atr_strength, 1)), dia_huck_teach_str_1);
    info_addchoice(108696, b_buildlearnstring("St�rke + 5 (Kosten: 50 Gold)", b_getlearncostattribute(other, atr_strength, 5)), dia_huck_teach_str_5);
};


func void dia_brutus_teach_info() {
    ai_output(other, self, "DIA_Brutus_Teach_15_00");
    info_clearchoices(109582);
    info_addchoice(109582, dialog_back, dia_brutus_teach_back);
    info_addchoice(109582, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_brutus_teach_str_1);
    info_addchoice(109582, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_brutus_teach_str_5);
};


func void dia_brutus_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(109582);
    info_addchoice(109582, dialog_back, dia_brutus_teach_back);
    info_addchoice(109582, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_brutus_teach_str_1);
    info_addchoice(109582, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_brutus_teach_str_5);
};


func void dia_brutus_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(109582);
    info_addchoice(109582, dialog_back, dia_brutus_teach_back);
    info_addchoice(109582, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_brutus_teach_str_1);
    info_addchoice(109582, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_brutus_teach_str_5);
};


func void dia_harad_teachstr_info() {
    ai_output(other, self, "DIA_Harad_TeachSTR_15_00");
    harad_merke_str = other.attribute[4];
    info_clearchoices(109954);
    info_addchoice(109954, dialog_back, dia_harad_teachstr_back);
    info_addchoice(109954, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_teachstr_1);
    info_addchoice(109954, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_teachstr_5);
};


func void dia_harad_teachstr_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(109954);
    info_addchoice(109954, dialog_back, dia_harad_teachstr_back);
    info_addchoice(109954, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_teachstr_1);
    info_addchoice(109954, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_teachstr_5);
};


func void dia_harad_teachstr_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(109954);
    info_addchoice(109954, dialog_back, dia_harad_teachstr_back);
    info_addchoice(109954, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_teachstr_1);
    info_addchoice(109954, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_teachstr_5);
};


func void dia_vatras_teach_info() {
    ai_output(other, self, "DIA_Vatras_Teach_15_00");
    info_clearchoices(111207);
    info_addchoice(111207, dialog_back, dia_vatras_teach_back);
    info_addchoice(111207, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_vatras_teach_1);
    info_addchoice(111207, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_vatras_teach_5);
};


func void dia_vatras_teach_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_high);
    info_clearchoices(111207);
    info_addchoice(111207, dialog_back, dia_vatras_teach_back);
    info_addchoice(111207, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_vatras_teach_1);
    info_addchoice(111207, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_vatras_teach_5);
};


func void dia_vatras_teach_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_high);
    info_clearchoices(111207);
    info_addchoice(111207, dialog_back, dia_vatras_teach_back);
    info_addchoice(111207, b_buildlearnstring(print_learnmana1, b_getlearncostattribute(other, atr_mana_max, 1)), dia_vatras_teach_1);
    info_addchoice(111207, b_buildlearnstring(print_learnmana5, b_getlearncostattribute(other, atr_mana_max, 5)), dia_vatras_teach_5);
};


func void dia_cassia_teach_info() {
    ai_output(other, self, "DIA_Cassia_TEACH_15_00");
    info_clearchoices(111658);
    info_addchoice(111658, dialog_back, dia_cassia_teach_back);
    info_addchoice(111658, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cassia_teach_1);
    info_addchoice(111658, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cassia_teach_5);
};


func void dia_cassia_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(111658);
    info_addchoice(111658, dialog_back, dia_cassia_teach_back);
    info_addchoice(111658, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cassia_teach_1);
    info_addchoice(111658, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cassia_teach_5);
};


func void dia_cassia_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(111658);
    info_addchoice(111658, dialog_back, dia_cassia_teach_back);
    info_addchoice(111658, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_cassia_teach_1);
    info_addchoice(111658, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_cassia_teach_5);
};


func void dia_lares_teach_info() {
    ai_output(other, self, "DIA_Addon_Lares_Teach_15_00");
    lares_merkedex = other.attribute[5];
    lares_merkestr = other.attribute[4];
    info_clearchoices(111886);
    info_addchoice(111886, dialog_back, dia_lares_teach_back);
    info_addchoice(111886, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_teach_1);
    info_addchoice(111886, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_teach_5);
    info_addchoice(111886, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_lares_teachstr_1);
    info_addchoice(111886, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_lares_teachstr_5);
};


func void dia_lares_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_med);
    info_clearchoices(111886);
    info_addchoice(111886, dialog_back, dia_lares_teach_back);
    info_addchoice(111886, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_teach_1);
    info_addchoice(111886, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_teach_5);
    info_addchoice(111886, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_lares_teachstr_1);
    info_addchoice(111886, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_lares_teachstr_5);
};


func void dia_lares_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_med);
    info_clearchoices(111886);
    info_addchoice(111886, dialog_back, dia_lares_teach_back);
    info_addchoice(111886, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_teach_1);
    info_addchoice(111886, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_teach_5);
    info_addchoice(111886, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_lares_teachstr_1);
    info_addchoice(111886, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_lares_teachstr_5);
};


func void dia_lares_teachstr_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_low);
    info_clearchoices(111886);
    info_addchoice(111886, dialog_back, dia_lares_teach_back);
    info_addchoice(111886, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_teach_1);
    info_addchoice(111886, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_teach_5);
    info_addchoice(111886, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_lares_teachstr_1);
    info_addchoice(111886, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_lares_teachstr_5);
};


func void dia_lares_teachstr_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_low);
    info_clearchoices(111886);
    info_addchoice(111886, dialog_back, dia_lares_teach_back);
    info_addchoice(111886, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_teach_1);
    info_addchoice(111886, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_teach_5);
    info_addchoice(111886, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_lares_teachstr_1);
    info_addchoice(111886, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_lares_teachstr_5);
};


func void dia_lares_di_training_info() {
    ai_output(other, self, "DIA_Lares_DI_Training_15_00");
    ai_output(self, other, "DIA_Lares_DI_Training_09_01");
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_lares_di_training_1h_1() {
    if(b_teachfighttalentpercent(self, other, npc_talent_1h, 1, 100)) {
        ai_output(self, other, "DIA_Lares_DI_Training_1H_1_09_00");
    };
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_lares_di_training_1h_5() {
    if(b_teachfighttalentpercent(self, other, npc_talent_1h, 5, 100)) {
        ai_output(self, other, "DIA_Lares_DI_Training_1H_5_09_00");
    };
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_lares_di_training_dex_1() {
    if(b_teachattributepoints(self, other, atr_dexterity, 1, t_med)) {
        ai_output(self, other, "DIA_Lares_DI_Training_DEX_1_09_00");
    };
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_lares_di_training_dex_5() {
    if(b_teachattributepoints(self, other, atr_dexterity, 5, t_med)) {
        ai_output(self, other, "DIA_Lares_DI_Training_DEX_5_09_00");
    };
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_lares_di_training_sneak() {
    if(b_teachthieftalent(self, other, npc_talent_sneak)) {
        ai_output(self, other, "DIA_Lares_DI_Training_SNEAK_09_00");
    };
    info_clearchoices(111932);
    info_addchoice(111932, dialog_back, dia_lares_di_training_back);
    if(npc_gettalentskill(hero, npc_talent_sneak) == false) {
        info_addchoice(111932, "Schleichen lernen", dia_lares_di_training_sneak);
    };
    info_addchoice(111932, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_lares_di_training_dex_1);
    info_addchoice(111932, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_lares_di_training_dex_5);
    info_addchoice(111932, b_buildlearnstring(print_learn1h1, b_getlearncosttalent(other, npc_talent_1h, 1)), dia_lares_di_training_1h_1);
    info_addchoice(111932, b_buildlearnstring(print_learn1h5, b_getlearncosttalent(other, npc_talent_1h, 5)), dia_lares_di_training_1h_5);
};


func void dia_carl_teach_info() {
    ai_output(other, self, "DIA_Carl_Teach_15_00");
    info_clearchoices(112139);
    info_addchoice(112139, dialog_back, dia_carl_teach_back);
    info_addchoice(112139, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_teach_str_1);
    info_addchoice(112139, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_teach_str_5);
};


func void dia_carl_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_high);
    info_clearchoices(112139);
    info_addchoice(112139, dialog_back, dia_carl_teach_back);
    info_addchoice(112139, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_teach_str_1);
    info_addchoice(112139, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_teach_str_5);
};


func void dia_carl_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_high);
    info_clearchoices(112139);
    info_addchoice(112139, dialog_back, dia_carl_teach_back);
    info_addchoice(112139, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_teach_str_1);
    info_addchoice(112139, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_teach_str_5);
};


func void dia_harad_mod_teachstr_info() {
    ai_output(other, self, "DIA_HERO_Train_STR_15_01");
    harad_mod_merke_str = other.attribute[4];
    info_clearchoices(113322);
    info_addchoice(113322, dialog_back, dia_harad_mod_teachstr_back);
    info_addchoice(113322, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_mod_teachstr_1);
    info_addchoice(113322, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_mod_teachstr_5);
};


func void dia_harad_mod_teachstr_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_med);
    info_clearchoices(113322);
    info_addchoice(113322, dialog_back, dia_harad_mod_teachstr_back);
    info_addchoice(113322, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_mod_teachstr_1);
    info_addchoice(113322, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_mod_teachstr_5);
};


func void dia_harad_mod_teachstr_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_med);
    info_clearchoices(113322);
    info_addchoice(113322, dialog_back, dia_harad_mod_teachstr_back);
    info_addchoice(113322, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_harad_mod_teachstr_1);
    info_addchoice(113322, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_harad_mod_teachstr_5);
};


func void dia_mod_erol_teach_info() {
    ai_output(other, self, "DIA_Mod_Erol_Teach_15_00");
    if(erol_bonus == false) {
        ai_output(self, other, "DIA_Mod_Erol_Teach_Add_10_00");
        ai_output(self, other, "DIA_Mod_Erol_Teach_Add_10_01");
        ai_output(self, other, "DIA_Mod_Erol_Teach_Add_10_02");
        ai_output(self, other, "DIA_Mod_Erol_Teach_Add_10_03");
        b_raiseattribute(other, atr_strength, 1);
        erol_bonus = true;
    }
    else {
        ai_output(self, other, "DIA_Mod_Erol_Teach_Add_10_04");
        info_clearchoices(113748);
        info_addchoice(113748, dialog_back, dia_mod_erol_teach_back);
        info_addchoice(113748, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mod_erol_teach_str_1);
        info_addchoice(113748, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mod_erol_teach_str_5);
    };
};


func void dia_mod_erol_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(113748);
    info_addchoice(113748, dialog_back, dia_mod_erol_teach_back);
    info_addchoice(113748, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mod_erol_teach_str_1);
    info_addchoice(113748, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mod_erol_teach_str_5);
};


func void dia_mod_erol_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(113748);
    info_addchoice(113748, dialog_back, dia_mod_erol_teach_back);
    info_addchoice(113748, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_mod_erol_teach_str_1);
    info_addchoice(113748, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_mod_erol_teach_str_5);
};


func void dia_carl_mod_teach_info() {
    ai_output(other, self, "DIA_HERO_Train_STR_15_01");
    info_clearchoices(114240);
    info_addchoice(114240, dialog_back, dia_carl_mod_teach_back);
    info_addchoice(114240, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_mod_teach_str_1);
    info_addchoice(114240, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_mod_teach_str_5);
};


func void dia_carl_mod_teach_str_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_high);
    info_clearchoices(114240);
    info_addchoice(114240, dialog_back, dia_carl_mod_teach_back);
    info_addchoice(114240, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_mod_teach_str_1);
    info_addchoice(114240, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_mod_teach_str_5);
};


func void dia_carl_mod_teach_str_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_high);
    info_clearchoices(114240);
    info_addchoice(114240, dialog_back, dia_carl_mod_teach_back);
    info_addchoice(114240, b_buildlearnstring(print_learnstr1, b_getlearncostattribute(other, atr_strength, 1)), dia_carl_mod_teach_str_1);
    info_addchoice(114240, b_buildlearnstring(print_learnstr5, b_getlearncostattribute(other, atr_strength, 5)), dia_carl_mod_teach_str_5);
};


func void dia_rengaru_mod_teach_info() {
    ai_output(other, self, "DIA_HERO_Train_DEX_15_01");
    info_clearchoices(114508);
    info_addchoice(114508, dialog_back, dia_rengaru_mod_teach_back);
    info_addchoice(114508, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_rengaru_mod_teach_1);
    info_addchoice(114508, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_rengaru_mod_teach_5);
};


func void dia_rengaru_mod_teach_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(114508);
    info_addchoice(114508, dialog_back, dia_rengaru_mod_teach_back);
    info_addchoice(114508, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_rengaru_mod_teach_1);
    info_addchoice(114508, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_rengaru_mod_teach_5);
};


func void dia_rengaru_mod_teach_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(114508);
    info_addchoice(114508, dialog_back, dia_rengaru_mod_teach_back);
    info_addchoice(114508, b_buildlearnstring(print_learndex1, b_getlearncostattribute(other, atr_dexterity, 1)), dia_rengaru_mod_teach_1);
    info_addchoice(114508, b_buildlearnstring(print_learndex5, b_getlearncostattribute(other, atr_dexterity, 5)), dia_rengaru_mod_teach_5);
};


func void dia_ch_strength_info() {
    info_clearchoices(117196);
    info_addchoice(117196, dialog_back, dia_ch_strength_back);
    info_addchoice(117196, b_buildlearnstring("St�rke + 20", b_getlearncostattribute(other, atr_strength, 20)), dia_ch_strength_20);
    info_addchoice(117196, b_buildlearnstring("St�rke + 10", b_getlearncostattribute(other, atr_strength, 10)), dia_ch_strength_10);
    info_addchoice(117196, b_buildlearnstring("St�rke + 5", b_getlearncostattribute(other, atr_strength, 5)), dia_ch_strength_5);
    info_addchoice(117196, b_buildlearnstring("St�rke + 1", b_getlearncostattribute(other, atr_strength, 1)), dia_ch_strength_1);
};


func void dia_ch_strength_1() {
    b_teachattributepoints(self, other, atr_strength, 1, t_max);
    info_clearchoices(117196);
    info_addchoice(117196, dialog_back, dia_ch_strength_back);
    info_addchoice(117196, b_buildlearnstring("St�rke + 20", b_getlearncostattribute(other, atr_strength, 20)), dia_ch_strength_20);
    info_addchoice(117196, b_buildlearnstring("St�rke + 10", b_getlearncostattribute(other, atr_strength, 10)), dia_ch_strength_10);
    info_addchoice(117196, b_buildlearnstring("St�rke + 5", b_getlearncostattribute(other, atr_strength, 5)), dia_ch_strength_5);
    info_addchoice(117196, b_buildlearnstring("St�rke + 1", b_getlearncostattribute(other, atr_strength, 1)), dia_ch_strength_1);
};


func void dia_ch_strength_5() {
    b_teachattributepoints(self, other, atr_strength, 5, t_max);
    info_clearchoices(117196);
    info_addchoice(117196, dialog_back, dia_ch_strength_back);
    info_addchoice(117196, b_buildlearnstring("St�rke + 20", b_getlearncostattribute(other, atr_strength, 20)), dia_ch_strength_20);
    info_addchoice(117196, b_buildlearnstring("St�rke + 10", b_getlearncostattribute(other, atr_strength, 10)), dia_ch_strength_10);
    info_addchoice(117196, b_buildlearnstring("St�rke + 5", b_getlearncostattribute(other, atr_strength, 5)), dia_ch_strength_5);
    info_addchoice(117196, b_buildlearnstring("St�rke + 1", b_getlearncostattribute(other, atr_strength, 1)), dia_ch_strength_1);
};


func void dia_ch_strength_10() {
    b_teachattributepoints(self, other, atr_strength, 10, t_max);
    info_clearchoices(117196);
    info_addchoice(117196, dialog_back, dia_ch_strength_back);
    info_addchoice(117196, b_buildlearnstring("St�rke + 20", b_getlearncostattribute(other, atr_strength, 20)), dia_ch_strength_20);
    info_addchoice(117196, b_buildlearnstring("St�rke + 10", b_getlearncostattribute(other, atr_strength, 10)), dia_ch_strength_10);
    info_addchoice(117196, b_buildlearnstring("St�rke + 5", b_getlearncostattribute(other, atr_strength, 5)), dia_ch_strength_5);
    info_addchoice(117196, b_buildlearnstring("St�rke + 1", b_getlearncostattribute(other, atr_strength, 1)), dia_ch_strength_1);
};


func void dia_ch_strength_20() {
    b_teachattributepoints(self, other, atr_strength, 20, t_max);
    info_clearchoices(117196);
    info_addchoice(117196, dialog_back, dia_ch_strength_back);
    info_addchoice(117196, b_buildlearnstring("St�rke + 20", b_getlearncostattribute(other, atr_strength, 20)), dia_ch_strength_20);
    info_addchoice(117196, b_buildlearnstring("St�rke + 10", b_getlearncostattribute(other, atr_strength, 10)), dia_ch_strength_10);
    info_addchoice(117196, b_buildlearnstring("St�rke + 5", b_getlearncostattribute(other, atr_strength, 5)), dia_ch_strength_5);
    info_addchoice(117196, b_buildlearnstring("St�rke + 1", b_getlearncostattribute(other, atr_strength, 1)), dia_ch_strength_1);
};


func void dia_ch_dex_info() {
    info_clearchoices(117204);
    info_addchoice(117204, dialog_back, dia_ch_dex_back);
    info_addchoice(117204, b_buildlearnstring("Geschick + 20", b_getlearncostattribute(other, atr_dexterity, 20)), dia_ch_dex_20);
    info_addchoice(117204, b_buildlearnstring("Geschick + 10", b_getlearncostattribute(other, atr_dexterity, 10)), dia_ch_dex_10);
    info_addchoice(117204, b_buildlearnstring("Geschick + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_ch_dex_5);
    info_addchoice(117204, b_buildlearnstring("Geschick + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_ch_dex_1);
};


func void dia_ch_dex_1() {
    b_teachattributepoints(self, other, atr_dexterity, 1, t_max);
    info_clearchoices(117204);
    info_addchoice(117204, dialog_back, dia_ch_dex_back);
    info_addchoice(117204, b_buildlearnstring("Geschick + 20", b_getlearncostattribute(other, atr_dexterity, 20)), dia_ch_dex_20);
    info_addchoice(117204, b_buildlearnstring("Geschick + 10", b_getlearncostattribute(other, atr_dexterity, 10)), dia_ch_dex_10);
    info_addchoice(117204, b_buildlearnstring("Geschick + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_ch_dex_5);
    info_addchoice(117204, b_buildlearnstring("Geschick + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_ch_dex_1);
};


func void dia_ch_dex_5() {
    b_teachattributepoints(self, other, atr_dexterity, 5, t_max);
    info_clearchoices(117204);
    info_addchoice(117204, dialog_back, dia_ch_dex_back);
    info_addchoice(117204, b_buildlearnstring("Geschick + 20", b_getlearncostattribute(other, atr_dexterity, 20)), dia_ch_dex_20);
    info_addchoice(117204, b_buildlearnstring("Geschick + 10", b_getlearncostattribute(other, atr_dexterity, 10)), dia_ch_dex_10);
    info_addchoice(117204, b_buildlearnstring("Geschick + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_ch_dex_5);
    info_addchoice(117204, b_buildlearnstring("Geschick + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_ch_dex_1);
};


func void dia_ch_dex_10() {
    b_teachattributepoints(self, other, atr_dexterity, 10, t_max);
    info_clearchoices(117204);
    info_addchoice(117204, dialog_back, dia_ch_dex_back);
    info_addchoice(117204, b_buildlearnstring("Geschick + 20", b_getlearncostattribute(other, atr_dexterity, 20)), dia_ch_dex_20);
    info_addchoice(117204, b_buildlearnstring("Geschick + 10", b_getlearncostattribute(other, atr_dexterity, 10)), dia_ch_dex_10);
    info_addchoice(117204, b_buildlearnstring("Geschick + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_ch_dex_5);
    info_addchoice(117204, b_buildlearnstring("Geschick + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_ch_dex_1);
};


func void dia_ch_dex_20() {
    b_teachattributepoints(self, other, atr_dexterity, 20, t_max);
    info_clearchoices(117204);
    info_addchoice(117204, dialog_back, dia_ch_dex_back);
    info_addchoice(117204, b_buildlearnstring("Geschick + 20", b_getlearncostattribute(other, atr_dexterity, 20)), dia_ch_dex_20);
    info_addchoice(117204, b_buildlearnstring("Geschick + 10", b_getlearncostattribute(other, atr_dexterity, 10)), dia_ch_dex_10);
    info_addchoice(117204, b_buildlearnstring("Geschick + 5", b_getlearncostattribute(other, atr_dexterity, 5)), dia_ch_dex_5);
    info_addchoice(117204, b_buildlearnstring("Geschick + 1", b_getlearncostattribute(other, atr_dexterity, 1)), dia_ch_dex_1);
};


func void dia_ch_mana_info() {
    info_clearchoices(117219);
    info_addchoice(117219, b_buildlearnstring("Mana + 20", b_getlearncostattribute(other, atr_mana_max, 20)), dia_ch_mana_20);
    info_addchoice(117219, b_buildlearnstring("Mana + 10", b_getlearncostattribute(other, atr_mana_max, 10)), dia_ch_mana_10);
    info_addchoice(117219, b_buildlearnstring("Mana + 5", b_getlearncostattribute(other, atr_mana_max, 5)), dia_ch_mana_5);
    info_addchoice(117219, b_buildlearnstring("Mana + 1", b_getlearncostattribute(other, atr_mana_max, 1)), dia_ch_mana_1);
};


func void dia_ch_mana_1() {
    b_teachattributepoints(self, other, atr_mana_max, 1, t_max);
    info_clearchoices(117219);
    info_addchoice(117219, dialog_back, dia_ch_mana_back);
    info_addchoice(117219, b_buildlearnstring("Mana + 20", b_getlearncostattribute(other, atr_mana_max, 20)), dia_ch_mana_20);
    info_addchoice(117219, b_buildlearnstring("Mana + 10", b_getlearncostattribute(other, atr_mana_max, 10)), dia_ch_mana_10);
    info_addchoice(117219, b_buildlearnstring("Mana + 5", b_getlearncostattribute(other, atr_mana_max, 5)), dia_ch_mana_5);
    info_addchoice(117219, b_buildlearnstring("Mana + 1", b_getlearncostattribute(other, atr_mana_max, 1)), dia_ch_mana_1);
};


func void dia_ch_mana_5() {
    b_teachattributepoints(self, other, atr_mana_max, 5, t_max);
    info_clearchoices(117219);
    info_addchoice(117219, dialog_back, dia_ch_mana_back);
    info_addchoice(117219, b_buildlearnstring("Mana + 20", b_getlearncostattribute(other, atr_mana_max, 20)), dia_ch_mana_20);
    info_addchoice(117219, b_buildlearnstring("Mana + 10", b_getlearncostattribute(other, atr_mana_max, 10)), dia_ch_mana_10);
    info_addchoice(117219, b_buildlearnstring("Mana + 5", b_getlearncostattribute(other, atr_mana_max, 5)), dia_ch_mana_5);
    info_addchoice(117219, b_buildlearnstring("Mana + 1", b_getlearncostattribute(other, atr_mana_max, 1)), dia_ch_mana_1);
};


func void dia_ch_mana_10() {
    b_teachattributepoints(self, other, atr_mana_max, 10, t_max);
    info_clearchoices(117219);
    info_addchoice(117219, dialog_back, dia_ch_mana_back);
    info_addchoice(117219, b_buildlearnstring("Mana + 20", b_getlearncostattribute(other, atr_mana_max, 20)), dia_ch_mana_20);
    info_addchoice(117219, b_buildlearnstring("Mana + 10", b_getlearncostattribute(other, atr_mana_max, 10)), dia_ch_mana_10);
    info_addchoice(117219, b_buildlearnstring("Mana + 5", b_getlearncostattribute(other, atr_mana_max, 5)), dia_ch_mana_5);
    info_addchoice(117219, b_buildlearnstring("Mana + 1", b_getlearncostattribute(other, atr_mana_max, 1)), dia_ch_mana_1);
};


func void dia_ch_mana_20() {
    b_teachattributepoints(self, other, atr_mana_max, 20, t_max);
    info_clearchoices(117219);
    info_addchoice(117219, dialog_back, dia_ch_mana_back);
    info_addchoice(117219, b_buildlearnstring("Mana + 20", b_getlearncostattribute(other, atr_mana_max, 20)), dia_ch_mana_20);
    info_addchoice(117219, b_buildlearnstring("Mana + 10", b_getlearncostattribute(other, atr_mana_max, 10)), dia_ch_mana_10);
    info_addchoice(117219, b_buildlearnstring("Mana + 5", b_getlearncostattribute(other, atr_mana_max, 5)), dia_ch_mana_5);
    info_addchoice(117219, b_buildlearnstring("Mana + 1", b_getlearncostattribute(other, atr_mana_max, 1)), dia_ch_mana_1);
};


func void dia_ch_kampf_einhand_info() {
    info_clearchoices(117283);
    info_addchoice(117283, dialog_back, dia_ch_kampf_einhand_back);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 20", b_getlearncosttalent(other, npc_talent_1h, 20)), ch_training_combat_1h_20);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 10", b_getlearncosttalent(other, npc_talent_1h, 10)), ch_training_combat_1h_10);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 5", b_getlearncosttalent(other, npc_talent_1h, 5)), ch_training_combat_1h_5);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 1", b_getlearncosttalent(other, npc_talent_1h, 1)), ch_training_combat_1h_1);
};


func void ch_training_combat_1h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 1, 100);
    info_clearchoices(117283);
    info_addchoice(117283, dialog_back, dia_ch_kampf_einhand_back);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 20", b_getlearncosttalent(other, npc_talent_1h, 20)), ch_training_combat_1h_20);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 10", b_getlearncosttalent(other, npc_talent_1h, 10)), ch_training_combat_1h_10);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 5", b_getlearncosttalent(other, npc_talent_1h, 5)), ch_training_combat_1h_5);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 1", b_getlearncosttalent(other, npc_talent_1h, 1)), ch_training_combat_1h_1);
};


func void ch_training_combat_1h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 5, 100);
    info_clearchoices(117283);
    info_addchoice(117283, dialog_back, dia_ch_kampf_einhand_back);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 20", b_getlearncosttalent(other, npc_talent_1h, 20)), ch_training_combat_1h_20);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 10", b_getlearncosttalent(other, npc_talent_1h, 10)), ch_training_combat_1h_10);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 5", b_getlearncosttalent(other, npc_talent_1h, 5)), ch_training_combat_1h_5);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 1", b_getlearncosttalent(other, npc_talent_1h, 1)), ch_training_combat_1h_1);
};


func void ch_training_combat_1h_10() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 10, 100);
    info_clearchoices(117283);
    info_addchoice(117283, dialog_back, dia_ch_kampf_einhand_back);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 20", b_getlearncosttalent(other, npc_talent_1h, 20)), ch_training_combat_1h_20);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 10", b_getlearncosttalent(other, npc_talent_1h, 10)), ch_training_combat_1h_10);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 5", b_getlearncosttalent(other, npc_talent_1h, 5)), ch_training_combat_1h_5);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 1", b_getlearncosttalent(other, npc_talent_1h, 1)), ch_training_combat_1h_1);
};


func void ch_training_combat_1h_20() {
    b_teachfighttalentpercent(self, other, npc_talent_1h, 20, 100);
    info_clearchoices(117283);
    info_addchoice(117283, dialog_back, dia_ch_kampf_einhand_back);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 20", b_getlearncosttalent(other, npc_talent_1h, 20)), ch_training_combat_1h_20);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 10", b_getlearncosttalent(other, npc_talent_1h, 10)), ch_training_combat_1h_10);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 5", b_getlearncosttalent(other, npc_talent_1h, 5)), ch_training_combat_1h_5);
    info_addchoice(117283, b_buildlearnstring("Einhand-Waffen + 1", b_getlearncosttalent(other, npc_talent_1h, 1)), ch_training_combat_1h_1);
};


func void dia_ch_kampf_zweihand_info() {
    info_clearchoices(117291);
    info_addchoice(117291, dialog_back, dia_ch_kampf_zweihand_back);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 20", b_getlearncosttalent(other, npc_talent_2h, 20)), ch_training_combat_2h_20);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 10", b_getlearncosttalent(other, npc_talent_2h, 10)), ch_training_combat_2h_10);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 5", b_getlearncosttalent(other, npc_talent_2h, 5)), ch_training_combat_2h_5);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 1", b_getlearncosttalent(other, npc_talent_2h, 1)), ch_training_combat_2h_1);
};


func void ch_training_combat_2h_1() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 1, 100);
    info_clearchoices(117291);
    info_addchoice(117291, dialog_back, dia_ch_kampf_zweihand_back);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 20", b_getlearncosttalent(other, npc_talent_2h, 20)), ch_training_combat_2h_20);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 10", b_getlearncosttalent(other, npc_talent_2h, 10)), ch_training_combat_2h_10);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 5", b_getlearncosttalent(other, npc_talent_2h, 5)), ch_training_combat_2h_5);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 1", b_getlearncosttalent(other, npc_talent_2h, 1)), ch_training_combat_2h_1);
};


func void ch_training_combat_2h_5() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 5, 100);
    info_clearchoices(117291);
    info_addchoice(117291, dialog_back, dia_ch_kampf_zweihand_back);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 20", b_getlearncosttalent(other, npc_talent_2h, 20)), ch_training_combat_2h_20);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 10", b_getlearncosttalent(other, npc_talent_2h, 10)), ch_training_combat_2h_10);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 5", b_getlearncosttalent(other, npc_talent_2h, 5)), ch_training_combat_2h_5);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 1", b_getlearncosttalent(other, npc_talent_2h, 1)), ch_training_combat_2h_1);
};


func void ch_training_combat_2h_10() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 10, 100);
    info_clearchoices(117291);
    info_addchoice(117291, dialog_back, dia_ch_kampf_zweihand_back);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 20", b_getlearncosttalent(other, npc_talent_2h, 20)), ch_training_combat_2h_20);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 10", b_getlearncosttalent(other, npc_talent_2h, 10)), ch_training_combat_2h_10);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 5", b_getlearncosttalent(other, npc_talent_2h, 5)), ch_training_combat_2h_5);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 1", b_getlearncosttalent(other, npc_talent_2h, 1)), ch_training_combat_2h_1);
};


func void ch_training_combat_2h_20() {
    b_teachfighttalentpercent(self, other, npc_talent_2h, 20, 100);
    info_clearchoices(117291);
    info_addchoice(117291, dialog_back, dia_ch_kampf_zweihand_back);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 20", b_getlearncosttalent(other, npc_talent_2h, 20)), ch_training_combat_2h_20);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 10", b_getlearncosttalent(other, npc_talent_2h, 10)), ch_training_combat_2h_10);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 5", b_getlearncosttalent(other, npc_talent_2h, 5)), ch_training_combat_2h_5);
    info_addchoice(117291, b_buildlearnstring("Zweihand-Waffen + 1", b_getlearncosttalent(other, npc_talent_2h, 1)), ch_training_combat_2h_1);
};


func void dia_ch_kampf_bogen_info() {
    info_clearchoices(117299);
    info_addchoice(117299, dialog_back, dia_ch_kampf_bogen_back);
    info_addchoice(117299, b_buildlearnstring("Bogen + 20", b_getlearncosttalent(other, npc_talent_bow, 20)), ch_training_combat_bow_20);
    info_addchoice(117299, b_buildlearnstring("Bogen + 10", b_getlearncosttalent(other, npc_talent_bow, 10)), ch_training_combat_bow_10);
    info_addchoice(117299, b_buildlearnstring("Bogen + 5", b_getlearncosttalent(other, npc_talent_bow, 5)), ch_training_combat_bow_5);
    info_addchoice(117299, b_buildlearnstring("Bogen + 1", b_getlearncosttalent(other, npc_talent_bow, 1)), ch_training_combat_bow_1);
};


func void ch_training_combat_bow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 1, 100);
    info_clearchoices(117299);
    info_addchoice(117299, dialog_back, dia_ch_kampf_bogen_back);
    info_addchoice(117299, b_buildlearnstring("Bogen + 20", b_getlearncosttalent(other, npc_talent_bow, 20)), ch_training_combat_bow_20);
    info_addchoice(117299, b_buildlearnstring("Bogen + 10", b_getlearncosttalent(other, npc_talent_bow, 10)), ch_training_combat_bow_10);
    info_addchoice(117299, b_buildlearnstring("Bogen + 5", b_getlearncosttalent(other, npc_talent_bow, 5)), ch_training_combat_bow_5);
    info_addchoice(117299, b_buildlearnstring("Bogen + 1", b_getlearncosttalent(other, npc_talent_bow, 1)), ch_training_combat_bow_1);
};


func void ch_training_combat_bow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 5, 100);
    info_clearchoices(117299);
    info_addchoice(117299, dialog_back, dia_ch_kampf_bogen_back);
    info_addchoice(117299, b_buildlearnstring("Bogen + 20", b_getlearncosttalent(other, npc_talent_bow, 20)), ch_training_combat_bow_20);
    info_addchoice(117299, b_buildlearnstring("Bogen + 10", b_getlearncosttalent(other, npc_talent_bow, 10)), ch_training_combat_bow_10);
    info_addchoice(117299, b_buildlearnstring("Bogen + 5", b_getlearncosttalent(other, npc_talent_bow, 5)), ch_training_combat_bow_5);
    info_addchoice(117299, b_buildlearnstring("Bogen + 1", b_getlearncosttalent(other, npc_talent_bow, 1)), ch_training_combat_bow_1);
};


func void ch_training_combat_bow_10() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 10, 100);
    info_clearchoices(117299);
    info_addchoice(117299, dialog_back, dia_ch_kampf_bogen_back);
    info_addchoice(117299, b_buildlearnstring("Bogen + 20", b_getlearncosttalent(other, npc_talent_bow, 20)), ch_training_combat_bow_20);
    info_addchoice(117299, b_buildlearnstring("Bogen + 10", b_getlearncosttalent(other, npc_talent_bow, 10)), ch_training_combat_bow_10);
    info_addchoice(117299, b_buildlearnstring("Bogen + 5", b_getlearncosttalent(other, npc_talent_bow, 5)), ch_training_combat_bow_5);
    info_addchoice(117299, b_buildlearnstring("Bogen + 1", b_getlearncosttalent(other, npc_talent_bow, 1)), ch_training_combat_bow_1);
};


func void ch_training_combat_bow_20() {
    b_teachfighttalentpercent(self, other, npc_talent_bow, 20, 100);
    info_clearchoices(117299);
    info_addchoice(117299, dialog_back, dia_ch_kampf_bogen_back);
    info_addchoice(117299, b_buildlearnstring("Bogen + 20", b_getlearncosttalent(other, npc_talent_bow, 20)), ch_training_combat_bow_20);
    info_addchoice(117299, b_buildlearnstring("Bogen + 10", b_getlearncosttalent(other, npc_talent_bow, 10)), ch_training_combat_bow_10);
    info_addchoice(117299, b_buildlearnstring("Bogen + 5", b_getlearncosttalent(other, npc_talent_bow, 5)), ch_training_combat_bow_5);
    info_addchoice(117299, b_buildlearnstring("Bogen + 1", b_getlearncosttalent(other, npc_talent_bow, 1)), ch_training_combat_bow_1);
};


func void dia_ch_kampf_armbrust_info() {
    info_clearchoices(117307);
    info_addchoice(117307, dialog_back, dia_ch_kampf_armbrust_back);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 20", b_getlearncosttalent(other, npc_talent_crossbow, 20)), ch_training_combat_crossbow_20);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 10", b_getlearncosttalent(other, npc_talent_crossbow, 10)), ch_training_combat_crossbow_10);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 5", b_getlearncosttalent(other, npc_talent_crossbow, 5)), ch_training_combat_crossbow_5);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 1", b_getlearncosttalent(other, npc_talent_crossbow, 1)), ch_training_combat_crossbow_1);
};


func void ch_training_combat_crossbow_1() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 1, 100);
    info_clearchoices(117307);
    info_addchoice(117307, dialog_back, dia_ch_kampf_armbrust_back);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 20", b_getlearncosttalent(other, npc_talent_crossbow, 20)), ch_training_combat_crossbow_20);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 10", b_getlearncosttalent(other, npc_talent_crossbow, 10)), ch_training_combat_crossbow_10);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 5", b_getlearncosttalent(other, npc_talent_crossbow, 5)), ch_training_combat_crossbow_5);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 1", b_getlearncosttalent(other, npc_talent_crossbow, 1)), ch_training_combat_crossbow_1);
};


func void ch_training_combat_crossbow_5() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 5, 100);
    info_clearchoices(117307);
    info_addchoice(117307, dialog_back, dia_ch_kampf_armbrust_back);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 20", b_getlearncosttalent(other, npc_talent_crossbow, 20)), ch_training_combat_crossbow_20);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 10", b_getlearncosttalent(other, npc_talent_crossbow, 10)), ch_training_combat_crossbow_10);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 5", b_getlearncosttalent(other, npc_talent_crossbow, 5)), ch_training_combat_crossbow_5);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 1", b_getlearncosttalent(other, npc_talent_crossbow, 1)), ch_training_combat_crossbow_1);
};


func void ch_training_combat_crossbow_10() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 10, 100);
    info_clearchoices(117307);
    info_addchoice(117307, dialog_back, dia_ch_kampf_armbrust_back);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 20", b_getlearncosttalent(other, npc_talent_crossbow, 20)), ch_training_combat_crossbow_20);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 10", b_getlearncosttalent(other, npc_talent_crossbow, 10)), ch_training_combat_crossbow_10);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 5", b_getlearncosttalent(other, npc_talent_crossbow, 5)), ch_training_combat_crossbow_5);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 1", b_getlearncosttalent(other, npc_talent_crossbow, 1)), ch_training_combat_crossbow_1);
};


func void ch_training_combat_crossbow_20() {
    b_teachfighttalentpercent(self, other, npc_talent_crossbow, 20, 100);
    info_clearchoices(117307);
    info_addchoice(117307, dialog_back, dia_ch_kampf_armbrust_back);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 1", b_getlearncosttalent(other, npc_talent_crossbow, 1)), ch_training_combat_crossbow_1);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 5", b_getlearncosttalent(other, npc_talent_crossbow, 5)), ch_training_combat_crossbow_5);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 10", b_getlearncosttalent(other, npc_talent_crossbow, 10)), ch_training_combat_crossbow_10);
    info_addchoice(117307, b_buildlearnstring("Armbrust + 20", b_getlearncosttalent(other, npc_talent_crossbow, 20)), ch_training_combat_crossbow_20);
};