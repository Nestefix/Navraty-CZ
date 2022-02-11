/* -------------------- CZ CHANGELOG -------------------- */

/*

v1.02:

(66x) CZ_SkillCheckCondition - přidáno zobrazování skill checků
(36x) systém výroby přepracován pomocí spinnerů
(2x) PC_Poison_Start_Poison, PC_Poison_Start_Poison_v2 - výroba jedu rozdělena do dvou možností


v1.00:

func int B_CheckAlchemySkill - upraveny výpisy

*/



var int CountAlchemyOverallBonus;
var int CountAlchemyOverallBonusDay;
var int OverallBonusAlchemy;

func void B_RaisekAlchemySkillNoInt(var int grade)
{
	if(grade == 1)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(96) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(48) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 30)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 15)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 2)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(48) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 30)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 3)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 4)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(4) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(2) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;				
		};
	}
	else if(grade == 5)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(2) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	};
	if(TalentCount_Alchemy[0] > 100)
	{
		TalentCount_Alchemy[0] = 100;
	};

	B_GivePlayerXP(grade * 10);
};

func void B_RaisekAlchemySkill(var int grade)
{
	var int daynow;

	daynow = Wld_GetDay();

	if(grade == 1)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(96) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(48) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 30)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 15)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 2)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(48) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 30)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 3)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(24) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(12) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(6) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 45)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	}
	else if(grade == 4)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(4) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 60)
		{
			if(Hlp_Random(2) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;				
		};
	}
	else if(grade == 5)
	{
		if(TalentCount_Alchemy[0] >= 90)
		{
			if(Hlp_Random(3) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else if(TalentCount_Alchemy[0] >= 75)
		{
			if(Hlp_Random(2) == 1)
			{
				TalentCount_Alchemy[0] += 1;
			};
		}
		else
		{
			TalentCount_Alchemy[0] += 1;
		};
	};
	if(TalentCount_Alchemy[0] > 100)
	{
		TalentCount_Alchemy[0] = 100;
	};

	B_GivePlayerXP(grade * 10);

	if(OverallBonusAlchemy < (10 * Kapitel))
	{
		CountAlchemyOverallBonus += 1;
	
		if(CountAlchemyOverallBonus >= 15)
		{
			if((hero.guild == GIL_KDF) || (hero.guild == GIL_KDW) || (hero.guild == GIL_KDM) || (hero.guild == GIL_GUR) || (hero.guild == GIL_NDM) || (hero.guild == GIL_NDW) || (hero.guild == GIL_NOV))
			{
				ATR_INTELLECT = ATR_INTELLECT + 1;
				Npc_SetTalentSkill(hero,NPC_TALENT_INTELLECT,ATR_INTELLECT);
				AI_Print("Inteligence + 1");
			};

			CountAlchemyOverallBonus = FALSE;
			OverallBonusAlchemy += 1;
		};
	};
};

func int B_CheckAlchemySkill(var int skill)
{
	var string concatText;

	if(TalentCount_Alchemy[0] >= Skill)
	{
		return TRUE;
	}
	else
	{
		concatText = ConcatStrings("Vyžaduje dovednost alchymie na úrovni ",IntToString(Skill));
		concatText = ConcatStrings(concatText," bodů");
		AI_PrintClr(concatText,177,58,17);
		B_Say(self,self,"$NOLEARNNOPOINTS");
		return FALSE;
	};

	return FALSE;
};

func void potionalchemy_s1()
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		//print_percent_bar_none(ATR_STAMINA[0],ATR_STAMINA_MAX[0] * 10,"Vynoslivost'",42,97);

		if(CinemaMod == TRUE)
		{
			Wld_PlayEffect("DIALOGSCOPE_FX",hero,hero,0,0,0,FALSE);
		};

		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_PotionAlchemy;
		CreateInvItems(hero,ItMi_Flask,1);
		AI_ProcessInfos(her);
	};
};

var int potionstartok;

instance PC_PotionAlchemy_End(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_PotionAlchemy_End_Condition;
	information = PC_PotionAlchemy_End_Info;
	permanent = TRUE;
	description = DIALOG_ENDE_WORK;
};

func int PC_PotionAlchemy_End_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		return TRUE;
	};
};

func void PC_PotionAlchemy_End_Info()
{
	b_endproductiondialog();
};

func void PC_Mana_Start_back()
{
	Info_ClearChoices(PC_Mana_Start);
};

instance PC_Mana_Start(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = PC_Mana_Start_Condition;
	information = PC_Mana_Start_Info;
	permanent = TRUE;
	description = "Připravit lektvary many";
};

func int PC_Mana_Start_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPo_Mana_01) / 3;
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Mana_04");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Mana_04
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Mana_04 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír čisté many")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Mana_04");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Mana_Herb_03) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Mana_03");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Mana_03
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Mana_03 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Elixír many")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Mana_03");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Mana_Herb_02) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Mana_02");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Mana_02
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Mana_02 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Extrakt many")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Mana_02");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Mana_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Mana_01");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Mana_01
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Mana_01 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Esence many")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Mana_01");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Mana_Start()
{
	Info_ClearChoices(PC_Mana_Start);
	Info_AddChoice(PC_Mana_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_04] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPo_Mana_01) >= 3) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Mana_Start,
			ConcatStrings("s@SPIN_ItPo_Mana_04 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír čisté many")
			),
			// "Elixír čisté many",
			PC_ItPo_Mana_04);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Mana_Herb_03) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Mana_Start,
			ConcatStrings("s@SPIN_ItPo_Mana_03 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Elixír many")
			),
			// "Elixír many",
			PC_ItPo_Mana_03);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Mana_Herb_02) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Mana_Start,
			ConcatStrings("s@SPIN_ItPo_Mana_02 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Extrakt many")
			),
			// "Extrakt many",
			PC_ItPo_Mana_02);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Mana_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Mana_Start,
			ConcatStrings("s@SPIN_ItPo_Mana_01 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Esence many")
			),
			// "Esence many",
			PC_ItPo_Mana_01);
	};

	Info_AddChoice(PC_Mana_Start,DIALOG_BACK,PC_Mana_Start_Back_Info);
};

func void PC_Mana_Start_Info()
{
	B_Mana_Start();
};

func void PC_Mana_Start_Back_Info()
{
	Info_ClearChoices(PC_Mana_Start);
};

func void PC_ItPo_Mana_01()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItPl_Mana_Herb_01,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
	CreateInvItems(hero,ItPo_Mana_01,1*InfoManagerSpinnerValue);
	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	
	repeat(i, InfoManagerSpinnerValue); var int i;
		B_RaisekAlchemySkill(1);
	end;
	
	InfoManagerSpinnerValue = 1;
	B_Mana_Start();
};

func void PC_ItPo_Mana_02()
{
	if(B_CheckAlchemySkill(10))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Mana_Herb_02,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Mana_02,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(2);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Mana_Start();
	}
	else
	{
		B_Mana_Start();
	};
};

func void PC_ItPo_Mana_03()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Mana_Herb_03,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Mana_03,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Mana_Start();
	}
	else
	{
		B_Mana_Start();
	};
};

func void PC_ItPo_Mana_04()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Mana_01,3*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Mana_Addon_04,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(4);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Mana_Start();
	}
	else
	{
		B_Mana_Start();
	};
};

func void PC_Health_Start_back()
{
	Info_ClearChoices(PC_Health_Start);
};

instance PC_Health_Start(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_Health_Start_Condition;
	information = PC_Health_Start_Info;
	permanent = TRUE;
	description = "Připravit lektvary hojivé síly";
};

func int PC_Health_Start_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItAt_Sting) / 5;
		max = min(max, Npc_HasItems(other, ItPl_Health_Herb_01) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_health_04_new");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_health_04_new
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_health_04_new ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 25, FALSE), "Elixír hojivé síly ze žihadel")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_health_04_new");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPo_Health_01) / 3;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Health_04");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Health_04
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Health_04 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír čisté hojivé síly")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Health_04");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Health_Herb_03) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Health_03");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Health_03
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Health_03 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Elixír hojivé síly")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Health_03");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Health_Herb_02) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Health_02");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Health_02
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Health_02 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Extrakt hojivé síly")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Health_02");
		
//-- Spinner Choice #5
		
		var int value5;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Health_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Blueplant) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value5 < min) { value5 = min; };
		if(value5 > max) { value5 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Health_01");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value5;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value5 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Health_01
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Health_01 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Esence hojivé síly")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value5));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Health_01");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Health_Start()
{
	Info_ClearChoices(PC_Health_Start);
	Info_AddChoice(PC_Health_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((KNOWFULLHEALTH2 == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItAt_Sting) >= 5) && (Npc_HasItems(hero,ItPl_Health_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Health_Start,
			ConcatStrings("s@SPIN_itpo_health_04_new ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 25, FALSE), "Elixír hojivé síly ze žihadel")
			),
			// "Elixír hojivé síly ze žihadel",
			pc_itpo_health_04_new);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_04] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPo_Health_01) >= 3) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Health_Start,
			ConcatStrings("s@SPIN_ItPo_Health_04 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír čisté hojivé síly")
			),
			// "Elixír čisté hojivé síly",
			PC_ItPo_Health_04);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Health_Herb_03) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Health_Start,
			ConcatStrings("s@SPIN_ItPo_Health_03 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Elixír hojivé síly")
			),
			// "Elixír hojivé síly",
			PC_ItPo_Health_03);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Health_Herb_02) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Health_Start,
			ConcatStrings("s@SPIN_ItPo_Health_02 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Extrakt hojivé síly")
			),
			// "Extrakt hojivé síly",
			PC_ItPo_Health_02);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Health_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1))
	{
		Info_AddChoice(PC_Health_Start,
			ConcatStrings("s@SPIN_ItPo_Health_01 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Esence hojivé síly")
			),
			// "Esence hojivé síly",
			PC_ItPo_Health_01);
	};

	Info_AddChoice(PC_Health_Start,DIALOG_BACK,PC_Health_Start_Back_Info);
};

