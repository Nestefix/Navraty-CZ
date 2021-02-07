/* -------------------- CZ CHANGELOG -------------------- */

/*

v1.01:

func void CZ_Recalculate_Needs - nová funkce
(10x) CZ_Recalculate_Needs - přidání možnosti zapnout/vypnout hlad/žízeň/únavu / omezení spánku na nižších obtížnostech
CZ_Settings_Diff_EnableSleepCap - přidání možnosti zapnout/vypnout omezení spánku
PRIORATWORLD_ZEN - vypnuto omezení spánku v doupěti bratrstva Masyaf
(2x) hitheal -  upraven výpočet obnovených HP za hodinu spánku

*/



func void CZ_Recalculate_Needs(var int hrs)
{
	
	var int hrs_halved;
	hrs_halved = (hrs + 1) / 2;
	
	if(CZ_Settings_Diff_EnableFatigue == TRUE)
	{
		Hero_Fatigue = Hero_Fatigue + hrs;
		
		if(Hero_Fatigue >= 10)
		{
			Hero_Fatigue = 10;
		};
	};
	
	if(CZ_Settings_Diff_EnableHunger == TRUE)
	{
		if(Hero_Hunger > hrs_halved)
		{
			Hero_Hunger -= hrs_halved;
		}		
		else
		{
			Hero_Hunger = FALSE;
		};	
	};
	
	if(CZ_Settings_Diff_EnableThirst == TRUE)
	{
		if(Hero_Thirst > hrs_halved)
		{
			Hero_Thirst -= hrs_halved;
		}		
		else
		{
			Hero_Thirst = FALSE;
		};	
	};
	
	if((CZ_Settings_Diff_EnableSleepCap == TRUE) && (CurrentLevel != PRIORATWORLD_ZEN))
	{
		DaySleepHour += hrs;
	};
	
};



func void sleepabit_s1()
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);

	if((Hlp_GetHeroStatus() == HERO_THREATENED) || (Hlp_GetHeroStatus() == HERO_FIGHTING))
	{
		B_Say(self,self,"$DOESNTWORK");
	}
	else
	{
		if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
		{
			if(Menu_ReadInt("SOUND","musicEnabled") == TRUE)
			{
				Menu_WriteInt("SOUND","musicEnabled",FALSE);
				BeMusic = TRUE;
			};
			if(CinemaMod == TRUE)
			{
				Wld_PlayEffect("DIALOGSCOPE_FX",hero,hero,0,0,0,FALSE);
			};
			if((Npc_GetDistToWP(hero,"NW_CITY_HOTEL_BED_07") <= 500) || (Npc_GetDistToWP(hero,"NW_BIGFARM_STABLE_SLEEP_01") <= 1200))
			{
			}
			else
			{
				self.aivar[AIV_INVINCIBLE] = FALSE;
			};

			PLAYER_MOBSI_PRODUCTION = MOBSI_SleepAbit;
			AI_ProcessInfos(her);
		};
	};
};

func void use_sleepfur()
{
	if((Hlp_GetHeroStatus() == HERO_THREATENED) || (Hlp_GetHeroStatus() == HERO_FIGHTING))
	{
		B_Say(self,self,"$DOESNTWORK");

		if(Npc_HasItems(hero,ITMI_SLEEPSACK) == FALSE)
		{
			CreateInvItems(hero,ITMI_SLEEPSACK,1);
		};
	}
	else
	{
		SLEEPONGROUND = TRUE;
		CreateInvItems(self,ITMI_SLEEPSACK_TEMP,1);
		B_StopLookAt(self);
		AI_StopPointAt(self);
		AI_DropItem(self,ITMI_SLEEPSACK_TEMP);
		AI_PlayAni(self,"T_PLUNDER");
		AI_PlayAni(self,"T_STAND_2_SLEEPGROUND");
		sleepabit_s1();
	};
};

instance PC_NoSleep(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_NoSleep_Condition;
	information = PC_NoSleep_Info;
	important = FALSE;
	permanent = TRUE;
	description = DIALOG_ENDE_WORK;
};

func int PC_NoSleep_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void PC_NoSleep_Info()
{
	//Wld_StopEffect("DEMENTOR_FX");
	AI_StopProcessInfos(self);
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	self.aivar[AIV_INVINCIBLE] = FALSE;

	if(SLEEPONGROUND == TRUE)
	{
		AI_PlayAni(hero,"T_SLEEPGROUND_2_STAND");
		SLEEPONGROUND = FALSE;
	};
	if(TorchIsOn == FALSE)
	{
		CheckTorchIsOn = TRUE;
	};
};

instance PC_SLEEPTIME_RECOVER(C_Info)
{
	npc = PC_Hero;
	condition = pc_sleeptime_recover_condition;
	information = pc_sleeptime_recover_info;
	important = FALSE;
	permanent = TRUE;
	description = "Spát...";
};

func int pc_sleeptime_recover_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SleepAbit)
	{
		return TRUE;
	};
};

