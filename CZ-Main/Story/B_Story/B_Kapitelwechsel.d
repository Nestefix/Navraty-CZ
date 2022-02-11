/* -------------------- CZ CHANGELOG -------------------- */

/*

v1.02:

(2x) CZ_Crait_SetStatus - opraveno sledování stavu vyvolané krajty

*/



func void B_Kapitelwechsel(var int neues_Kapitel,var int aktuelles_Level_Zen)
{
	CANSHOWSTAMINA = FALSE;
	Kapitel = neues_Kapitel;

	if(neues_Kapitel == 1)
	{
		IntroduceCH_01 = TRUE;
	}
	else if(neues_Kapitel == 2)
	{
		Sekob.flags = 0;
		Bengar.flags = 0;
		IntroduceCH_02 = TRUE;
	}
	else if(neues_Kapitel == 3)
	{
	}
	else if(neues_Kapitel == 4)
	{
		PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;
	}
	else if(neues_Kapitel == 5)
	{
		PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;
	}
	else if(neues_Kapitel == 6)
	{
		PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;
	};
	if(aktuelles_Level_Zen == OldWorld_Zen)
	{
		b_enter_oldworld();
		CZ_Crait_SetStatus();
	};
	if(aktuelles_Level_Zen == NEWWORLD_ZEN)
	{
		b_enter_newworld();
		CZ_Crait_SetStatus();
	};
	if(Kapitel == 1)
	{
		XP_Ambient = XP_AmbientKap1;
	};
	if(Kapitel == 2)
	{
		XP_Ambient = XP_AmbientKap2;
	};
	if(Kapitel == 3)
	{
		XP_Ambient = XP_AmbientKap3;
	};
	if(Kapitel == 4)
	{
		XP_Ambient = XP_AmbientKap4;
	};
	if(Kapitel == 5)
	{
		XP_Ambient = XP_AmbientKap5;
	};
	if(Kapitel == 6)
	{
		XP_Ambient = XP_AmbientKap6;
	};

	B_CheckLog();
	CANSHOWSTAMINA = TRUE;
};