func void PC_Health_Start_Info()
{
	B_Health_Start();
};

func void PC_Health_Start_Back_Info()
{
	Info_ClearChoices(PC_Health_Start);
};

func void PC_ItPo_Health_01()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItPl_Health_Herb_01,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
	CreateInvItems(hero,ItPo_Health_01,1*InfoManagerSpinnerValue);
	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	
	repeat(i, InfoManagerSpinnerValue); var int i;
		B_RaisekAlchemySkill(1);
	end;
	
	InfoManagerSpinnerValue = 1;
	B_Health_Start();
};

func void PC_ItPo_Health_02()
{
	if(B_CheckAlchemySkill(10))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Health_Herb_02,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Health_02,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(2);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Health_Start();
	}
	else
	{
		B_Health_Start();
	};
};

func void PC_ItPo_Health_03()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Health_Herb_03,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Health_03,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Health_Start();
	}
	else
	{
		B_Health_Start();
	};
};

func void PC_ItPo_Health_04()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Health_01,3*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Health_Addon_04,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(4);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Health_Start();
	}
	else
	{
		B_Health_Start();
	};
};

func void pc_itpo_health_04_New()
{
	if(B_CheckAlchemySkill(25))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_Sting,5*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Health_Herb_01,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Health_Addon_04_New,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Health_Start();
	}
	else
	{
		B_Health_Start();
	};
};

func void PC_Special_StaminaSpeed_back()
{
	Info_ClearChoices(PC_Special_StaminaSpeed);
};

instance PC_Special_StaminaSpeed(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = PC_Special_StaminaSpeed_Condition;
	information = PC_Special_StaminaSpeed_Info;
	permanent = TRUE;
	description = "Připravit lektvary výdrže a rychlosti";
};

func int PC_Special_StaminaSpeed_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItAt_BlackSnapperLiver) / 1;
		max = min(max, Npc_HasItems(other, ItFo_Addon_Grog) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_speed_03");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_speed_03
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_speed_03 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "'Černý chňapavec'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_speed_03");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Speed_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPo_Speed) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_speed_02");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_speed_02
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_speed_02 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Dvojitý lektvar rychlosti")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_speed_02");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Speed_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Speed");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Speed
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Speed ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Lektvar rychlosti")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Speed");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Blueplant) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_stamina");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_stamina
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_stamina ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 5, FALSE), "Lektvar výdrže")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_stamina");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Special_StaminaSpeed()
{
	Info_ClearChoices(PC_Special_StaminaSpeed);
	Info_AddChoice(PC_Special_StaminaSpeed,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((KNOWSPEED3 == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItAt_BlackSnapperLiver) >= 1) && (Npc_HasItems(hero,ItFo_Addon_Grog) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_StaminaSpeed,
			ConcatStrings("s@SPIN_itpo_speed_03 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "'Černý chňapavec'")
			),
			// "'Černý chňapavec'",
			pc_itpo_speed_03);
	};
	if((PLAYER_TALENT_ALCHEMY[15] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Speed_Herb_01) >= 1) && (Npc_HasItems(hero,ItPo_Speed) >= 1))
	{
		Info_AddChoice(PC_Special_StaminaSpeed,
			ConcatStrings("s@SPIN_itpo_speed_02 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Dvojitý lektvar rychlosti")
			),
			// "Dvojitý lektvar rychlosti",
			pc_itpo_speed_02);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Speed] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Speed_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_StaminaSpeed,
			ConcatStrings("s@SPIN_ItPo_Speed ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Lektvar rychlosti")
			),
			// "Lektvar rychlosti",
			PC_ItPo_Speed);
	};
	if((PLAYER_TALENT_ALCHEMY[17] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Blueplant) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_StaminaSpeed,
			ConcatStrings("s@SPIN_itpo_stamina ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 5, FALSE), "Lektvar výdrže")
			),
			// "Lektvar výdrže",
			pc_itpo_stamina);
	};

	Info_AddChoice(PC_Special_StaminaSpeed,DIALOG_BACK,PC_Special_StaminaSpeed_Back_Info);
};

func void PC_Special_StaminaSpeed_Info()
{
	B_Special_StaminaSpeed();
};

func void PC_Special_StaminaSpeed_Back_Info()
{
	Info_ClearChoices(PC_Special_StaminaSpeed);
};

func void pc_itpo_stamina()
{
	if(B_CheckAlchemySkill(5))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Blueplant,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_stamina,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(2);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_StaminaSpeed();
	}
	else
	{
		B_Special_StaminaSpeed();
	};
};

func void PC_ItPo_Speed()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItPl_Speed_Herb_01,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
	Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
	CreateInvItems(hero,ItPo_Speed,1*InfoManagerSpinnerValue);
	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	
	repeat(i, InfoManagerSpinnerValue); var int i;
		B_RaisekAlchemySkill(1);
	end;
	
	InfoManagerSpinnerValue = 1;
	B_Special_StaminaSpeed();
};

func void pc_itpo_speed_02()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Speed_Herb_01,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPo_Speed,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_speed_02,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(2);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_StaminaSpeed();
	}
	else
	{
		B_Special_StaminaSpeed();
	};
};

func void pc_itpo_speed_03()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_BlackSnapperLiver,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Addon_Grog,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_speed_03,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_StaminaSpeed();
	}
	else
	{
		B_Special_StaminaSpeed();
	};
};

func void PC_Special_Start_back()
{
	Info_ClearChoices(PC_Special_Start);
};

instance PC_Special_Start(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = PC_Special_Start_Condition;
	information = PC_Special_Start_Info;
	permanent = TRUE;
	description = "Připravit permanentní lektvary";
};

func int PC_Special_Start_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItAt_Addon_BCKopf) / 10;
		max = min(max, Npc_HasItems(other, ItPl_SwampHerb) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_intellect");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_intellect
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_intellect ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 75, FALSE), "Elixír rozumu")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_intellect");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Mana_Herb_03) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Perm_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Perm_Mana");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Perm_Mana
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Perm_Mana ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír ducha")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Perm_Mana");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Health_Herb_03) / 3;
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Perm_Health");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Perm_Health
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Perm_Health ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 40, FALSE), "Elixír života")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Perm_Health");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, itpl_super_herb) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Perm_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_perm_stamina");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_perm_stamina
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_perm_stamina ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Elixír výdrže")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_perm_stamina");
		
//-- Spinner Choice #5
		
		var int value5;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Dex_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Perm_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value5 < min) { value5 = min; };
		if(value5 > max) { value5 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Dex");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value5;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value5 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Dex
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Dex ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír obratnosti")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value5));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Dex");
		
//-- Spinner Choice #6
		
		var int value6;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Strength_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Perm_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value6 < min) { value6 = min; };
		if(value6 > max) { value6 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_ItPo_Strg");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value6;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value6 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_ItPo_Strg
		newDescription = ConcatStrings(newDescription, "s@SPIN_ItPo_Strg ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír síly")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value6));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_ItPo_Strg");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Special_Start()
{
	Info_ClearChoices(PC_Special_Start);
	Info_AddChoice(PC_Special_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((KNOWPERMINT == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItAt_Addon_BCKopf) >= 10) && (Npc_HasItems(hero,ItPl_SwampHerb) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_itpo_intellect ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 75, FALSE), "Elixír rozumu")
			),
			// "Elixír rozumu",
			pc_itpo_intellect);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Mana_Herb_03) >= 1) && (Npc_HasItems(hero,ItPl_Perm_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_ItPo_Perm_Mana ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír ducha")
			),
			// "Elixír ducha",
			PC_ItPo_Perm_Mana);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Health_Herb_03) >= 3) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_ItPo_Perm_Health ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 40, FALSE), "Elixír života")
			),
			// "Elixír života",
			PC_ItPo_Perm_Health);
	};
	if((PLAYER_TALENT_ALCHEMY[18] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,itpl_super_herb) >= 1) && (Npc_HasItems(hero,ItPl_Perm_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_itpo_perm_stamina ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Elixír výdrže")
			),
			// "Elixír výdrže",
			pc_itpo_perm_stamina);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Dex_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Perm_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_ItPo_Dex ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír obratnosti")
			),
			// "Elixír obratnosti",
			PC_ItPo_Dex);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Strength_Herb_01) >= 1) && (Npc_HasItems(hero,ItPl_Perm_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_Start,
			ConcatStrings("s@SPIN_ItPo_Strg ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír síly")
			),
			// "Elixír síly",
			PC_ItPo_Strg);
	};

	Info_AddChoice(PC_Special_Start,DIALOG_BACK,PC_Special_Start_Back_Info);
};

func void PC_Special_Start_Info()
{
	B_Special_Start();
};

func void PC_Special_Start_Back_Info()
{
	Info_ClearChoices(PC_Special_Start);
};