func void pc_sleeptime_recover_info()
{
	// if(SleepDis == 24)
	if((CZ_Settings_Diff_EnableSleepCap == FALSE) || (CurrentLevel == PRIORATWORLD_ZEN))
	{
		Info_ClearChoices(pc_sleeptime_recover);
		Info_AddChoice(pc_sleeptime_recover,"... 10 hodin",pc_sleeptime_recover_10);
		Info_AddChoice(pc_sleeptime_recover,"... 9 hodin",pc_sleeptime_recover_9);
		Info_AddChoice(pc_sleeptime_recover,"... 8 hodin",pc_sleeptime_recover_8);
		Info_AddChoice(pc_sleeptime_recover,"... 7 hodin",pc_sleeptime_recover_7);
		Info_AddChoice(pc_sleeptime_recover,"... 6 hodin",pc_sleeptime_recover_6);
		Info_AddChoice(pc_sleeptime_recover,"... 5 hodin",pc_sleeptime_recover_5);
		Info_AddChoice(pc_sleeptime_recover,"... 4 hodiny",pc_sleeptime_recover_4);
		Info_AddChoice(pc_sleeptime_recover,"... 3 hodiny",pc_sleeptime_recover_3);
		Info_AddChoice(pc_sleeptime_recover,"... 2 hodiny",pc_sleeptime_recover_2);
		Info_AddChoice(pc_sleeptime_recover,"... 1 hodinu",pc_sleeptime_recover_1);
		Info_AddChoice(pc_sleeptime_recover,Dialog_Back,pc_sleeptime_recover_back);
	}
	else
	{
		if(DaySleepHour >= 10)
		{
			AI_Print("Nechce se ti spát...");
			//Wld_StopEffect("DEMENTOR_FX");
			AI_StopProcessInfos(self);
			PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
			self.aivar[AIV_INVINCIBLE] = FALSE;

			if(SLEEPONGROUND == TRUE)
			{
				AI_PlayAni(hero,"T_SLEEPGROUND_2_STAND");
				SLEEPONGROUND = FALSE;
			};
			if(TorchIsOn == FALSE)
			{
				CheckTorchIsOn = TRUE;
			};
		}
		else
		{
			Info_ClearChoices(pc_sleeptime_recover);

			if((10 - DaySleepHour) >= 10)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 10 hodin",pc_sleeptime_recover_10);
			};
			if((10 - DaySleepHour) >= 9)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 9 hodin",pc_sleeptime_recover_9);
			};
			if((10 - DaySleepHour) >= 8)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 8 hodin",pc_sleeptime_recover_8);
			};
			if((10 - DaySleepHour) >= 7)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 7 hodin",pc_sleeptime_recover_7);
			};
			if((10 - DaySleepHour) >= 6)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 6 hodin",pc_sleeptime_recover_6);
			};
			if((10 - DaySleepHour) >= 5)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 5 hodin",pc_sleeptime_recover_5);
			};
			if((10 - DaySleepHour) >= 4)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 4 hodiny",pc_sleeptime_recover_4);
			};
			if((10 - DaySleepHour) >= 3)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 3 hodiny",pc_sleeptime_recover_3);
			};
			if((10 - DaySleepHour) >= 2)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 2 hodiny",pc_sleeptime_recover_2);
			};
			if((10 - DaySleepHour) >= 1)
			{ 
				Info_AddChoice(pc_sleeptime_recover,"... 1 hodinu",pc_sleeptime_recover_1);
			};

			Info_AddChoice(pc_sleeptime_recover,Dialog_Back,pc_sleeptime_recover_back);
		};
	};
};

func void pc_sleeptime_recover_back()
{
	Info_ClearChoices(pc_sleeptime_recover);
};

func void pc_sleep_random(var int hour)
{
	var int hitheal;
	var int hitmana;
	var int hit;
	var int hitmax;
	var int hitdelta;
	var int hithealhit;
	var int staminares;
	var int rnd_scream;

	hit = hero.attribute[ATR_HITPOINTS];
	hitmax = hero.attribute[ATR_HITPOINTS_MAX];
	hitdelta = hitmax - hit;
	hitheal = hitmax / 10;

	if(hitheal <= 0)
	{
		hitheal = 1;
	};

	if(SC_IsObsessed == TRUE)
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};
	}
	else if(POISONED == TRUE)
	{
		AI_Print(PRINT_SleepOverPoisoned);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			B_Say(hero,hero,"$Aargh_1");
		}
		else if(rnd_scream >= 30)
		{
			B_Say(hero,hero,"$Aargh_2");
		}
		else
		{
			B_Say(hero,hero,"$Aargh_3");	
		};
	}
	else
	{
		rnd_scream = Hlp_Random(4);

		if(rnd_scream == 0)
		{
			B_Say(hero,hero,"$IDLE_01");
		}
		else if(rnd_scream == 1)
		{
			B_Say(hero,hero,"$IDLE_02");
		}
		else if(rnd_scream == 2)
		{
			B_Say(hero,hero,"$IDLE_03");
		}
		else
		{
			B_Say(hero,hero,"$Awake");
		};

		hithealhit = hour * hitheal;
		hithealhit = hithealhit + hit;

		if(SBMODE == TRUE)
		{
			if(hithealhit >= hero.attribute[ATR_HITPOINTS_MAX])
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			}
			else
			{
				hero.attribute[ATR_HITPOINTS] = hithealhit;
			};
		}
		else
		{
			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		};
		if(SBMODE == TRUE)
		{
			staminares = (ATR_STAMINA_MAX[0] * 10) / 5;
			ATR_STAMINA[0] = ATR_STAMINA[0] + (staminares * hour);
		}
		else
		{
			ATR_STAMINA[0] = ATR_STAMINA_MAX[0] * 10;
		};
		if(ATR_STAMINA[0] > (ATR_STAMINA_MAX[0] * 10))
		{
			ATR_STAMINA[0] = ATR_STAMINA_MAX[0] * 10;
		};
		if((hero.guild == GIL_KDF) || (hero.guild == GIL_KDW) || (hero.guild == GIL_KDM) || (hero.guild == GIL_GUR))
		{
			hit = hero.attribute[ATR_MANA];
			hitmax = hero.attribute[ATR_MANA_MAX];
			hitdelta = hitmax - hit;
			hitheal = hitmax / 10;

			if(hitheal <= 0)
			{
				hitheal = 1;
			};

			hithealhit = hour * hitheal;
			hithealhit = hithealhit + hit;

			if(hithealhit >= hero.attribute[ATR_MANA_MAX])
			{
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			}
			else
			{
				hero.attribute[ATR_MANA] = hithealhit;
			};
		};
	};

	Info_ClearChoices(pc_sleeptime_recover);
};