func void pc_itpo_perm_stamina()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,itpl_super_herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Perm_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_perm_stamina,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void PC_ItPo_Perm_Health()
{
	if(B_CheckAlchemySkill(40))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Health_Herb_03,3*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Perm_Health,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void PC_ItPo_Perm_Mana()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Mana_Herb_03,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Perm_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Perm_Mana,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void pc_itpo_intellect()
{
	if(B_CheckAlchemySkill(75))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_Addon_BCKopf,10*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_SwampHerb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_intellect,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void PC_ItPo_Dex()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Dex_Herb_01,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Perm_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Perm_DEX,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void PC_ItPo_Strg()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Strength_Herb_01,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Perm_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItPo_Perm_STR,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(5);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Special_Start();
	}
	else
	{
		B_Special_Start();
	};
};

func void PC_Special_DefenceStart_back()
{
	Info_ClearChoices(PC_Special_DefenceStart);
};

instance PC_Special_DefenceStart(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = PC_Special_DefenceStart_Condition;
	information = PC_Special_DefenceStart_Info;
	permanent = TRUE;
	description = "Připravit lektvary magické ochrany";
};

func int PC_Special_DefenceStart_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItAt_Wing) / 15;
		max = min(max, Npc_HasItems(other, ItPl_Weed) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_falldefence");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_falldefence
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_falldefence ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír odolnosti proti pádu")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_falldefence");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItAt_WaranFiretongue) / 5;
		max = min(max, Npc_HasItems(other, ItPl_Mana_Herb_02) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_firedefence");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_firedefence
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_firedefence ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "Elixír ochrany proti ohni")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_firedefence");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Mushroom_02) / 25;
		max = min(max, Npc_HasItems(other, ItFo_Booze) / 1);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Alcohol) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_itpo_magdefence");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_itpo_magdefence
		newDescription = ConcatStrings(newDescription, "s@SPIN_itpo_magdefence ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "Elixír ochrany proti magii")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_itpo_magdefence");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_DefenceStart()
{
	Info_ClearChoices(PC_Special_DefenceStart);
	Info_AddChoice(PC_Special_DefenceStart,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((KNOWPROTFALL == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItAt_Wing) >= 15) && (Npc_HasItems(hero,ItPl_Weed) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_DefenceStart,
			ConcatStrings("s@SPIN_itpo_falldefence ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Elixír odolnosti proti pádu")
			),
			// "Elixír odolnosti proti pádu",
			pc_itpo_falldefence);
	};
	if((KNOWFIREDEF == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItAt_WaranFiretongue) >= 5) && (Npc_HasItems(hero,ItPl_Mana_Herb_02) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_DefenceStart,
			ConcatStrings("s@SPIN_itpo_firedefence ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "Elixír ochrany proti ohni")
			),
			// "Elixír ochrany proti ohni",
			pc_itpo_firedefence);
	};
	if((KNOWMAGDEF == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItFo_Alcohol) >= 1) && (Npc_HasItems(hero,ItPl_Mushroom_02) >= 25) && (Npc_HasItems(hero,ItFo_Booze) >= 1) && (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1))
	{
		Info_AddChoice(PC_Special_DefenceStart,
			ConcatStrings("s@SPIN_itpo_magdefence ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "Elixír ochrany proti magii")
			),
			// "Elixír ochrany proti magii",
			pc_itpo_magdefence);
	};

	Info_AddChoice(PC_Special_DefenceStart,DIALOG_BACK,PC_Special_DefenceStart_Back_Info);
};

func void PC_Special_DefenceStart_Info()
{
	B_DefenceStart();
};

func void PC_Special_DefenceStart_Back_Info()
{
	Info_ClearChoices(PC_Special_DefenceStart);
};

func void pc_itpo_magdefence()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPl_Mushroom_02,25*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Booze,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_magdefence,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(4);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_DefenceStart();
	}
	else
	{
		B_DefenceStart();
	};
};


func void pc_itpo_firedefence()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_WaranFiretongue,5*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Mana_Herb_02,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_firedefence,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(4);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_DefenceStart();
	}
	else
	{
		B_DefenceStart();
	};
};

func void pc_itpo_falldefence()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_Wing,15*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Weed,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_Temp_Herb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,itpo_falldefence,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(4);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_DefenceStart();
	}
	else
	{
		B_DefenceStart();
	};
};


func void PC_Special_Mutagen_back()
{
	Info_ClearChoices(PC_Special_Mutagen);
};

instance PC_Special_Mutagen(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = PC_Special_Mutagen_Condition;
	information = PC_Special_Mutagen_Info;
	permanent = TRUE;
	description = "Připravit mutagenní lektvary";
};

func int PC_Special_Mutagen_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		return TRUE;
	};
};

func void B_Special_Mutagen()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((Npc_HasItems(hero,ItPo_Perm_STR) >= 1) && ((Npc_HasItems(hero,ItMi_Mutagen_Str_Low) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Str_Normal) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Str_Strong) >= 1)))
	{
		Info_AddChoice(PC_Special_Mutagen,"Použít elixír síly",PC_Special_Mutagen_Str);
	};
	if((Npc_HasItems(hero,ItPo_Perm_DEX) >= 1) && ((Npc_HasItems(hero,ItMi_Mutagen_Dex_Low) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Dex_Normal) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Dex_Strong) >= 1)))
	{
		Info_AddChoice(PC_Special_Mutagen,"Použít elixír obratnosti",PC_Special_Mutagen_Dex);
	};
	if((Npc_HasItems(hero,ItPo_Perm_Health) >= 1) && ((Npc_HasItems(hero,ItMi_Mutagen_HP_Low) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_HP_Normal) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_HP_Strong) >= 1)))
	{
		Info_AddChoice(PC_Special_Mutagen,"Použít elixír života",PC_Special_Mutagen_HP);
	};
	if((Npc_HasItems(hero,ItPo_Perm_Mana) >= 1) && ((Npc_HasItems(hero,ItMi_Mutagen_Mana_Low) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Mana_Normal) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Mana_Strong) >= 1)))
	{
		Info_AddChoice(PC_Special_Mutagen,"Použít elixír ducha",PC_Special_Mutagen_Mana);
	};
	if((Npc_HasItems(hero,ItPo_Perm_Stamina) >= 1) && ((Npc_HasItems(hero,ItMi_Mutagen_Stamina_Low) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Stamina_Normal) >= 1) || (Npc_HasItems(hero,ItMi_Mutagen_Stamina_Strong) >= 1)))
	{
		Info_AddChoice(PC_Special_Mutagen,"Použít elixír výdrže",PC_Special_Mutagen_Stamina);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_Info()
{
	if((Npc_HasItems(hero,ItPo_Perm_STR) == FALSE) && (Npc_HasItems(hero,ItPo_Perm_Dex) == FALSE) && (Npc_HasItems(hero,ItPo_Perm_Health) == FALSE) && (Npc_HasItems(hero,ItPo_Perm_Mana) == FALSE) && (Npc_HasItems(hero,ItPo_Perm_Stamina) == FALSE))
	{
		AI_PrintClr("Nemáš vhodný magický lektvar...",177,58,17);
	}
	else if((Npc_HasItems(hero,ItMi_Mutagen_Str_Low) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Str_Normal) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Str_Strong) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Dex_Low) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Dex_Normal) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Dex_Strong) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_HP_Low) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_HP_Normal) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_HP_Strong) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Mana_Low) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Mana_Normal) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Mana_Strong) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Stamina_Low) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Stamina_Normal) == FALSE) && (Npc_HasItems(hero,ItMi_Mutagen_Stamina_Strong) == FALSE))
	{
		AI_PrintClr("Nemáš žádný mutagen...",177,58,17);
	};

	B_Special_Mutagen();
};

func void PC_Special_Mutagen_Back_Info()
{
	Info_ClearChoices(PC_Special_Mutagen);
};

func void PC_Special_Mutagen_Str()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(Npc_HasItems(hero,ItMi_Mutagen_Str_Low) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "... přidat malý mutagen síly"),
			// "... přidat malý mutagen síly",
			PC_Special_Mutagen_Str_Low);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Str_Normal) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "... přidat mutagen síly"),
			// "... přidat mutagen síly",
			PC_Special_Mutagen_Str_Normal);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Str_Strong) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 90, FALSE), "... přidat velký mutagen síly"),
			// "... přidat velký mutagen síly",
			PC_Special_Mutagen_Str_Strong);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_Dex()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(Npc_HasItems(hero,ItMi_Mutagen_Dex_Low) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "... přidat malý mutagen obratnosti"),
			// "... přidat malý mutagen obratnosti",
			PC_Special_Mutagen_Dex_Low);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Dex_Normal) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "... přidat mutagen obratnosti"),
			// "... přidat mutagen obratnosti",
			PC_Special_Mutagen_Dex_Normal);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Dex_Strong) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 90, FALSE), "... přidat velký mutagen obratnosti"),
			// "... přidat velký mutagen obratnosti",
			PC_Special_Mutagen_Dex_Strong);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_HP()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(Npc_HasItems(hero,ItMi_Mutagen_HP_Low) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "... přidat malý mutagen života"),
			// "... přidat malý mutagen života",
			PC_Special_Mutagen_HP_Low);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_HP_Normal) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "... přidat mutagen života"),
			// "... přidat mutagen života",
			PC_Special_Mutagen_HP_Normal);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_HP_Strong) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 90, FALSE), "... přidat velký mutagen života"),
			// "... přidat velký mutagen života",
			PC_Special_Mutagen_HP_Strong);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_Mana()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(Npc_HasItems(hero,ItMi_Mutagen_Mana_Low) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "... přidat malý mutagen ducha"),
			// "... přidat malý mutagen ducha",
			PC_Special_Mutagen_Mana_Low);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Mana_Normal) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "... přidat mutagen ducha"),
			// "... přidat mutagen ducha",
			PC_Special_Mutagen_Mana_Normal);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Mana_Strong) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 90, FALSE), "... přidat velký mutagen ducha"),
			// "... přidat velký mutagen ducha",
			PC_Special_Mutagen_Mana_Strong);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_Stamina()
{
	Info_ClearChoices(PC_Special_Mutagen);
	Info_AddChoice(PC_Special_Mutagen,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(Npc_HasItems(hero,ItMi_Mutagen_Stamina_Low) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "... přidat malý mutagen výdrže"),
			// "... přidat malý mutagen výdrže",
			PC_Special_Mutagen_Stamina_Low);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Stamina_Normal) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 60, FALSE), "... přidat mutagen výdrže"),
			// "... přidat mutagen výdrže",
			PC_Special_Mutagen_Stamina_Normal);
	};
	if(Npc_HasItems(hero,ItMi_Mutagen_Stamina_Strong) >= 1)
	{
		Info_AddChoice(PC_Special_Mutagen,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 90, FALSE), "... přidat velký mutagen výdrže"),
			// "... přidat velký mutagen výdrže",
			PC_Special_Mutagen_Stamina_Strong);
	};

	Info_AddChoice(PC_Special_Mutagen,DIALOG_BACK,PC_Special_Mutagen_Back_Info);
};

func void PC_Special_Mutagen_Str_Low()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_STR,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Str_Low,1);
		CreateInvItems(hero,ItPo_Perm_STR_M_Low,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(3);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Str_Normal()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_STR,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Str_Normal,1);
		CreateInvItems(hero,ItPo_Perm_STR_M_Normal,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(4);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Str_Strong()
{
	if(B_CheckAlchemySkill(90))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_STR,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Str_Strong,1);
		CreateInvItems(hero,ItPo_Perm_STR_M_Strong,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Dex_Low()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Dex,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Dex_Low,1);
		CreateInvItems(hero,ItPo_Perm_Dex_M_Low,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(3);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Dex_Normal()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Dex,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Dex_Normal,1);
		CreateInvItems(hero,ItPo_Perm_Dex_M_Normal,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(4);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Dex_Strong()
{
	if(B_CheckAlchemySkill(90))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Dex,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Dex_Strong,1);
		CreateInvItems(hero,ItPo_Perm_Dex_M_Strong,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_HP_Low()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Health,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_HP_Low,1);
		CreateInvItems(hero,ItPo_Perm_Health_M_Low,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(3);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_HP_Normal()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Health,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_HP_Normal,1);
		CreateInvItems(hero,ItPo_Perm_Health_M_Normal,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(4);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_HP_Strong()
{
	if(B_CheckAlchemySkill(90))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Health,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_HP_Strong,1);
		CreateInvItems(hero,ItPo_Perm_Health_M_Strong,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Mana_Low()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Mana,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Mana_Low,1);
		CreateInvItems(hero,ItPo_Perm_Mana_M_Low,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(3);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Mana_Normal()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Mana,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Mana_Normal,1);
		CreateInvItems(hero,ItPo_Perm_Mana_M_Normal,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(4);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Mana_Strong()
{
	if(B_CheckAlchemySkill(90))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Mana,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Mana_Strong,1);
		CreateInvItems(hero,ItPo_Perm_Mana_M_Strong,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Stamina_Low()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Stamina,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Stamina_Low,1);
		CreateInvItems(hero,ItPo_Perm_Stamina_M_Low,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(3);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Stamina_Normal()
{
	if(B_CheckAlchemySkill(60))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Stamina,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Stamina_Normal,1);
		CreateInvItems(hero,ItPo_Perm_Stamina_M_Normal,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(4);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void PC_Special_Mutagen_Stamina_Strong()
{
	if(B_CheckAlchemySkill(90))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Perm_Stamina,1);
		Npc_RemoveInvItems(hero,ItMi_Mutagen_Stamina_Strong,1);
		CreateInvItems(hero,ItPo_Perm_Stamina_M_Strong,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Special_Mutagen();
	}
	else
	{
		B_Special_Mutagen();
	};
};

func void pc_Epic_start_back()
{
	Info_ClearChoices(PC_Epic_Start);
};

instance PC_Epic_Start(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = PC_Epic_Start_Condition;
	information = PC_Epic_Start_Info;
	permanent = TRUE;
	description = "Připravit speciální magické lektvary";
};

func int PC_Epic_Start_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		return TRUE;
	};
};

func void B_Epic_Start()
{
	Info_ClearChoices(PC_Epic_Start);
	Info_AddChoice(PC_Epic_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((SOULRIVER == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,itat_luzianheart) >= 1) && (Npc_HasItems(hero,ItMi_Sulfur) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 1) && (Npc_HasItems(hero,ItMi_DarkPearl) >= 1) && (Npc_HasItems(hero,ItPo_Mana_01) >= 1) && (Npc_HasItems(hero,ItPl_SwampHerb) >= 1))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Extrakt duší"),
			// "Extrakt duší",
			pc_itpo_soulriver);
	};
	if((PLAYER_TALENT_ALCHEMY[16] == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItAt_CrawlerMandibles) >= 1) && (Npc_HasItems(hero,ItAt_WaranFiretongue) >= 1) && (Npc_HasItems(hero,ItAt_StoneGolemHeart) >= 1) && (Npc_HasItems(hero,ItAt_SkeletonBone) >= 1) && (Npc_HasItems(hero,itat_crawlerqueen) >= 1) && (Npc_HasItems(hero,ItPl_SwampHerb) >= 1) && (Npc_HasItems(hero,ItPl_Perm_Herb) >= 1) && (Npc_HasItems(hero,ItPl_Mana_Herb_03) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 1) && (Npc_HasItems(hero,ItMi_DarkPearl) >= 1))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 40, FALSE), "Elixír Amun-Su"),
			// "Elixír Amun-Su",
			pc_itpo_tyonpotion);
	};
	if((Knows_MCELIXIER == TRUE) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItAt_Sting) >= 2) && (Npc_HasItems(hero,ItPo_Mana_02) >= 1) && (Npc_HasItems(hero,ItPo_Health_01) >= 1) && (Npc_HasItems(hero,ItFo_Addon_Pfeffer_01) >= 1))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Lektvar proměny mysli"),
			// "Lektvar proměny mysli",
			PC_ItPo_Addon_Geist);
	};
	if(((Npc_HasItems(hero,ItAt_IcedragonHeart) >= 1) || (Npc_HasItems(hero,ItAt_RockdragonHeart) >= 1) || (Npc_HasItems(hero,ItAt_FiredragonHeart) >= 1) || (Npc_HasItems(hero,itat_reddragonheart) >= 1) || (Npc_HasItems(hero,itat_blackdragonheart) >= 1) || (Npc_HasItems(hero,ItAt_SwampdragonHeart) >= 1)) && (Npc_HasItems(hero,ItMi_InnosEye_Discharged_Mis) >= 1) && (PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] == TRUE))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Dobít 'Innosovo oko'"),
			// "Dobít 'Innosovo oko'",
			PC_Charge_InnosEye);
	};
	if((Npc_HasItems(hero,ItAt_DragonEgg_MIS) >= 9) && (Npc_HasItems(hero,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItMi_DarkPearl) >= 1) && (Npc_HasItems(hero,ItMi_Sulfur) >= 1) && (PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] == TRUE))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 75, FALSE), "Embarla Firgasto"),
			// "Embarla Firgasto",
			PC_ItPo_MegaDrink);
	};
	if((Npc_HasItems(hero,itmi_prisonsoul) >= 1) && (Npc_HasItems(hero,itmi_orcblood) >= 1) && (Npc_HasItems(hero,itmi_barlokheart) >= 1) && (Npc_HasItems(hero,ItMi_Sulfur) >= 5) && (READ_AZGOLOR == TRUE))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Probudit 'Oko hněvu'"),
			// "Probudit 'Oko hněvu'",
			pc_charge_prisonsoul);
	};
	if((KNOW_NIMROD_MAKE == TRUE) && (Npc_HasItems(hero,ItMi_Moleratlubric_MIS) >= 1) && (Npc_HasItems(hero,ItAt_PumaMuscle) >= 1))
	{
		Info_AddChoice(PC_Epic_Start,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Namazat šlachy krysokrtím sádlem"),
			// "Namazat šlachy krysokrtím sádlem",
			PC_PumaMuscle);
	};

	Info_AddChoice(PC_Epic_Start,DIALOG_BACK,PC_Epic_Start_Back_Info);
};

func void PC_Epic_Start_Info()
{
	B_Epic_Start();
};

func void PC_Epic_Start_Back_Info()
{
	Info_ClearChoices(PC_Epic_Start);
};