func void pc_sleeptime_recover_1()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 1;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 1)
				{
					Hero_Hunger -= 1;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 1)
				{
					Hero_Thirst -= 1;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 1;
			};
		*/
		
		CZ_Recalculate_Needs(1);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 1;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(1);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_2()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 2;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 1)
				{
					Hero_Hunger -= 1;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 1)
				{
					Hero_Thirst -= 1;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 2;
			};
		*/
		
		CZ_Recalculate_Needs(2);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 2;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(2);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_3()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 3;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 2)
				{
					Hero_Hunger -= 2;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 2)
				{
					Hero_Thirst -= 2;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 3;
			};
		*/
		
		CZ_Recalculate_Needs(3);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 3;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(3);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_4()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 4;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 2)
				{
					Hero_Hunger -= 2;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 2)
				{
					Hero_Thirst -= 2;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 4;
			};
		*/
		
		CZ_Recalculate_Needs(4);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 4;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(4);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_5()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 5;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 3)
				{
					Hero_Hunger -= 3;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 3)
				{
					Hero_Thirst -= 3;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 5;
			};
		*/
		
		CZ_Recalculate_Needs(5);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 5;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(5);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_6()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 6;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 3)
				{
					Hero_Hunger -= 3;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 3)
				{
					Hero_Thirst -= 3;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 6;
			};
		*/
		
		CZ_Recalculate_Needs(6);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 6;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(6);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_7()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 7;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 4)
				{
					Hero_Hunger -= 4;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 4)
				{
					Hero_Thirst -= 4;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 7;
			};
		*/
		
		CZ_Recalculate_Needs(7);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 7;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(7);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_8()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 8;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 4)
				{
					Hero_Hunger -= 4;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 4)
				{
					Hero_Thirst -= 4;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 8;
			};
		*/
		
		CZ_Recalculate_Needs(8);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 8;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(8);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_9()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 9;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 5)
				{
					Hero_Hunger -= 5;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 5)
				{
					Hero_Thirst -= 5;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 9;
			};
		*/
		
		CZ_Recalculate_Needs(9);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 9;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(9);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};

func void pc_sleeptime_recover_10()
{
	var int bHour;
	var int bMinute;
	var int rnd_scream;

	if(SC_IsObsessed == FALSE)
	{
		/*
			if(SBMODE == TRUE)
			{
				Hero_Fatigue = Hero_Fatigue + 10;

				if(Hero_Fatigue >= 10)
				{
					Hero_Fatigue = 10;
				};
				if(Hero_Hunger > 5)
				{
					Hero_Hunger -= 5;
				}		
				else
				{
					Hero_Hunger = FALSE;
				};	
				if(Hero_Thirst > 5)
				{
					Hero_Thirst -= 5;
				}		
				else
				{
					Hero_Thirst = FALSE;
				};	

				DaySleepHour += 10;
			};
		*/
		
		CZ_Recalculate_Needs(10);
		
		bHour = Wld_GetTimeHour();
		bMinute = Wld_GetTimeMin();
		bHour += 10;
		Wld_SetTime(bHour,bMinute);
		pc_sleep_random(10);
	}
	else
	{
		AI_Print(PRINT_SleepOverObsessed);
		rnd_scream = Hlp_Random(100);

		if(rnd_scream >= 60)
		{
			Snd_Play("ZOM_DIE");		
		}
		else if(rnd_scream >= 30)
		{
			Snd_Play("ZOM_DIE_A1");	
		}
		else
		{
			Snd_Play("ZOM_DIE_A2");	
		};

		Info_ClearChoices(pc_sleeptime_recover);
	};
};