func void PC_Charge_InnosEye()
{
	if(Npc_HasItems(hero,ItAt_SwampdragonHeart) >= 1)
	{
		Npc_RemoveInvItems(hero,ItAt_SwampdragonHeart,1);
	}
	else if(Npc_HasItems(hero,ItAt_RockdragonHeart) >= 1)
	{
		Npc_RemoveInvItems(hero,ItAt_RockdragonHeart,1);
	}
	else if(Npc_HasItems(hero,ItAt_FiredragonHeart) >= 1)
	{
		Npc_RemoveInvItems(hero,ItAt_FiredragonHeart,1);
	}
	else if(Npc_HasItems(hero,ItAt_IcedragonHeart) >= 1)
	{
		Npc_RemoveInvItems(hero,ItAt_IcedragonHeart,1);
	}
	else if(Npc_HasItems(hero,itat_reddragonheart) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_reddragonheart,1);
	}
	else if(Npc_HasItems(hero,itat_blackdragonheart) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_blackdragonheart,1);
	};

	Npc_RemoveInvItems(hero,ItMi_InnosEye_Discharged_Mis,1);
	CreateInvItems(hero,ItMi_InnosEye_MIS,1);
	AI_PrintClr(PRINT_AlchemySuccessInnoseye,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	B_Epic_Start();
};

func void PC_ItPo_Addon_Geist()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItAt_Sting,2);
	Npc_RemoveInvItems(hero,ItPo_Mana_02,1);
	Npc_RemoveInvItems(hero,ItPo_Health_01,1);
	Npc_RemoveInvItems(hero,ItFo_Addon_Pfeffer_01,1);
	Npc_RemoveInvItems(hero,ItMi_Flask,1);

	if(Knows_Bloodfly == TRUE)
	{
		CreateInvItems(hero,ItPo_Addon_Geist_02,1);
	}
	else
	{
		CreateInvItems(hero,ItPo_Addon_Geist_01,1);
	};

	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	B_RaisekAlchemySkill(2);
	B_Epic_Start();
};

func void pc_itpo_tyonpotion()
{
	if(B_CheckAlchemySkill(40))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_CrawlerMandibles,1);
		Npc_RemoveInvItems(hero,ItAt_WaranFiretongue,1);
		Npc_RemoveInvItems(hero,ItAt_StoneGolemHeart,1);
		Npc_RemoveInvItems(hero,ItAt_SkeletonBone,1);
		Npc_RemoveInvItems(hero,itat_crawlerqueen,1);
		Npc_RemoveInvItems(hero,ItPl_SwampHerb,1);
		Npc_RemoveInvItems(hero,ItPl_Perm_Herb,1);
		Npc_RemoveInvItems(hero,ItPl_Mana_Herb_03,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,1);
		Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
		Npc_RemoveInvItems(hero,ItMi_Flask,1);
		CreateInvItems(hero,itpo_tyonpotion,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Epic_Start();
	}
	else
	{
		B_Epic_Start();
	};
};

func void pc_itpo_soulriver()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,itat_luzianheart,1);
	Npc_RemoveInvItems(hero,ItMi_Sulfur,1);
	Npc_RemoveInvItems(hero,ItMi_Aquamarine,1);
	Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
	Npc_RemoveInvItems(hero,ItPo_Mana_01,1);
	Npc_RemoveInvItems(hero,ItPl_SwampHerb,1);
	Npc_RemoveInvItems(hero,ItMi_Flask,1);
	CreateInvItems(hero,itpo_soulriver,1);
	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	B_RaisekAlchemySkill(3);
	B_Epic_Start();
};

func void PC_ItPo_MegaDrink()
{
	if(B_CheckAlchemySkill(75))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItAt_DragonEgg_MIS,9);
		Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
		Npc_RemoveInvItems(hero,ItMi_Sulfur,1);
		Npc_RemoveInvItems(hero,ItMi_Flask,1);
		CreateInvItems(hero,ItPo_MegaDrink,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_RaisekAlchemySkill(5);
		B_Epic_Start();
	}
	else
	{
		B_Epic_Start();
	};
};


func void pc_charge_prisonsoul()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,itmi_prisonsoul,1);
	Npc_RemoveInvItems(hero,itmi_orcblood,1);
	Npc_RemoveInvItems(hero,itmi_barlokheart,1);
	Npc_RemoveInvItems(hero,ItMi_Sulfur,5);
	CreateInvItems(hero,itmi_prisonsoul_awake,1);
	AI_PrintClr(PRINT_ALCHEMYSUCCESSPRISONSOUL,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	POTIONSTARTOK = 1;
	B_RaisekAlchemySkill(2);
	B_Epic_Start();
};

func void PC_PumaMuscle()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItMi_Moleratlubric_MIS,1);
	Npc_RemoveInvItems(hero,ItAt_PumaMuscle,1);
	CreateInvItems(hero,ItAt_PumaMuscle_Jir,1);
	AI_PrintClr("Hotovo!",83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	Snd_Play("POTION_DONE");
	CreateInvItems(self,ItMi_Flask,1);
	B_RaisekAlchemySkill(1);
	b_endproductiondialog();
	POTIONSTARTOK = 1;
	B_Epic_Start();
};

func void pc_booze_start_back()
{
	Info_ClearChoices(PC_Booze_Start);
};

instance PC_Mana_Regone(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = PC_Mana_Regone_Condition;
	information = PC_Mana_Regone_Info;
	permanent = TRUE;
	description = "Koncentrovat lektvary";
};

func int PC_Mana_Regone_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		return TRUE;
	};
};

func void B_Regone()
{
	Info_ClearChoices(PC_Mana_Regone);
	Info_AddChoice(PC_Mana_Regone,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && ((Npc_HasItems(hero,ItPo_Mana_02) >= 2) || (Npc_HasItems(hero,ItPo_Mana_01) >= 4)))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat všechny lektvary many na elixíry many"),
			// "Koncentrovat všechny lektvary many na elixíry many",
			PC_Regone_ItPo_Mana_03_All);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE) && ((Npc_HasItems(hero,ItPo_Health_02) >= 2) || (Npc_HasItems(hero,ItPo_Health_01) >= 4)))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat všechny lektvary hojivé síly na elixíry hojivé síly"),
			// "Koncentrovat všechny lektvary hojivé síly na elixíry hojivé síly",
			PC_Regone_ItPo_Health_03_All);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && (Npc_HasItems(hero,ItPo_Mana_02) >= 2))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat extrakty many na elixír many"),
			// "Koncentrovat extrakty many na elixír many",
			PC_Regone_ItPo_Mana_03);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE) && (Npc_HasItems(hero,ItPo_Mana_01) >= 2))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Koncentrovat esence many na extrakt many"),
			// "Koncentrovat esence many na extrakt many",
			PC_Regone_ItPo_Mana_02);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && (Npc_HasItems(hero,ItPo_Mana_01) >= 4))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat esence many na elixír many"),
			// "Koncentrovat esence many na elixír many",
			PC_Regone_ItPo_Mana_01);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE) && (Npc_HasItems(hero,ItPo_Health_02) >= 2))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat extrakty hojivé síly na elixír hojivé síly"),
			// "Koncentrovat extrakty hojivé síly na elixír hojivé síly",
			PC_Regone_ItPo_Health_03);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE) && (Npc_HasItems(hero,ItPo_Health_01) >= 2))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Koncentrovat esence hojivé síly na extrakt hojivé síly"),
			// "Koncentrovat esence hojivé síly na extrakt hojivé síly",
			PC_Regone_ItPo_Health_02);
	};
	if((PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE) && (Npc_HasItems(hero,ItPo_Health_01) >= 4))
	{
		Info_AddChoice(PC_Mana_Regone,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Koncentrovat esence hojivé síly na elixír hojivé síly"),
			// "Koncentrovat esence hojivé síly na elixír hojivé síly",
			PC_Regone_ItPo_Health_01);
	};

	Info_AddChoice(PC_Mana_Regone,DIALOG_BACK,PC_Mana_Regone_Back_Info);
};

func void PC_Mana_Regone_Info()
{
	B_Regone();
};

func void PC_Mana_Regone_Back_Info()
{
	Info_ClearChoices(PC_Mana_Regone);
};

func void PC_Regone_ItPo_Mana_03_All()
{
	if(B_CheckAlchemySkill(20))
	{
		var int CountMana01;
		var int CountMana02;
		var int AllMana01;
		var int AllMana02;
		var int SummAllHealthMana;

		CountMana01 = Npc_HasItems(hero,ItPo_Mana_01);
		CountMana02 = Npc_HasItems(hero,ItPo_Mana_02);

		if(CountMana01 >= 4)
		{
			AllMana01 = CountMana01 / 4;
		};
		if(CountMana02 >= 2)
		{
			AllMana02 = CountMana02 / 2;
		};

		SummAllHealthMana = AllMana01 + AllMana02;
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Mana_01,Npc_HasItems(hero,ItPo_Mana_01));
		Npc_RemoveInvItems(hero,ItPo_Mana_02,Npc_HasItems(hero,ItPo_Mana_02));
		CreateInvItems(hero,ItPo_Mana_03,SummAllHealthMana);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Health_03_All()
{
	if(B_CheckAlchemySkill(20))
	{
		var int CountHealth01;
		var int CountHealth02;
		var int AllHealth01;
		var int AllHealth02;
		var int SummAllHealthMana;

		CountHealth01 = Npc_HasItems(hero,ItPo_Health_01);
		CountHealth02 = Npc_HasItems(hero,ItPo_Health_02);

		if(CountHealth01 >= 4)
		{
			AllHealth01 = CountHealth01 / 4;
		};
		if(CountHealth02 >= 2)
		{
			AllHealth02 = CountHealth02 / 2;
		};

		SummAllHealthMana = AllHealth01 + AllHealth02;
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Health_01,Npc_HasItems(hero,ItPo_Health_01));
		Npc_RemoveInvItems(hero,ItPo_Health_02,Npc_HasItems(hero,ItPo_Health_02));
		CreateInvItems(hero,ItPo_Health_03,SummAllHealthMana);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Mana_03()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Mana_02,2);
		CreateInvItems(hero,ItPo_Mana_03,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Mana_02()
{
	if(B_CheckAlchemySkill(10))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Mana_01,2);
		CreateInvItems(hero,ItPo_Mana_02,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Mana_01()
{
	if(B_CheckAlchemySkill(20))
	{	
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Mana_01,4);
		CreateInvItems(hero,ItPo_Mana_03,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Health_03()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Health_02,2);
		CreateInvItems(hero,ItPo_Health_03,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Health_02()
{
	if(B_CheckAlchemySkill(10))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Health_01,2);
		CreateInvItems(hero,ItPo_Health_02,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

func void PC_Regone_ItPo_Health_01()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItPo_Health_01,4);
		CreateInvItems(hero,ItPo_Health_03,1);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		Snd_Play("POTION_DONE");
		POTIONSTARTOK = 1;
		B_Regone();
	}
	else
	{
		B_Regone();
	};
};

instance PC_Booze_Start(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = PC_Booze_Start_Condition;
	information = PC_Booze_Start_Info;
	permanent = TRUE;
	description = "Připravit alkoholické nápoje";
};

func int PC_Booze_Start_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, itfo_wineberrys) / 4;
		max = min(max, Npc_HasItems(other, ItAt_DemonHeart) / 2);
		max = min(max, Npc_HasItems(other, ItPl_Temp_Herb) / 3);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_booze_ealbalzamtwo");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_booze_ealbalzamtwo
		newDescription = ConcatStrings(newDescription, "s@SPIN_booze_ealbalzamtwo ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit víno 'Zapomnění'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_booze_ealbalzamtwo");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, itfo_wineberrys) / 2;
		max = min(max, Npc_HasItems(other, ItPl_SwampHerb) / 2);
		max = min(max, Npc_HasItems(other, ItAt_WaranFiretongue) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Addon_Rum) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_booze_ealbalzam");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_booze_ealbalzam
		newDescription = ConcatStrings(newDescription, "s@SPIN_booze_ealbalzam ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 40, FALSE), "Připravit víno 'Balzám prozřetelnosti'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_booze_ealbalzam");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_SwampHerb) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Beet) / 2);
		max = min(max, Npc_HasItems(other, ItAt_SharkTeeth) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Addon_Rum) / 2);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Schlaf");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Schlaf
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Schlaf ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Připravit 'Dvojité Louovo kladivo'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Schlaf");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_SwampHerb) / 1;
		max = min(max, Npc_HasItems(other, ItPl_Beet) / 2);
		max = min(max, Npc_HasItems(other, ItAt_SharkTeeth) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Addon_Rum) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Lou");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Lou
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Lou ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Připravit 'Louovo kladivo'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Lou");
		
//-- Spinner Choice #5
		
		var int value5;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItPl_Speed_Herb_01) / 1;
		max = min(max, Npc_HasItems(other, ItFo_Addon_Rum) / 1);
		max = min(max, Npc_HasItems(other, ItFo_Fish) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		
		// Check boundaries
		if(value5 < min) { value5 = min; };
		if(value5 > max) { value5 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_SchnellerHering");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value5;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value5 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_SchnellerHering
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_SchnellerHering ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Připravit 'Rychlý sled'")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value5));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_SchnellerHering");
		
//-- Spinner Choice #6
		
		var int value6;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Booze) / 10;
		
		// Check boundaries
		if(value6 < min) { value6 = min; };
		if(value6 > max) { value6 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Start_compote_11");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value6;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value6 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Start_compote_11
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Start_compote_11 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Připravit 'Gin' (10 láhví kořalky)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value6));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Start_compote_11");
		
//-- Spinner Choice #7
		
		var int value7;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Booze) / 2;
		
		// Check boundaries
		if(value7 < min) { value7 = min; };
		if(value7 > max) { value7 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Start_Alcohol_Booze");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value7;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value7 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Start_Alcohol_Booze
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Start_Alcohol_Booze ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Připravit čistý alkohol (2 láhve kořalky)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value7));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Start_Alcohol_Booze");
		
//-- Spinner Choice #8
		
		var int value8;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Addon_Grog) / 2;
		
		// Check boundaries
		if(value8 < min) { value8 = min; };
		if(value8 > max) { value8 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Start_Alcohol_Grog");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value8;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value8 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Start_Alcohol_Grog
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Start_Alcohol_Grog ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Připravit čistý alkohol (2 láhve grogu)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value8));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Start_Alcohol_Grog");
		
//-- Spinner Choice #9
		
		var int value9;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Addon_Rum) / 2;
		
		// Check boundaries
		if(value9 < min) { value9 = min; };
		if(value9 > max) { value9 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Start_Alcohol_Rom");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value9;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value9 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Start_Alcohol_Rom
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Start_Alcohol_Rom ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 15, FALSE), "Připravit čistý alkohol (2 láhve rumu)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value9));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Start_Alcohol_Rom");
		
//-- Spinner Choice #10
		
		var int value10;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, itfo_addon_orcrum) / 1;
		
		// Check boundaries
		if(value10 < min) { value10 = min; };
		if(value10 > max) { value10 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Booze_Start_Alcohol_Orc");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value10;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value10 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Booze_Start_Alcohol_Orc
		newDescription = ConcatStrings(newDescription, "s@SPIN_Booze_Start_Alcohol_Orc ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Připravit čistý alkohol (1 láhev skřetího pití)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value10));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Booze_Start_Alcohol_Orc");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Booze_Start()
{
	Info_ClearChoices(PC_Booze_Start);
	Info_AddChoice(PC_Booze_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(READBOOKSDONE_09 == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_booze_ealbalzamtwo ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit víno 'Zapomnění'")
			),
			// "Připravit víno 'Zapomnění'",
			pc_booze_ealbalzamtwo);
	};
	if(READBOOKSDONE_08 == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_booze_ealbalzam ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 40, FALSE), "Připravit víno 'Balzám prozřetelnosti'")
			),
			// "Připravit víno 'Balzám prozřetelnosti'",
			pc_booze_ealbalzam);
	};
	if(Knows_Schlafhammer == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Schlaf ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Připravit 'Dvojité Louovo kladivo'")
			),
			// "Připravit 'Dvojité Louovo kladivo'",
			PC_Booze_Schlaf);
	};
	if(Knows_LousHammer == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Lou ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Připravit 'Louovo kladivo'")
			),
			// "Připravit 'Louovo kladivo'",
			PC_Booze_Lou);
	};
	if(Knows_SchnellerHering == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_SchnellerHering ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 30, FALSE), "Připravit 'Rychlý sled'")
			),
			// "Připravit 'Rychlý sled'",
			PC_Booze_SchnellerHering);
	};
	if(READBOOKSDONE_99 == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Start_compote_11 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 20, FALSE), "Připravit 'Gin' (10 láhví kořalky)")
			),
			// "Připravit 'Gin' (10 láhví kořalky)",
			PC_Booze_Start_compote_11);
	};
	if(MakePureAlcoholBooze == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Start_Alcohol_Booze ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Připravit čistý alkohol (2 láhve kořalky)")
			),
			// "Připravit čistý alkohol (2 láhve kořalky)",
			PC_Booze_Start_Alcohol_Booze);
	};
	if(MakePureAlcoholGrog == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Start_Alcohol_Grog ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Připravit čistý alkohol (2 láhve grogu)")
			),
			// "Připravit čistý alkohol (2 láhve grogu)",
			PC_Booze_Start_Alcohol_Grog);
	};
	if(MakePureAlcoholRom == TRUE)
	{
		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Start_Alcohol_Rom ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 15, FALSE), "Připravit čistý alkohol (2 láhve rumu)")
			),
			// "Připravit čistý alkohol (2 láhve rumu)",
			PC_Booze_Start_Alcohol_Rom);

		Info_AddChoice(PC_Booze_Start,
			ConcatStrings("s@SPIN_Booze_Start_Alcohol_Orc ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 0, FALSE), "Připravit čistý alkohol (1 láhev skřetího pití)")
			),
			// "Připravit čistý alkohol (1 láhev skřetího pití)",
			PC_Booze_Start_Alcohol_Orc);
	};

	Info_AddChoice(PC_Booze_Start,DIALOG_BACK,PC_Booze_Start_Back_Info);
};

func void PC_Booze_Start_Info()
{
	B_Booze_Start();
};

func void PC_Booze_Start_Back_Info()
{
	Info_ClearChoices(PC_Booze_Start);
};

func void PC_Booze_Start_Alcohol_Orc()
{
	Npc_RemoveInvItems(hero,itfo_addon_orcrum,1*InfoManagerSpinnerValue);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	CreateInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
	
	repeat(i, InfoManagerSpinnerValue); var int i;
		B_RaisekAlchemySkillNoInt(1);
	end;
	
	POTIONSTARTOK = 1;
	InfoManagerSpinnerValue = 1;
	B_Booze_Start();
};

func void PC_Booze_Start_Alcohol_Booze()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItFo_Booze,2*InfoManagerSpinnerValue);
	//Print(PRINT_AlchemySuccess);
	AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	CreateInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
	
	repeat(i, InfoManagerSpinnerValue); var int i;
		B_RaisekAlchemySkillNoInt(1);
	end;
	
	POTIONSTARTOK = 1;
	InfoManagerSpinnerValue = 1;
	B_Booze_Start();
};

func void PC_Booze_Start_Alcohol_Grog()
{
	if(B_CheckAlchemySkill(10))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Addon_Grog,2*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(1);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void PC_Booze_Start_Alcohol_Rom()
{
	if(B_CheckAlchemySkill(15))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Addon_Rum,2*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(hero,ItFo_Alcohol,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(1);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void PC_Booze_Start_compote_11()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Booze,10*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(hero,itfo_booze_ext,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(1);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void PC_Booze_Lou()
{
	if(B_CheckAlchemySkill(20))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(self,ItPl_SwampHerb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItPl_Beet,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItAt_SharkTeeth,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItFo_Addon_Rum,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(self,ItFo_Addon_LousHammer,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(2);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void PC_Booze_Schlaf()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(self,ItPl_SwampHerb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItPl_Beet,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItAt_SharkTeeth,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItFo_Addon_Rum,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(self,ItFo_Addon_SchlafHammer,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(2);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void PC_Booze_SchnellerHering()
{
	if(B_CheckAlchemySkill(30))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(self,ItPl_Speed_Herb_01,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItFo_Addon_Rum,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItFo_Fish,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(self,ItFo_Addon_SchnellerHering,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkillNoInt(2);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void pc_booze_ealbalzam()
{
	if(B_CheckAlchemySkill(40))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(self,itfo_wineberrys,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItPl_SwampHerb,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItAt_WaranFiretongue,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItFo_Addon_Rum,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		CreateInvItems(self,itfo_ealbalzam,1*InfoManagerSpinnerValue);
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void pc_booze_ealbalzamtwo()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(self,itfo_wineberrys,4*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItAt_DemonHeart,2*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(self,ItPl_Temp_Herb,3*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		//Print(PRINT_AlchemySuccess);
		AI_PrintClr(PRINT_AlchemySuccess,83,152,48);
		CreateInvItems(self,itfo_ealbalzamtwo,1*InfoManagerSpinnerValue);
		//B_Say(self,self,"$ITEMREADY");
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		POTIONSTARTOK = 1;
		InfoManagerSpinnerValue = 1;
		B_Booze_Start();
	}
	else
	{
		B_Booze_Start();
	};
};

func void pc_Poison_start_back()
{
	Info_ClearChoices(pc_Poison_start);
};

instance PC_Poison_Start(C_Info)
{
	npc = PC_Hero;
	nr = 10;
	condition = PC_Poison_Start_Condition;
	information = PC_Poison_Start_Info;
	permanent = TRUE;
	description = "Připravit jedy a protijedy";
};

func int PC_Poison_Start_Condition()
{
	
	// Original dialogue condition
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		
		var string lastSpinnerID;
		var int min;
		var int max;
		
		var int isActive;
		var string newDescription;
		var string editedNumber;
		
//-- Spinner Choice #1
		
		var int value1;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItRw_Arrow) / 20;
		max = min(max, Npc_HasItems(other, ITPO_POISON) / 1);
		
		// Check boundaries
		if(value1 < min) { value1 = min; };
		if(value1 > max) { value1 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Poison_Start_PoisonArrow");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value1;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value1 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Poison_Start_PoisonArrow
		newDescription = ConcatStrings(newDescription, "s@SPIN_Poison_Start_PoisonArrow ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Vyrobit otrávené šípy")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value1));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Poison_Start_PoisonArrow");
		
//-- Spinner Choice #2
		
		var int value2;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Water) / 1;
		max = min(max, Npc_HasItems(other, ItMi_Sulfur) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Coal) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Salt) / 1);
		
		// Check boundaries
		if(value2 < min) { value2 = min; };
		if(value2 > max) { value2 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Poison_Start_AnPoison");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value2;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value2 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Poison_Start_AnPoison
		newDescription = ConcatStrings(newDescription, "s@SPIN_Poison_Start_AnPoison ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 25, FALSE), "Připravit protijed")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value2));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Poison_Start_AnPoison");
		
//-- Spinner Choice #3
		
		var int value3;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Water) / 1;
		max = min(max, Npc_HasItems(other, ItPl_SwampHerb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItAt_Sting) / 1);
		
		// Check boundaries
		if(value3 < min) { value3 = min; };
		if(value3 > max) { value3 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Poison_Start_Poison");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value3;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value3 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Poison_Start_Poison
		newDescription = ConcatStrings(newDescription, "s@SPIN_Poison_Start_Poison ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit jed (ze žihadel)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value3));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Poison_Start_Poison");
		
//-- Spinner Choice #4
		
		var int value4;
		
		// Min/max values
		min = 1;
		max = Npc_HasItems(other, ItFo_Water) / 1;
		max = min(max, Npc_HasItems(other, ItPl_SwampHerb) / 1);
		max = min(max, Npc_HasItems(other, ItMi_Flask) / 1);
		max = min(max, Npc_HasItems(other, ItAt_SpiderMandibles) / 1);
		
		// Check boundaries
		if(value4 < min) { value4 = min; };
		if(value4 > max) { value4 = max; };
		
		isActive = Hlp_StrCmp(InfoManagerSpinnerID, "SPIN_Poison_Start_Poison_v2");
		
		// Setup spinner if spinner ID has changed
		if(isActive)
		{
			
			// What is current InfoManagerSpinnerID ?
			if(!Hlp_StrCmp(InfoManagerSpinnerID, lastSpinnerID))
			{
				// Update value
				InfoManagerSpinnerValue = value4;
			};
			
			// Page Up/Down quantity
			InfoManagerSpinnerPageSize = 5;
			
			// Min/max value (Home/End keys)
			InfoManagerSpinnerValueMin = min;
			InfoManagerSpinnerValueMax = max;
			
			// Update
			value4 = InfoManagerSpinnerValue;
			
		};
		
		newDescription = "";
		
		if((max == 0)
		&& (TRUE)) // FALSE: override strict disable for (max == 0)
		{
			newDescription = ConcatStrings(newDescription, "d@ ");
		};
		
		// Spinner ID SPIN_Poison_Start_Poison_v2
		newDescription = ConcatStrings(newDescription, "s@SPIN_Poison_Start_Poison_v2 ");
		newDescription = ConcatStrings(newDescription,
			ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit jed (z kusadel pavouka)")
		);
		newDescription = ConcatStrings(newDescription, " (");
		
		// Manually typed-in number:
		if((InfoManagerSpinnerNumberEditMode)
		&& (TRUE) // FALSE: override / disallow manual typing
		&& (isActive))
		{
			editedNumber = InfoManagerSpinnerNumber;
			editedNumber = ConcatStrings(editedNumber, "_");
			
			// Check boundaries - if value is outside allowed range, add red color overlay
			if((STR_ToInt(InfoManagerSpinnerNumber) < min) || (STR_ToInt(InfoManagerSpinnerNumber) > max))
			{
				editedNumber = ConcatStrings("o@h@FF3030 hs@FF4646 :", editedNumber);
				editedNumber = ConcatStrings(editedNumber, "~");
			};
			
			newDescription = ConcatStrings(newDescription, editedNumber);
		}
		else
		{
			newDescription = ConcatStrings(newDescription, IntToString(value4));
		};
		
		newDescription = ConcatStrings(newDescription, "/");
		newDescription = ConcatStrings(newDescription, IntToString(max));
		newDescription = ConcatStrings(newDescription, ")");
		
		// Update choice description
		InfoManager_SetInfoChoiceText_BySpinnerID(newDescription, "SPIN_Poison_Start_Poison_v2");
		
//--
		
		lastSpinnerID = InfoManagerSpinnerID;
		
		return TRUE;
		
	};
	
};

func void B_Poison_Start()
{
	Info_ClearChoices(PC_Poison_Start);
	Info_AddChoice(PC_Poison_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if(PoisonArrowKnow == TRUE)
	{
		Info_AddChoice(PC_Poison_Start,
			ConcatStrings("s@SPIN_Poison_Start_PoisonArrow ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 10, FALSE), "Vyrobit otrávené šípy")
			),
			// "Vyrobit otrávené šípy",
			PC_Poison_Start_PoisonArrow);
	};
	if(AnPoisonKnow == TRUE)
	{
		Info_AddChoice(PC_Poison_Start,
			ConcatStrings("s@SPIN_Poison_Start_AnPoison ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 25, FALSE), "Připravit protijed")
			),
			// "Připravit protijed",
			PC_Poison_Start_AnPoison);
	};
	if(MakePoisonKnow == TRUE)
	{
		Info_AddChoice(PC_Poison_Start,
			ConcatStrings("s@SPIN_Poison_Start_Poison ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit jed (ze žihadel)")
			),
			// "Připravit jed (ze žihadel)",
			PC_Poison_Start_Poison);
		Info_AddChoice(PC_Poison_Start,
			ConcatStrings("s@SPIN_Poison_Start_Poison_v2 ",
				ConcatStrings(CZ_SkillCheckCondition(CZ_SKILL_ALCH, 50, FALSE), "Připravit jed (z kusadel pavouka)")
			),
			// "Připravit jed (z kusadel pavouka)",
			PC_Poison_Start_Poison_v2);
	};

	Info_AddChoice(PC_Poison_Start,DIALOG_BACK,PC_Poison_Start_Back_Info);
};

func void PC_Poison_Start_Info()
{
	B_Poison_Start();
};


func void PC_Poison_Start_Back_Info()
{
	Info_ClearChoices(PC_Poison_Start);
};

func void PC_Poison_Start_AnPoison()
{
	if(B_CheckAlchemySkill(25))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Water,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Sulfur,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Coal,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Salt,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ITPO_ANPOIS,1*InfoManagerSpinnerValue);
		POTIONSTARTOK = 1;
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(1);
		end;
		
		AI_PrintClr(PRINT_Success,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		InfoManagerSpinnerValue = 1;
		B_Poison_Start();
	}
	else
	{
		B_Poison_Start();
	};
};

func void PC_Poison_Start_Poison()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Water,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_SwampHerb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItAt_Sting,1*InfoManagerSpinnerValue);
		POTIONSTARTOK = 1;
		CreateInvItems(hero,ITPO_POISON,1*InfoManagerSpinnerValue);
		AI_PrintClr(PRINT_Success,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Poison_Start();
	}
	else
	{
		B_Poison_Start();
	};
};

func void PC_Poison_Start_Poison_v2()
{
	if(B_CheckAlchemySkill(50))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFo_Water,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItPl_SwampHerb,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItMi_Flask,1*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ItAt_SpiderMandibles,1*InfoManagerSpinnerValue);
		POTIONSTARTOK = 1;
		CreateInvItems(hero,ITPO_POISON,1*InfoManagerSpinnerValue);
		AI_PrintClr(PRINT_Success,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(3);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Poison_Start();
	}
	else
	{
		B_Poison_Start();
	};
};

func void PC_Poison_Start_PoisonArrow()
{
	if(B_CheckAlchemySkill(10))
	{
		Npc_RemoveInvItems(hero,ItRw_Arrow,20*InfoManagerSpinnerValue);
		Npc_RemoveInvItems(hero,ITPO_POISON,1*InfoManagerSpinnerValue);
		CreateInvItems(hero,ItRw_PoisonArrow,20*InfoManagerSpinnerValue);
		AI_PrintClr(PRINT_Success,83,152,48);
		//B_Say(self,self,"$ITEMREADY");
		
		repeat(i, InfoManagerSpinnerValue); var int i;
			B_RaisekAlchemySkill(1);
		end;
		
		InfoManagerSpinnerValue = 1;
		B_Poison_Start();
	}
	else
	{
		B_Poison_Start();
	};
};

var int TabakStart;

func void pc_tabak_start_back()
{
	Info_ClearChoices(PC_Tabak_Start);
};

instance PC_Tabak_Start(C_Info)
{
	npc = PC_Hero;
	nr = 11;
	condition = PC_Tabak_Start_Condition;
	information = PC_Tabak_Start_Info;
	permanent = TRUE;
	description = "Připravit tabák a ostatní";
};

func int PC_Tabak_Start_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy)
	{
		return TRUE;
	};
};

func void B_Tabak_Start()
{
	Info_ClearChoices(PC_Tabak_Start);
	Info_AddChoice(PC_Tabak_Start,DIALOG_ENDE_WORK,PC_PotionAlchemy_End_Info);

	if((Npc_HasItems(hero,ItMi_ApfelTabak) >= 1) && (AbuyinTellTabak == TRUE))
	{
		Info_AddChoice(PC_Tabak_Start,"Smíchat tabák...",PC_ItMi_Tabak);
	};
	if((MakeMuritanSweet == TRUE) && (MIS_TiamantMuritan != LOG_SUCCESS))
	{
		Info_AddChoice(PC_Tabak_Start,"Smíchat kus masa se sírou",PC_ItMi_MuritanSweet);
	};

	Info_AddChoice(PC_Tabak_Start,DIALOG_BACK,PC_Tabak_Start_Back_Info);
};

func void PC_Tabak_Start_Info()
{
	B_Tabak_Start();
};

func void PC_Tabak_Start_Back_Info()
{
	Info_ClearChoices(PC_Tabak_Start);
};

func void PC_ItMi_MuritanSweet()
{
	if((Npc_HasItems(hero,ItFoMuttonRaw) >= 1) && (Npc_HasItems(hero,ItMi_Sulfur) >= 1))
	{
		//B_GivePlayerXP(XP_HandMade_Alchemy);
		Npc_RemoveInvItems(hero,ItFoMuttonRaw,1);
		Npc_RemoveInvItems(hero,ItMi_Sulfur,1);
		CreateInvItems(hero,ItMi_SulfurMuttonRaw,1);
		B_LogEntry(TOPIC_TiamantMuritan,"Udělal jsem návnadu! Nyní musím najít místo, kde je hodně síry.");
		AI_PrintClr(PRINT_Success,83,152,48);
		B_RaisekAlchemySkill(1);
		//B_Say(self,self,"$ITEMREADY");
	}
	else
	{
		//Print(PRINT_ProdItemsMissing);
		AI_PrintClr(PRINT_ProdItemsMissing,177,58,17);
		B_Say(self,self,"$MISSINGINGREDIENTS");
	};

	B_Tabak_Start();
};

func void PC_ItMi_Tabak()
{
	Info_ClearChoices(PC_Tabak_Start);
	Info_AddChoice(PC_Tabak_Start,Dialog_Back,pc_tabak_start_back);

	if(Npc_HasItems(hero,ItFo_Honey) >= 1)
	{
		Info_AddChoice(PC_Tabak_Start,"... s medem",PC_ItMi_Tabak_Honey);
	};
	if(Npc_HasItems(hero,ItPl_SwampHerb) >= 1)
	{
		Info_AddChoice(PC_Tabak_Start,"... s trávou z bažin",PC_ItMi_Tabak_Swampherb);
	};
	if(Npc_HasItems(hero,ItPl_Mushroom_01) >= 1)
	{
		Info_AddChoice(PC_Tabak_Start,"... s tmavými houbami",PC_ItMi_Tabak_Mushroom_01);
	};
};

func void PC_ItMi_Tabak_Honey()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItMi_ApfelTabak,1);
	Npc_RemoveInvItems(hero,ItFo_Honey,1);
	CreateInvItems(hero,ItMi_Honigtabak,1);
	AI_PrintClr(PRINT_TabakSuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	B_RaisekAlchemySkill(1);
	B_Tabak_Start();
};

func void PC_ItMi_Tabak_Swampherb()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItMi_ApfelTabak,1);
	Npc_RemoveInvItems(hero,ItPl_SwampHerb,1);
	CreateInvItems(hero,ItMi_SumpfTabak,1);
	AI_PrintClr(PRINT_TabakSuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	B_RaisekAlchemySkill(1);
	B_Tabak_Start();
};

func void PC_ItMi_Tabak_Mushroom_01()
{
	//B_GivePlayerXP(XP_HandMade_Alchemy);
	Npc_RemoveInvItems(hero,ItMi_ApfelTabak,1);
	Npc_RemoveInvItems(hero,ItPl_Mushroom_01,1);
	CreateInvItems(hero,ItMi_PilzTabak,1);
	AI_PrintClr(PRINT_TabakSuccess,83,152,48);
	//B_Say(self,self,"$ITEMREADY");
	B_RaisekAlchemySkill(1);
	B_Tabak_Start();
};

instance PC_MIS_MyBrew(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = PC_MIS_MyBrew_Condition;
	information = PC_MIS_MyBrew_Info;
	permanent = TRUE;
	description = "Připravit Constantinův lektvar";
};

func int PC_MIS_MyBrew_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_PotionAlchemy) && (MIS_MyBrew == LOG_Running) && (KnowFakeRecept == FALSE))
	{
		return TRUE;
	};
};

func void PC_MIS_MyBrew_Info()
{
	var int ransfx;

	if((Npc_HasItems(self,ItMi_Flask) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 1) && (Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,ItFo_Water) >= 1) && (Npc_HasItems(hero,ItAt_SkeletonBone) >= 1) && (Npc_HasItems(hero,ItPl_SwampHerb) >= 1) && (Npc_HasItems(hero,ItFo_Cheese) >= 1) && (Npc_HasItems(hero,ItPl_Mushroom_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_Flask,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,1);
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,ItFo_Water,1);
		Npc_RemoveInvItems(hero,ItAt_SkeletonBone,1);
		Npc_RemoveInvItems(hero,ItPl_SwampHerb,1);
		Npc_RemoveInvItems(hero,ItFo_Cheese,1);
		Npc_RemoveInvItems(hero,ItPl_Mushroom_01,1);

		ransfx = Hlp_Random(3);

		if(ransfx == 0)
		{
			B_Say(self,self,"$DONTWORK");
		}
		else if(ransfx == 1)
		{
			B_Say(self,self,"$TOOHARD");
		}
		else if(ransfx == 2)
		{
			B_Say(self,self,"$DONTKNOW");
		};

		Print("Nepovedlo se ti připravit lektvar!");

		if(FTConsPotion == FALSE)
		{
			FTConsPotion = TRUE;

			if(MIS_MyBrew == LOG_Running)
			{
				B_LogEntry(TOPIC_MyBrew,"S tím receptem není něco v pořádku! Nejspíš bych si měl o tom jít promluvit s ostatními alchymisty ve městě.");
			};
		};
	}
	else
	{
		AI_PrintClr("Nemáš potřebné ingredience!",177,58,17);
		B_Say(self,self,"$MISSINGINGREDIENTS");
	};
};