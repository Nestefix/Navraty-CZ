/* -------------------- CZ CHANGELOG -------------------- */

/*

v1.01:

(6x) CanLearnMagicCircleNext_ABCZ - upraveny podmínky učení se magických kruhů (na žádost hráčů)
TOPIC_ORcGREATWAR - TOPIC_ORCGREATWAR (cyrilice -> latinka)

*/



instance DIA_BAALORUN_EXIT(C_Info)
{
	npc = gur_8002_orun;
	nr = 999;
	condition = dia_baalorun_exit_condition;
	information = dia_baalorun_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_baalorun_exit_condition()
{
	return TRUE;
};

func void dia_baalorun_exit_info()
{
	if((other.guild == GIL_SEK) || (other.guild == GIL_TPL) || (other.guild == GIL_GUR))
	{
		AI_Output(other,self,"DIA_BaalOrun_exit_01_01");	//Měj se!
		AI_Output(self,other,"DIA_BaalOrun_exit_01_02");	//Nechť Spáč osvítí tvou mysl!
	};

	AI_StopProcessInfos(self);
};

instance DIA_BAALORUN_PICKPOCKET(C_Info)
{
	npc = gur_8002_orun;
	nr = 900;
	condition = DIA_BAALORUN_PICKPOCKET_Condition;
	information = DIA_BAALORUN_PICKPOCKET_Info;
	permanent = TRUE;
	description = PICKPOCKET_COMM;
};

func int DIA_BAALORUN_PICKPOCKET_Condition()
{
	return C_Beklauen(49,35);
};

func void DIA_BAALORUN_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_BAALORUN_PICKPOCKET);
	Info_AddChoice(DIA_BAALORUN_PICKPOCKET,Dialog_Back,DIA_BAALORUN_PICKPOCKET_BACK);
	Info_AddChoice(DIA_BAALORUN_PICKPOCKET,DIALOG_PICKPOCKET,DIA_BAALORUN_PICKPOCKET_DoIt);
};

func void DIA_BAALORUN_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_BAALORUN_PICKPOCKET);
};

func void DIA_BAALORUN_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_BAALORUN_PICKPOCKET);
};


var int baalorun_lastpetzcounter;
var int baalorun_lastpetzcrime;

instance DIA_BAALORUN_PMSCHULDEN(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_pmschulden_condition;
	information = dia_baalorun_pmschulden_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_baalorun_pmschulden_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BAALORUN_SCHULDEN > 0) && (B_GetGreatestPetzCrime(self) <= BAALORUN_LASTPETZCRIME))
	{
		return TRUE;
	};
};

func void dia_baalorun_petzmaster_attackmurder()
{
	var string concatText;
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_HumanMurderedHuman,0);
	GLOBAL_MAKE_BANDIT_FORPSICAMP = 1;
	concatText = "Bratrstvo mě vyhnalo!";
	AI_Print(concatText);
};

func void dia_baalorun_pmschulden_attackmurder()
{
	var string concatText;
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_HumanMurderedHuman,0);
	GLOBAL_MAKE_BANDIT_FORPSICAMP = 1;
	concatText = "Bratrstvo mě vyhnalo!";
	AI_Print(concatText);
};

func void dia_baalorun_pmschulden_info()
{
	var int diff;
	var string concatText1;
	var string concatText2;
	var string concattextschulden;
	var string tsettext1;
	var string tsettext2;
	var string tsettext3;
	var int temp1;
	AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_00");	//Dřív než budeme něco probírat, vyřídíme si s tebou několik záležitostí.
	temp1 = 0;
	if(GLOBAL_PSICAMP_MURDER > 2)
	{
		temp1 = 1;
	};
	if(GLOBAL_PSICAMP_THEFT > 5)
	{
		temp1 = 1;
	};
	if(GLOBAL_PSICAMP_ATTACK > 5)
	{
		temp1 = 1;
	};
	if(temp1 == 1)
	{
		if(GLOBAL_PSICAMP_MURDER > 2)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_MURDER),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_MURDERCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_MURDERCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_36");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_37");	//Všechny bratry v táboře těží tvoje kruté vraždy.
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_38");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_39");	//Zemři ty bezvěrče!
		}
		else if(GLOBAL_PSICAMP_ATTACK > 5)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_ATTACK),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_ATTACKCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_ATTACKCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_40");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_41");	//Všichni bratři v táboře jsou utrápení tvými neustálymi rvačkami.
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_42");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_43");	//Zemři ty bezvěrče!
		}
		else if(GLOBAL_PSICAMP_THEFT > 5)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_THEFT),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_THEFTCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_THEFTCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_44");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_45");	//V našem táboře není místo pro zloděje!
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_46");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_08_47");	//Zemři ty bezvěrče!
		};
		Log_CreateTopic(TOPIC_DIPLOM,LOG_NOTE);
		B_LogEntry(TOPIC_DIPLOM,"Kvůli mým neustálým přestupkům je můj vztah s Bratrstvem zničený. Teď mě považují za zločince!");
		Info_ClearChoices(dia_baalorun_pmschulden);
		Info_ClearChoices(dia_baalorun_petzmaster);
		Info_AddChoice(dia_baalorun_pmschulden,"Počkej!... (stáhnout se)",dia_baalorun_pmschulden_attackmurder);
	}
	else
	{
		if(B_GetTotalPetzCounter(self) > BAALORUN_LASTPETZCOUNTER)
		{
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_01");	//Za poslední dobu si nám přidal hodně problémů.
			diff = B_GetTotalPetzCounter(self) - BAALORUN_LASTPETZCOUNTER;
			if(diff > 0)
			{
				BAALORUN_SCHULDEN = BAALORUN_SCHULDEN + (diff * 250);
			};
			if(BAALORUN_SCHULDEN < 1000)
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_03");	//Ale doufám, že nás za všechny odškodníš! Dokopy to činí...
			}
			else
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_04");	//Nečekal jsem od tebe něco takového. Suma je...
			};
			AI_Output(other,self,"DIA_BaalOrun_PMAdd_15_00");	//Kolik?
			if(BAALORUN_SCHULDEN <= 1000)
			{
				B_Say_Gold(self,other,BAALORUN_SCHULDEN);
			}
			else
			{
				concatText1 = ConcatStrings(IntToString(BAALORUN_SCHULDEN),"");
				concatText2 = ConcatStrings(concatText1,PRINT_SHULDEN2);
				concattextschulden = ConcatStrings(PRINT_SHULDEN,concatText2);
				AI_Print(concattextschulden);
			};
		}
		else if(B_GetGreatestPetzCrime(self) < BAALORUN_LASTPETZCRIME)
		{
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_05");	//Objevili se nějaké nové fakta.

			if(BAALORUN_LASTPETZCRIME == CRIME_MURDER)
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_06");	//Z nějakého důvodu tě už nikdo neobviňuje z vraždy.
				GLOBAL_PSICAMP_MURDER = GLOBAL_PSICAMP_MURDER - 1;
				if(GLOBAL_PSICAMP_MURDER < 0)
				{
					GLOBAL_PSICAMP_MURDER = 0;
				};
			};
			if((BAALORUN_LASTPETZCRIME == CRIME_THEFT) || ((BAALORUN_LASTPETZCRIME > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT)))
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_07");	//Nikdo si už nepamatuje, že by tě viděl u krádeže.
				GLOBAL_PSICAMP_THEFT = GLOBAL_PSICAMP_THEFT - 1;
				if(GLOBAL_PSICAMP_THEFT < 0)
				{
					GLOBAL_PSICAMP_THEFT = 0;
				};
			};
			if((BAALORUN_LASTPETZCRIME == CRIME_ATTACK) || ((BAALORUN_LASTPETZCRIME > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK)))
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_08");	//Není žádný další svědek toho, že ses zúčastnil souboje.
				GLOBAL_PSICAMP_ATTACK = GLOBAL_PSICAMP_ATTACK - 1;
				if(GLOBAL_PSICAMP_ATTACK < 0)
				{
					GLOBAL_PSICAMP_ATTACK = 0;
				};
			};
			if(B_GetGreatestPetzCrime(self) == CRIME_NONE)
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_09");	//Zdá se, že ti bratři odpustili všechno co jsi napáchal.
			};
			AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_10");	//Už se nezapleť do další aféry!
			if(B_GetGreatestPetzCrime(self) == CRIME_NONE)
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_11");	//A nevytvářej zde už problémy!
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_12");	//Za poslední dobu jich na nás bylo dost.
				BAALORUN_SCHULDEN = 0;
				BAALORUN_LASTPETZCOUNTER = 0;
				BAALORUN_LASTPETZCRIME = CRIME_NONE;
			}
			else
			{
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_13");	//Aby bylo jasno, musíš zaplatit odškodné v plné výši!
				AI_Output(other,self,"DIA_BaalOrun_PMAdd_15_00A");	//Kolik?
				if(BAALORUN_SCHULDEN <= 1000)
				{
					B_Say_Gold(self,other,BAALORUN_SCHULDEN);
				}
				else
				{
					concatText1 = ConcatStrings(IntToString(BAALORUN_SCHULDEN),"");
					concatText2 = ConcatStrings(concatText1,PRINT_SHULDEN2);
					concattextschulden = ConcatStrings(PRINT_SHULDEN,concatText2);
					AI_Print(concattextschulden);
				};
				AI_Output(self,other,"DIA_BaalOrun_PMSchulden_10_14");	//Takže, jak ses rozhodl?
			};
		};
		if(B_GetGreatestPetzCrime(self) != CRIME_NONE)
		{
			Info_ClearChoices(dia_baalorun_pmschulden);
			Info_ClearChoices(dia_baalorun_petzmaster);
			Info_AddChoice(dia_baalorun_pmschulden,"Nemám dost zlata!",dia_baalorun_petzmaster_paylater);
			Info_AddChoice(dia_baalorun_pmschulden,"Kolik to mám zaplatit?",dia_baalorun_pmschulden_howmuchagain);
			if(Npc_HasItems(other,ItMi_Gold) >= BAALORUN_SCHULDEN)
			{
				Info_AddChoice(dia_baalorun_pmschulden,"Chci to zaplatit.",dia_baalorun_petzmaster_paynow);
			};
		};
	};
};

func void dia_baalorun_pmschulden_howmuchagain()
{
	var string concatText1;
	var string concatText2;
	var string concattextschulden;
	AI_Output(other,self,"DIA_BaalOrun_PMSchulden_HowMuchAgain_15_00");	//Kolik to mám zaplatit?
	if(BAALORUN_SCHULDEN <= 1000)
	{
		B_Say_Gold(self,other,BAALORUN_SCHULDEN);
	}
	else
	{
		concatText1 = ConcatStrings(IntToString(BAALORUN_SCHULDEN),"");
		concatText2 = ConcatStrings(concatText1,PRINT_SHULDEN2);
		concattextschulden = ConcatStrings(PRINT_SHULDEN,concatText2);
		AI_Print(concattextschulden);
	};
	Info_ClearChoices(dia_baalorun_pmschulden);
	Info_ClearChoices(dia_baalorun_petzmaster);
	Info_AddChoice(dia_baalorun_pmschulden,"Nemám dost zlata!",dia_baalorun_petzmaster_paylater);
	Info_AddChoice(dia_baalorun_pmschulden,"Kolik to mám zaplatit?",dia_baalorun_pmschulden_howmuchagain);
	if(Npc_HasItems(other,ItMi_Gold) >= BAALORUN_SCHULDEN)
	{
		Info_AddChoice(dia_baalorun_pmschulden,"Chci to zaplatit.",dia_baalorun_petzmaster_paynow);
	};
};


instance DIA_BAALORUN_PETZMASTER(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_petzmaster_condition;
	information = dia_baalorun_petzmaster_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_baalorun_petzmaster_condition()
{
	if(B_GetGreatestPetzCrime(self) > BAALORUN_LASTPETZCRIME)
	{
		return TRUE;
	};
};

func void dia_baalorun_petzmaster_info()
{
	var string concatText1;
	var string concatText2;
	var string concattextschulden;
	var string tsettext1;
	var string tsettext2;
	var string tsettext3;
	var int temp1;
	BAALORUN_SCHULDEN = 0;
	if(self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_00");	//Hej, nováčku. Proč jsi nám zde nadělal problémy? Mel bys to se mnou urovnat.
	};
	temp1 = 0;
	if(GLOBAL_PSICAMP_MURDER > 2)
	{
		temp1 = 1;
	};
	if(GLOBAL_PSICAMP_THEFT > 5)
	{
		temp1 = 1;
	};
	if(GLOBAL_PSICAMP_ATTACK > 5)
	{
		temp1 = 1;
	};
	if(temp1 == 1)
	{
		if(GLOBAL_PSICAMP_MURDER > 2)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_MURDER),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_MURDERCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_MURDERCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_48");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_49");	//Všechny bratry v táboře těží tvoje kruté vraždy.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_50");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_51");	//Zemři ty bezvěrče!
		}
		else if(GLOBAL_PSICAMP_ATTACK > 5)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_ATTACK),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_ATTACKCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_ATTACKCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_52");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_53");	//Všichni bratři v táboře jsou utrápení tvými neustálymi rvačkami.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_54");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_55");	//Zemři ty bezvěrče!
		}
		else if(GLOBAL_PSICAMP_THEFT > 5)
		{
			tsettext1 = ConcatStrings(IntToString(GLOBAL_PSICAMP_THEFT),"");
			tsettext2 = ConcatStrings(tsettext1,PRINT_THEFTCOUNT2_PSICAMP);
			tsettext3 = ConcatStrings(PRINT_THEFTCOUNT_PSICAMP,tsettext2);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_56");	//Přesněji jednu... záležitost.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_57");	//V našem táboře není místo pro zloděje!
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_58");	//A jedinečný způsob jak potrestat tvé nekonečné přestupky, je zabít tě...
			if(Npc_HasItems(self,ItRu_Whirlwind) == 0)
			{
				CreateInvItems(self,ItRu_Whirlwind,1);
			};
			B_ReadySpell(self,SPL_Whirlwind,SPL_Cost_Whirlwind);
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_08_59");	//Zemři ty bezvěrče!
		};
		Log_CreateTopic(TOPIC_DIPLOM,LOG_NOTE);
		B_LogEntry(TOPIC_DIPLOM,"Kvůli mým neustálým přestupkům je můj vztah s Bratrstvem zničený. Teď mě považují za zločince!");
		Info_ClearChoices(dia_baalorun_pmschulden);
		Info_ClearChoices(dia_baalorun_petzmaster);
		Info_AddChoice(dia_baalorun_petzmaster,"Počkej!... (stáhnout se)",dia_baalorun_petzmaster_attackmurder);
	}
	else
	{
		if(B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_02");	//Vražda je to poslední, co bychom si tady přáli!
			BAALORUN_SCHULDEN = B_GetTotalPetzCounter(self) * 1500;
			if((PETZCOUNTER_PSICAMP_THEFT + PETZCOUNTER_PSICAMP_ATTACK) > 0)
			{
				AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_04");	//A už vůbec mě netěší tvě ostatnými prohřešky.
			};
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_06");	//Zaplatíš za pohřby našich bratří.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_07");	//Tím nenapravíš co se stalo a správně bys měl být zodpovedný za tvůj zločin před bohy.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_08");	//Ale přinejmenším si tak usmíříš ty, kteří tady zůstali.
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_09");	//Slyšel jsem, že jsi byl zapojený do krádeže?
			if(PETZCOUNTER_PSICAMP_ATTACK > 0)
			{
				AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_10");	//Kromě ostatních nepříjemných záležitostí.
			};
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_11");	//To nebylo nutné.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_12");	//Zaplatíš pokutu za tvoje zločiny!
			BAALORUN_SCHULDEN = B_GetTotalPetzCounter(self) * 500;
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_13");	//Nikto tady nemá rád rvačky - víš to? Pokud si chceš mávat pěstima - jdi do Khorinisu.
			AI_Output(self,other,"DIA_BaalOrun_PetzMaster_10_15");	//Musíš zaplatit za své zločiny! Možná pak na všechno zapomenu.
			BAALORUN_SCHULDEN = B_GetTotalPetzCounter(self) * 750;
		};
		AI_Output(other,self,"DIA_BaalOrun_PetzMaster_15_18");	//Kolik?
		if(BAALORUN_SCHULDEN <= 1000)
		{
			B_Say_Gold(self,other,BAALORUN_SCHULDEN);
		}
		else
		{
			concatText1 = ConcatStrings(IntToString(BAALORUN_SCHULDEN),"");
			concatText2 = ConcatStrings(concatText1,PRINT_SHULDEN2);
			concattextschulden = ConcatStrings(PRINT_SHULDEN,concatText2);
			AI_Print(concattextschulden);
		};
		Info_ClearChoices(dia_baalorun_pmschulden);
		Info_ClearChoices(dia_baalorun_petzmaster);
		Info_AddChoice(dia_baalorun_petzmaster,"Nemám dost zlata!",dia_baalorun_petzmaster_paylater);
		if(Npc_HasItems(other,ItMi_Gold) >= BAALORUN_SCHULDEN)
		{
			Info_AddChoice(dia_baalorun_petzmaster,"Chci to zaplatit.",dia_baalorun_petzmaster_paynow);
		};
	};
};

func void dia_baalorun_petzmaster_paynow()
{
	AI_Output(other,self,"DIA_BaalOrun_PetzMaster_PayNow_15_00");	//Chci to zaplatit!
	B_GiveInvItems(other,self,ItMi_Gold,BAALORUN_SCHULDEN);
	AI_Output(self,other,"DIA_BaalOrun_PetzMaster_PayNow_10_01");	//To je dobře, já teda uklidním bratry. Ale ať se to víc neopakuje!
	B_GrantAbsolution(LOC_PSICAMP);
	BAALORUN_SCHULDEN = 0;
	BAALORUN_LASTPETZCOUNTER = 0;
	BAALORUN_LASTPETZCRIME = CRIME_NONE;
	Info_ClearChoices(dia_baalorun_petzmaster);
	Info_ClearChoices(dia_baalorun_pmschulden);
};

func void dia_baalorun_petzmaster_paylater()
{
	AI_Output(other,self,"DIA_BaalOrun_PetzMaster_PayLater_15_00");	//Nemám dost zlata!
	AI_Output(self,other,"DIA_BaalOrun_PetzMaster_PayLater_10_01");	//Tak ho najdi, pokud možno rychle.
	AI_Output(self,other,"DIA_BaalOrun_PetzMaster_PayLater_10_02");	//Ale navytvářej už další problémy - kvůli tomu tady nejsme.
	BAALORUN_LASTPETZCOUNTER = B_GetTotalPetzCounter(self);
	BAALORUN_LASTPETZCRIME = B_GetGreatestPetzCrime(self);
	AI_StopProcessInfos(self);
};


instance DIA_BAALORUN_NOTALK_HI(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_notalk_hi_condition;
	information = dia_baalorun_notalk_hi_info;
	permanent = FALSE;
	important = FALSE;
	description = "Zdravím! Jsem tady nový.";
};


func int dia_baalorun_notalk_hi_condition()
{
	if((IDOLORAN_YES == FALSE) && (MIS_ORUNPACKET != LOG_FAILED) && (other.guild == GIL_NONE) && (IDOLORAN_NO == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_notalk_hi_info()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Hi_15_00");	//Zdravím! Jsem tady nový.
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Hi_02_01");	//(Povzdech)
	AI_StopProcessInfos(self);
};


instance DIA_BAALORUN_NOTALK_SLEEPER(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_notalk_sleeper_condition;
	information = dia_baalorun_notalk_sleeper_info;
	permanent = FALSE;
	important = FALSE;
	description = "Spáč s tebou!";
};


func int dia_baalorun_notalk_sleeper_condition()
{
	if((IDOLORAN_YES == FALSE) && (MIS_ORUNPACKET != LOG_FAILED) && (other.guild == GIL_NONE) && (IDOLORAN_NO == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_notalk_sleeper_info()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Sleeper_15_00");	//Spáč s tebou!
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Sleeper_02_01");	//(Povzdech)
	AI_StopProcessInfos(self);
};


instance DIA_BAALORUN_NOTALK_IMP(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_notalk_imp_condition;
	information = dia_baalorun_notalk_imp_info;
	permanent = TRUE;
	important = FALSE;
	description = "Všechno v pořádku, příteli?";
};


func int dia_baalorun_notalk_imp_condition()
{
	if((IDOLORAN_YES == FALSE) && (MIS_ORUNPACKET != LOG_FAILED) && (other.guild == GIL_NONE) && (IDOLORAN_NO == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_notalk_imp_info()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Imp_15_00");	//Všechno v pořádku, příteli?
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Imp_02_01");	//(Povzdech)
	AI_StopProcessInfos(self);
};


instance DIA_BAALORUN_FIRST(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_first_condition;
	information = dia_baalorun_first_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_baalorun_first_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (MIS_ORUNHELPSHIP != LOG_Running) && ((other.guild == GIL_SEK) || (other.guild == GIL_TPL) || (other.guild == GIL_GUR)))
	{
		return TRUE;
	};
};

func void dia_baalorun_first_info()
{
	AI_Output(self,other,"DIA_BaalOrun_FIRST_01_00");	//Čo chceš?
};


instance DIA_BAALORUN_AUFGABE(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_aufgabe_condition;
	information = dia_baalorun_aufgabe_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_baalorun_aufgabe_condition()
{
	var C_Item itm;
	itm = Npc_GetEquippedArmor(other);

	if(Npc_IsInState(self,ZS_Talk) && (hero.guild == GIL_NONE) && ((Hlp_IsItem(itm,itar_sekbed) == TRUE) || (Hlp_IsItem(itm,itar_sekbed_v1) == TRUE)))
	{
		return TRUE;
	};
};

func void dia_baalorun_aufgabe_info()
{
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_00");	//Počkej... Odkud máš bederní roušku novice našeho Bratrstva?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_01");	//Vidím, že tvůj duch po něčem pátrá - pátráš po pravé víře. Cožpak necítíš ten zuřivý vnitřní plamen, ten co ti v noci nedovolí spát?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_02");	//Vidím, že si nejsi jistý - jestli to tak oravdu je - to, že se pokoušíš být sluhou nepravým bohům?!
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_03");	//Ty víš odkud se ty pochybnosti vzaly. Jsou to všechno lži!
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_04");	//Cožpak necítíš zde vnitřní touhu po svobodě? Den po dni se to stává silnější, cožpak necítíš, co se ti tvá duše snaží říct? Ať se tak stane!
	AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_05");	//Začal jsi se mnou mluvit. Takže pokud si dobře pamatuji, znamená to, že tě mohu oslovit i já?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_06");	//Znáš naše pravidla. To je chvályhodné!
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_07");	//Ostatní naši bratři by s tebou nemluvili, pokud by nevěděli, že ti mohou věřit.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_08");	//A já tě oslovil, abych ti dal možnost se předvést.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_09");	//Pokud se nám budeš slibně jevit, pak se budeš moci přidat do našeho Bratrstva. Tedy, pokud chceš, samozřejmě!
	AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_10");	//Jak mohu dokázat svou dobrou vůli?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_11");	//Mám pro tebe jeden velmi delikátní úkol.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_12");	//Pokud ho dokážeš splnit, tak si myslím, že by to mohlo stačit na to, abychom ti začali věřit.
	Info_ClearChoices(dia_baalorun_aufgabe);
	Info_AddChoice(dia_baalorun_aufgabe,"Dobře. Co bych měl udělat?",dia_baalorun_aufgabe_yes);
	Info_AddChoice(dia_baalorun_aufgabe,"Bohužel, teď na to nemám čas.",dia_baalorun_aufgabe_no);
};

func void dia_baalorun_aufgabe_no()
{
	AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_13");	//Bohužel, nemám na to čas.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_14");	//(vzdech) Ach!
	IDOLORAN_NO = TRUE;
	Info_ClearChoices(dia_baalorun_aufgabe);
	AI_StopProcessInfos(self);
};

func void dia_baalorun_aufgabe_yes()
{
	AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_15");	//Dobře. Co mám udělat?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_16");	//Dám ti jednu věc... Tady je balíček. Doručíš to jedné osobě.
	AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_17");	//Komu přesně?
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_18_01");	//Jeho jméno je Larius, je to hlava města Khorinis. Tedy dokud jsou ve městě paladinové, tak vlastně ne.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_19");	//To je všechno. Jednoduše mu předej tuto zásilku - on se postará o všechno ostatní. Najdeš ho ve městské radnici.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_22");	//Po tom co mu předáš tento balík - by ti měl dát něco pro mě.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_23");	//Dones mi zde věc. Pokud to vše takto uděláš, získáš si naši důvěru.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_24");	//A to nejdůležitější! Larius je velmi podezíravá osoba a pokud se mu budeš zdát podezřelý, ani tě nevyslechne.
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_25");	//Takže se ho pokus přesvědčit, že jsem tě poslal já!
	if(PALGUARD == TRUE)
	{
		AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_26");	//A jak se mám dostat přes stráž u vstupu? Paladinové mě dovnitř nevpustí!
		AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_27");	//No, zkus něco vymyslet. Možná že je nějaký způsob, jak se s Lariusem setkat mimo radnici.
		AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_28");	//Tady, vezmi si ten balíček. A neztrať ho!
	}
	else
	{
		AI_Output(other,self,"DIA_BaalOrun_Aufgabe_01_29");	//Dobře.
		AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_30");	//Dobře, ale opravdu ho nikde neztrať!
	};
	B_GiveInvItems(self,other,itmi_drogenpocket,1);
	AI_Output(self,other,"DIA_BaalOrun_Aufgabe_01_31");	//A teď jdi!
	Info_ClearChoices(dia_baalorun_aufgabe);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(VLK_400_Larius,"Start");
	Log_CreateTopic(TOPIC_ORUNPACKET,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_ORUNPACKET,LOG_Running);
	MIS_ORUNPACKET = LOG_Running;
	IDOLORAN_YES = TRUE;
	B_LogEntry(TOPIC_ORUNPACKET,"Souhlasil jsem pomoci Orunovi s jednou delikátni záležitostí. Je velice důležité, doručit zásilku kterou mi předal, městskému radnímu, Lariusovi. A postarat se o to, že mi Larius na oplátku dá něco zpět, pro Baala Oruna.");
};


instance DIA_BAALORUN_ZUSTIMMUNG(C_Info)
{
	npc = gur_8002_orun;
	nr = 5;
	condition = dia_baalorun_zustimmung_condition;
	information = dia_baalorun_zustimmung_info;
	permanent = FALSE;
	description = "Doručil jsem zásilku Lariusovi.";
};


func int dia_baalorun_zustimmung_condition()
{
	if((Npc_HasItems(other,itmi_lariusgoldpocket) >= 1) && (MIS_ORUNPACKET == LOG_Running))
	{
		return TRUE;
	};
};

func void dia_baalorun_zustimmung_info()
{
	B_GivePlayerXP(200);
	AI_Output(other,self,"DIA_BaalOrun_Zustimmung_01_00");	//Doručil jsem zásilku Lariusovi. Na oplátku mě požádal, abych ti předal tuto sumu...
	B_GiveInvItems(other,self,itmi_lariusgoldpocket,1);
	if(hero.guild == GIL_NONE)
	{
		AI_Output(self,other,"DIA_BaalOrun_Zustimmung_01_01");	//To je dobře!... Věděl jsem, že mi to přineseš. Měl si nějaké problémy?
		AI_Output(other,self,"DIA_BaalOrun_Zustimmung_01_02");	//Nic co by stálo za řeč.
		AI_Output(self,other,"DIA_BaalOrun_Zustimmung_01_03");	//Výborně!... Přeukázal si se v nejlepším světle a dokázal že ti je hodno věřit.
		AI_Output(self,other,"DIA_BaalOrun_Zustimmung_01_04");	//Řeknu o tobě ostatním bratřím!
		AI_Output(self,other,"DIA_BaalOrun_Zustimmung_01_05");	//A pokud se k nám chceš přidat, mnoho z nich ti s tím bude ochotných pomoct!
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_Zustimmung_01_01");	//To je dobře!... Vědel jsem, že mi to přineseš. Měl si nějaké problémy?
	};
	Log_SetTopicStatus(TOPIC_ORUNPACKET,LOG_SUCCESS);
	Npc_ExchangeRoutine(VLK_400_Larius,"Always");
	B_LogEntry(TOPIC_ORUNPACKET,"Předal jsem sumu Baalovi Orunovi a tím jsem si vysloužil jeho vděk a důvěru celého Bratrstva.");
	MIS_ORUNPACKET = LOG_SUCCESS;
};


instance DIA_BAALORUN_NOZUSTIMMUNG(C_Info)
{
	npc = gur_8002_orun;
	nr = 5;
	condition = dia_baalorun_nozustimmung_condition;
	information = dia_baalorun_nozustimmung_info;
	permanent = FALSE;
	description = "Nemohl jsem předat zde zásilku Lariusovi.";
};


func int dia_baalorun_nozustimmung_condition()
{
	if(MIS_ORUNPACKET == LOG_FAILED)
	{
		return TRUE;
	};
};

func void dia_baalorun_nozustimmung_info()
{
	AI_Output(other,self,"DIA_BaalOrun_NoZustimmung_01_00");	//Nemohol jsem předat zde zásilku Lariusovi.
	AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_01");	//Proč?!... (udivene)
	if(LARIUSCANCELPACKET > 1)
	{
		AI_Output(other,self,"DIA_BaalOrun_NoZustimmung_01_02");	//Odmítl si ji vzít, a pak ze mě jeho stráže málem nadělali sekanou!
	}
	else
	{
		AI_Output(other,self,"DIA_BaalOrun_NoZustimmung_01_02A");	//Eee... Takže to dopadlo, tak že...
	};

	AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_03");	//Kde je můj balík?!

	if(Npc_HasItems(other,itmi_drogenpocket) >= 1)
	{
		AI_Output(other,self,"DIA_BaalOrun_NoZustimmung_01_04");	//Jistě, tady, vezmi si ho zpátky.
		B_GiveInvItems(other,self,itmi_drogenpocket,1);
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_05");	//Aspoň žes ho nestratil!... Mýlil jsem se, když jsem pověril TEBE tímhle úkolem!
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_06");	//Moc jsi mě zklamal! Strať se mi z očí!...
		IDOLORAN_YES = FALSE;
		IDOLORAN_NOFOREVER = TRUE;
		AI_StopProcessInfos(self);
		Npc_ExchangeRoutine(VLK_400_Larius,"Always");
	}
	else
	{
		AI_Output(other,self,"DIA_BaalOrun_NoZustimmung_01_07");	//Já ho už nemám... eee... Stratil jsem ho.
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_08");	//COŽE?!... (nahněvaně)
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_09");	//Ty mě snad považuješ za idiota!
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_10");	//Teď neunikneš trestu! Zemřeš za svou nepoctivost!
		AI_Output(self,other,"DIA_BaalOrun_NoZustimmung_01_11");	//Zemři ty bezvěrče!
		IDOLORAN_YES = FALSE;
		IDOLORAN_NOFOREVER = TRUE;
		IDOLORAN_NOFOREVERKILL = TRUE;
		AI_StopProcessInfos(self);
		Npc_ExchangeRoutine(VLK_400_Larius,"Always");
		B_Attack(self,other,AR_GuardCalledToKill,1);
	};
};

instance DIA_BAALORUN_NOFOREVER(C_Info)
{
	npc = gur_8002_orun;
	nr = 5;
	condition = dia_baalorun_noforever_condition;
	information = dia_baalorun_noforever_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_baalorun_noforever_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (IDOLORAN_NOFOREVER == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_noforever_info()
{
	if(IDOLORAN_NOFOREVERKILL == FALSE)
	{
		AI_Output(self,other,"DIA_BaalOrun_NoForever_01_00");	//Strať se mi z očí!...
		IDOLORAN_NOFOREVER = TRUE;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_NoForever_01_01");	//Zemři ty bezvěrče!...
		IDOLORAN_NOFOREVER = TRUE;
		IDOLORAN_NOFOREVERKILL = TRUE;
		AI_StopProcessInfos(self);
		B_Attack(self,other,AR_GuardCalledToKill,1);
	};
};


instance DIA_BAALORUN_JOINSEKTA(C_Info)
{
	npc = gur_8002_orun;
	nr = 5;
	condition = dia_baalorun_joinsekta_condition;
	information = dia_baalorun_joinsekta_info;
	permanent = FALSE;
	description = "Řekl si že ti mohu věřit.";
};


func int dia_baalorun_joinsekta_condition()
{
	if((hero.guild == GIL_NONE) && (MIS_ORUNPACKET == LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void dia_baalorun_joinsekta_info()
{
	AI_Output(other,self,"DIA_BaalOrun_JoinSekta_01_00");	//Říkal jsi, že se k vám mohu přidat.
	AI_Output(self,other,"DIA_BaalOrun_JoinSekta_01_01");	//Teď když jsi nám pomohl, a prokázal svou věrnost, máš právo se na to zeptat.
	AI_Output(other,self,"DIA_BaalOrun_JoinSekta_01_02");	//Tak mě tedy přijmi za novice Bratrstva!
	AI_Output(self,other,"DIA_BaalOrun_JoinSekta_01_03");	//Věřím, že jsi hoden této cti.
	AI_Output(self,other,"DIA_BaalOrun_JoinSekta_01_04");	//Můžeš se k nám kdykoliv připojit.
	AI_Output(self,other,"DIA_BaalOrun_JoinSekta_01_05");	//Ale pamatuj, jakmile jednou oblékneš roucho našeho Bratrstva, nemůžeš ji pak jednoduše odložit a zříct se naší víry.
	AI_Output(self,other,"DIA_BaalOrun_JoinSekta_01_06");	//Takže si to dobře rozmysli, než se rozhodneš.
	Log_CreateTopic(TOPIC_PSICAMPJOIN,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_PSICAMPJOIN,LOG_Running);
	CANJOINPSI = TRUE;
	B_LogEntry(TOPIC_PSICAMPJOIN,"Pro přidání se k Bratrstvu, je pro mě nevyhnutné získat náklonnost všech Guru.");
};


instance DIA_BAALORUN_SEKTAADVANTAGE(C_Info)
{
	npc = gur_8002_orun;
	nr = 5;
	condition = dia_baalorun_sektaadvantage_condition;
	information = dia_baalorun_sektaadvantage_info;
	permanent = FALSE;
	description = "A co tím získám já, když se k vám přidám?";
};


func int dia_baalorun_sektaadvantage_condition()
{
	if((hero.guild == GIL_NONE) && Npc_KnowsInfo(other,dia_baalorun_joinsekta))
	{
		return TRUE;
	};
};

func void dia_baalorun_sektaadvantage_info()
{
	AI_Output(other,self,"DIA_BaalOrun_SektaAdvantage_01_00");	//A co tím získám já, když se k vám přidám?
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_01");	//Hmm... Pochybuješ, zda si vybereš správně? Dovol mi něco ti vysvětlit...
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_02");	//I když neše Bratrstvo nemá takovou sílu a vliv jakou mělo ve dnech existence bariéry...
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_03");	//... Stejně moudrost a vědomosti které nám v pravý čas poskytl Spáč, sme nejen zachránili, ale taky značne rozšířili!
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_04");	//Možná se staneš jedním z vyvolených - Guru, a budeš mít možnost poznat sílu prastaré magie, kterou nám ukázal Spáč.
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_05");	//A nebo můžeš získat největší čest - stát se templářem. Jenom největší válečníci mohou nosit tenhle titul!
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_06");	//Jestli to bude vůle osudu, můžeš dokonce spojit oba tyhle posty: najlepší z templářu také získá magické vědomosti.
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_07");	//Jak vidíš, naše Bratrstvo ti dá mnoho možností.
	AI_Output(self,other,"DIA_BaalOrun_SektaAdvantage_01_08");	//Přemýšlej o tom co jsem ti řekl, dřív než se rozhodneš vybrat si.
};


instance DIA_BAALORUN_TELLABOUT(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_tellabout_condition;
	information = dia_baalorun_tellabout_info;
	permanent = FALSE;
	description = "Povež mi o Bratrstvu.";
};


func int dia_baalorun_tellabout_condition()
{
	if((other.guild == GIL_SEK) && Npc_KnowsInfo(other,dia_baalorun_joinsekta))
	{
		return TRUE;
	};
};

func void dia_baalorun_tellabout_info()
{
	AI_Output(other,self,"DIA_BaalOrun_TellAbout_01_01");	//Povež mi o Bratrstvu.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_02");	//Po tom jak Spáč - démon kterého sme všichni nesprávne uctívali, považujíc to za naši záchranu, byl vyhnán z tohoto světa...
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_03");	//... Bratrstvo se ocitlo na pokraji úplného zničení!
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_04");	//Několik z nás přežilo pád bariéry a stratu smyslu víry, která nám tolik let dávala sílu vzepřít se.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_05");	//Pokud mám říct pravdu, vše co zde vidíš - je vše co z něho zůstalo.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_06");	//Většina našich bratří byla buď stracená, nebo se zbláznila. Oni se doslova zohavili a už se téměř nepodobali lidem!
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_07");	//Každý kdo si zachránil život a ubránil se šílenství - přišel sem do Khorinisu...
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_08");	//... V naději že zde najdeme pokoj a příležitost pochopit vše čím sme prošli.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_09");	//Založili sme zde malý tábor a začali tráviť čas hledáním pravé moudrosti, schopní navrátit si pokoj...
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_10");	//... A pomoct najít si novou cestu moudrosti tohto sveta. A zanedlouho nám to bylo možné dosáhnout!
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_11");	//Vzali sme si ty správné lekce z našich znalostí tohohle kraje. Teď už nekomunikujeme se Spáčem - snažíme se poznat podstatu vecí jiným způsobem.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_12");	//Základ našeho nového učení je odhalovat možnosti vědomí dlohou meditací.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_13");	//Přirozeně, nám s tím pomáha i tráva z bažin. Je jednou z klíčů naší nové víry.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_14");	//Tráva z bažin uvolňuje tělo a uklidňuje mysl, pomáha zaměřit se na to co je podstatné a dává nám poznaní pravdy.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_15");	//Naneštěstí, najít ji v těhle místech je těžší, než v močálech kde bylo naše Bratrstvo vybudováno předtím.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_16");	//Ale tento problém sme vyřešili. Ukázalo se, že si zvykla na tyhle podmínky.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_17");	//Jistěže, než se může začít kouřit, je potřebná důkladná příprava. Do toho sme zapojili naše nové členy.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_18");	//Samozřejmě, pravidla Bratrstva se nezmenili.
	AI_Output(other,self,"DIA_BaalOrun_TellAbout_01_19");	//A co Cor Angar?
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_20");	//Bohužel nevíme kde je a co se s ním stalo. Když začalo šílenství během pádu bariéry - nebyl v táboře.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_21");	//Možná, že je pořád naživu. Možná, že ne. Pokud se s ním setkáš, řekni mu že Bratrstvo je pořád naživu a potřebuje jeho pomoc.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_22");	//Ostatní naši bratři jsou novicové. Mnoha z nich můžeš potkat v našem táboře v bažinách.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_23");	//Ale jsou zde i tací, kteří se k nám přidali. Těch ale není moc.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_24");	//Většinou jsou zde usměrňováni Baalem Parvezem - často je ve měste aby hledal nové zájemce.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_25");	//Není to lehká práce - spatřit v davu člověka schopného sebeuvědomění a připraveného sdílet naši víru.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_26");	//Pokud takového potká, přehovoří s ním.
	AI_Output(other,self,"DIA_BaalOrun_TellAbout_01_27");	//A jestli se mnou nebude chtít mluvit?
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_28");	//Samozřejmě, nezačne s tebou mluvit jen tak - neví o tobě nic a ani nic o tom kterou cestu si pravdepodobne vybereš.
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_29");	//Jednoduše mu dej odemě tenhle dar - myslím že udělá výjmku.
	B_GiveInvItems(self,other,itmi_specialjoint,1);
	AI_Output(self,other,"DIA_BaalOrun_TellAbout_01_30");	//Tady, vezmi si to. A taky, myslím že to je vše, co ti mohu říct o našem Bratrstvu.
	AI_Output(other,self,"DIA_BaalOrun_TellAbout_01_31");	//Děkuji, mistře.
	Log_CreateTopic(TOPIC_KORANGARMEET,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_KORANGARMEET,LOG_Running);
	MIS_KORANGAR = LOG_Running;
	B_LogEntry(TOPIC_KORANGARMEET,"Baal Orun neví, co se stalo s jeich bývalým vůdcem a učitelem templářů - Car Angarem. Taky mě požádal že jestli ho náhodou někde potkám, mám mu říct - že Bratrstvo ho očekává a potřebuje.");
};


instance DIA_BAALORUN_TELLKORANGAR(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_tellkorangar_condition;
	information = dia_baalorun_tellkorangar_info;
	permanent = FALSE;
	description = "Našel jsem Cor Angara.";
};


func int dia_baalorun_tellkorangar_condition()
{
	if(MIS_KORANGAR == LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void dia_baalorun_tellkorangar_info()
{
	B_GivePlayerXP(200);
	AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_00");	//Našel jsem Cor Angara.
	if((other.guild == GIL_GUR) || (other.guild == GIL_TPL) || (other.guild == GIL_SEK))
	{
		AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_01");	//A co je s ním?
		if(ANGARISDEAD == TRUE)
		{
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_02");	//Je mrtvý!
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_03");	//To nemůže byť pravda! Nemůže!... (zhrozený)
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_04");	//Je to velká stráta pro Bratrstvo a nás všechny!... (smutný)
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_05");	//Nemůžu si zvyknout na tu myšlenku.
		}
		else
		{
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_06");	//Je živý a zdravý. Potkal jsem ho v Hornickém údolí.
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_07");	//Řekl jsem mu o našem Bratrstvu a myslím si, že se k nám co nevidět připojí.
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_08");	//To jsou výborné noviny!
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_09");	//Všichni bratři očakávají jeho návrat!
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_10");	//Tady - vezmi si to jako náhradu za tvou práci.
			B_GiveInvItems(self,other,ItMi_Gold,200);
			ANGARCANBACK = TRUE;
		};
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_11");	//...(spýtavý povzdech)
		if(ANGARISDEAD == TRUE)
		{
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_12");	//Je mrtvý!
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_13");	//...(smutný povzdech)
		}
		else
		{
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_14");	//A je naživu. Potkal jsem ho v Hornickém údolí.
			AI_Output(other,self,"DIA_BaalOrun_TellKorAngar_01_15");	//Řekl jsem mu o vašem Bratrstvu a myslým si, že se k vám co nevidět připojí.
			AI_Output(self,other,"DIA_BaalOrun_TellKorAngar_01_16");	//...(odlehlý povzdech)
			ANGARCANBACK = TRUE;
		};
	};
};


instance DIA_BAALORUN_TELLPALADIN(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_tellpaladin_condition;
	information = dia_baalorun_tellpaladin_info;
	permanent = FALSE;
	description = "Mám jeden problém.";
};


func int dia_baalorun_tellpaladin_condition()
{
	if(((other.guild == GIL_NONE) || (other.guild == GIL_SEK)) && Npc_KnowsInfo(other,dia_baalorun_tellabout))
	{
		return TRUE;
	};
};

func void dia_baalorun_tellpaladin_info()
{
	AI_Output(other,self,"DIA_BaalOrun_TellPaladin_01_00");	//Mám jeden problém.
	AI_Output(self,other,"DIA_BaalOrun_TellPaladin_01_01");	//Jaký problém?
	AI_Output(other,self,"DIA_BaalOrun_TellPaladin_01_02");	//Potřebuju naléhavě mluvit s vůdcem paladinů ve městě. Ale stráž mě nechce pustit k lordu Hagenovi!
	AI_Output(other,self,"DIA_BaalOrun_TellPaladin_01_03");	//Můžeš mi s tím pomoct?
	AI_Output(self,other,"DIA_BaalOrun_TellPaladin_01_04");	//(udivený)... Proč je to pro tebe tak důležité?
	AI_Output(other,self,"DIA_BaalOrun_TellPaladin_01_05");	//Mám pro něho jednu velmi důležitou zprávu.
	AI_Output(self,other,"DIA_BaalOrun_TellPaladin_01_06");	//Hmm... No... (přemýšlí) Jestli je to pro tebe tak naléhavé...
	AI_Output(self,other,"DIA_BaalOrun_TellPaladin_01_07");	//Jak si už nejspíš pochopil, Bratrstvo má nějaký vliv a kontakty v najvyšších městských kruzích.
	AI_Output(self,other,"DIA_BaalOrun_TellPaladin_01_08");	//Takže si myslím, že pokud se rozhodneš k nám přidat - určitě najdeme cestu jak ti pomoct v řešení tohoto problému.
};


instance DIA_BAALORUN_CANJOINPSI(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_canjoinpsi_condition;
	information = dia_baalorun_canjoinpsi_info;
	permanent = TRUE;
	description = "Chci se přidat k Bratrstvu.";
};


func int dia_baalorun_canjoinpsi_condition()
{
	if((hero.guild == GIL_NONE) && (CANJOINPSI == TRUE) && (MIS_PSICAMPJOIN != LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void dia_baalorun_canjoinpsi_info()
{
	AI_Output(other,self,"DIA_BaalOrun_CanJoinPsi_01_01");	//Chci se přidat k Bratrstvu.
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_01_02");	//Je to tvoje konečná volba? Jsi úplně připravený přijmout naši víru?!
	Info_ClearChoices(dia_baalorun_canjoinpsi);
	Info_AddChoice(dia_baalorun_canjoinpsi,"Rozmyslel jsem si to...",dia_baalorun_canjoinpsi_no);
	Info_AddChoice(dia_baalorun_canjoinpsi,"Ano, jsem pripravený!",dia_baalorun_canjoinpsi_yes);
};

func void dia_baalorun_canjoinpsi_yes()
{
	AI_Output(other,self,"DIA_BaalOrun_CanJoinPsi_Yes_01_00");	//Ano, jsem pripravený!
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_01");	//Takže! Vědel jsem, že to uděláš a rozhodl ses správně!
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_02");	//Vitej v Bratrstvu!
	other.guild = GIL_SEK;
	Snd_Play("LEVELUP");
	CheckHeroGuild[0] = TRUE;

	if(CanTeachTownMaster == FALSE)
	{
		MIS_PathFromDown = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_PathFromDown,LOG_SUCCESS);
		CanTeachTownMaster = TRUE;
	};

	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_04");	//Teď jsi jedním z nás, bratře.
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_05");	//Jako novic Bratrstva, by sis měl vzít na starost některé povinnosti v táboře.
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_07");	//Taky můžeš přijít ke mě když bude má pomoc potřebná.
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_Yes_01_08");	//Teď jdi a snaž dělat dobro ve jménu naší víry!
	SLD_Aufnahme = LOG_OBSOLETE;
	KDF_Aufnahme = LOG_OBSOLETE;
	MIL_Aufnahme = LOG_OBSOLETE;
	MIS_BECOMEKDW = LOG_OBSOLETE;
	MIS_BECOMEKDM = LOG_OBSOLETE;
	MIS_PSICAMPJOIN = LOG_SUCCESS;
	PSI_TALK = TRUE;

	Log_SetTopicStatus(TOPIC_BecomeMIL,LOG_OBSOLETE);
	Log_SetTopicStatus(TOPIC_BecomeSLD,LOG_OBSOLETE);
	Log_SetTopicStatus(TOPIC_BecomeKdF,LOG_OBSOLETE);
	Log_SetTopicStatus(TOPIC_BECOMEKDW,LOG_OBSOLETE);
	Log_SetTopicStatus(TOPIC_BECOMEKDM,LOG_OBSOLETE);

	if(MIS_SLDRESPEKT == LOG_Running)
	{
		MIS_SLDRESPEKT = LOG_OBSOLETE;
		Log_SetTopicStatus(TOPIC_SLDRespekt,LOG_OBSOLETE);
	};

	B_LogEntry(TOPIC_PSICAMPJOIN,"Vstoupil jsem do Bratrstva.");
	B_GivePlayerXP(500);
	Info_ClearChoices(dia_baalorun_canjoinpsi);
};

func void dia_baalorun_canjoinpsi_no()
{
	AI_Output(other,self,"DIA_BaalOrun_CanJoinPsi_No_01_00");	//Rozmyslel jsem si to...
	AI_Output(self,other,"DIA_BaalOrun_CanJoinPsi_No_01_01");	//Nemusíš s odpovědí spěchat... Čas rozhodne jak je to pro tebe důležité.
	Info_ClearChoices(dia_baalorun_canjoinpsi);
};


instance DIA_BAALORUN_MAGICSYMBOLS(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_magicsymbols_condition;
	information = dia_baalorun_magicsymbols_info;
	permanent = FALSE;
	description = "A co ty kresby na tělách členů Bratrstva?";
};


func int dia_baalorun_magicsymbols_condition()
{
	if(other.guild == GIL_SEK)
	{
		return TRUE;
	};
};

func void dia_baalorun_magicsymbols_info()
{
	AI_Output(other,self,"DIA_BaalOrun_MagicSymbols_01_00");	//A co ty kresby na tělách členů Bratrstva?
	AI_Output(self,other,"DIA_BaalOrun_MagicSymbols_01_01");	//To nejsou kresby, ale magické symboly, které jsou schopné ochránit majitele před kouzly!
	AI_Output(self,other,"DIA_BaalOrun_MagicSymbols_01_03");	//A protože jsi teď jedním z nás - můžeš je nosit stejně jak tvý bratři.
	AI_Output(self,other,"DIA_BaalOrun_MagicSymbols_01_04");	//Jdi za novicem Viranem! Pomůže ti s tím.
	CANMAKESYMBOLS = TRUE;
};


instance DIA_BAALORUN_TELLPALADINOK(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_tellpaladinok_condition;
	information = dia_baalorun_tellpaladinok_info;
	permanent = FALSE;
	description = "Pomoz mi dostat se k lordu Hagenovi.";
};


func int dia_baalorun_tellpaladinok_condition()
{
	if(((other.guild == GIL_GUR) || (other.guild == GIL_TPL)) && (Kapitel < 2))
	{
		return TRUE;
	};
};

func void dia_baalorun_tellpaladinok_info()
{
	if(Npc_KnowsInfo(other,dia_baalorun_tellpaladin))
	{
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_00");	//Pomoz mi dostat se k lordu Hagenovi.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_01");	//No... Jako pro jednoho z našich noviců - zkusíme ti pomoct vyřešit tento problém.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_02");	//Přesněji, už jsem přemýšlel jak ti pomoct.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_03");	//Domluvil jsem se ním že ti dá povolení na fingovanou schůzku s ním v radnici.
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_04");	//Myslíš si, že na to stráž skočí?!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_05");	//Myslím že jo! Nebudou pochybovat o slovu tak vysoce postaveného člověka jako je Larius!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_06");	//A pro úplnou důveryhodnost - informuju Lariuse aby nám sdělil heslo...
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_07");	//... které ti otevře přístup do městské haly. Takže stráž pochopí, že jsi osobou kterou místodržící očekává.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_08");	//Myslím, že slovo 'Y'Berion' celkom dobře postačí pro tento účel.
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_09");	//Pamatuju si mistra Y'Beriona - jméno takové osobnosti je tažké zapomenout!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_10");	//To je dobře. A teď jdi - vypořádat se s tou vecí.
	}
	else
	{
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_11");	//Pomoz mi dostat se k lordu Hagenovi.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_12");	//(udivený)... Proč je to pro tebe tak důležité?
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_13");	//Potřebuju naléhavě mluvit s vůdcem paladinů ve městě. Ale stráž mě nechce pustit k lordu Hagenovi!
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_14");	//Můžeš mi s tím pomoct?
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_15");	//Hmm... No... (přemýšlí) Jestli je to pro tebe tak naléhavé...
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_16");	//Jak si už nejspíš pochopil, Bratrstvo má nějaký vliv a kontakty v najvyšších městských kruzích.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_17");	//Myslím, že určitě najdeme cestu jak ti pomoct v řešení tohoto problému.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_18");	//Ve skutečnosti si už potkal hlavu Khorinisu. Myslím, že si tě taky pamatuje.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_19");	//Domluvil jsem se ním že ti dá povolení na fingovanou schůzku s ním v radnici.
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_20");	//Myslíš si, že na to stráž skočí?!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_21");	//Myslím že jo! Nebudou pochybovat o slovu tak vysoce postaveného člověka jako je Larius!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_22");	//A pro úplnou důveryhodnost - informuju Lariuse aby nám sdělil heslo...
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_23");	//... které ti otevře přístup do městské haly. Takže stráž pochopí, že jsi osobou kterou místodržící očekává.
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_24");	//Myslím, že slovo 'Y'Berion' celkom dobře postačí pro tento účel.
		AI_Output(other,self,"DIA_BaalOrun_TellPaladinOk_01_25");	//Pamatuju si mistra Y'Beriona - jméno takové osobnosti je tažké zapomenout!
		AI_Output(self,other,"DIA_BaalOrun_TellPaladinOk_01_26");	//To je dobře. A teď jdi - vypořádat se s tou vecí.
	};
	LARIUSAWAITS = TRUE;
};


instance DIA_BAALORUN_PALADINWATCH(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_paladinwatch_condition;
	information = dia_baalorun_paladinwatch_info;
	permanent = FALSE;
	description = "Máš pro mě nějaké úkoly?";
};


func int dia_baalorun_paladinwatch_condition()
{
	if((hero.guild == GIL_GUR) || (hero.guild == GIL_TPL))
	{
		return TRUE;
	};
};

func void dia_baalorun_paladinwatch_info()
{
	AI_Output(other,self,"DIA_BaalOrun_PaladinWatch_01_0A");	//Máš pro mě nějaké úkoly?
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_00");	//Ach, ano! Když už se ptáš.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_01");	//Našel jsem pro tebe jednu extrémne důležitou úlohu.
	AI_Output(other,self,"DIA_BaalOrun_PaladinWatch_01_02");	//Co mám udělat?
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_04");	//Už víš, že nedávno přišla do Khorinisu velká skupina paladinů.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_05");	//Velí jim lord Hagen - jeden z najvýše postavených paladinů jejich řádu.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_06");	//Jak si můžeš domyslet, přítomnost tak významné osobnosti jako je lord Hagen - je hodně neobvyklá věc!
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_07");	//Velice pochybuju, že přítomnost paladinů v těchto místech je náhodná a myslím, že musí být na tuto otázku nějaká rozumná odpověď.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_08");	//Podle samotných paladinů je důvodem jejich přítomnost na ostrově důsledkem možného ohrožení Khorinisu útokem skřetů.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_09");	//Nicméně je zřejmé, že síly, které tu má lord Hagen, nestačí k zajištění řádné ochrany města v případě útoku.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_10");	//Lord Hagen to musí chápat, a pokud ano...
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_11");	//... pak paladinové na ostrově sledují úplně jiné cíle než ty, o kterých oni sami říkají.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_12");	//V souvislosti s touto nejasnou situací nemůže naše Bratrstvo stát stranou od událostí, které zde probíhají.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_13");	//Nakonec, jestliže invaze skřetů do Khorinisu opravdu není jen mýtus, ale realita... (zamyěleně)
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_14");	//... pak náš osud závisí na vývoji dalších událostí.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_15");	//Pro Bratrstvo by proto bylo nesmírně užitečné znát skutečnou příčinu příchodu paladinů na ostrově a získat informace o možné invazi skřetů do této části ostrova.
	AI_Output(other,self,"DIA_BaalOrun_PaladinWatch_01_16");	//Takže tomu rozumím tak, že chceš, abych se o tom dověděl víc?
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_17");	//Ano, to je přesně to, co ti chci dát na starost.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_18");	//Odpovědi jsou pro mě důležité...
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_19");	//... Odpovědi na otázky od kterých závisí náš další osud.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_20");	//Chápu, že zjistit skutečné příčiny všeho co se děje nebude snadné. Ale nemáme jinou možnost.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_21");	//Rozuměj tomu tak, že kdo je připravený - ten je vyzbrojený!
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_22");	//Takže, zajímají mě tři otázky...
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_23");	//Za prvé - proč přijeli paladinové do Khorinis.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_34");	//Za druhé - jaká je situace v Hornickom údolí a aká je pravděpodobnost invaze skřetů.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_25");	//A poslední věc - jaké kroky se paladinové pokusí učinit v případě útoku na Khorinis.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_26");	//Opravdu spoléhám na tebe a tvůj úspěch v této věci.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_27");	//Na tvém místě bych se snažil získat odpovědi na tyto otázky od samotného lorda Hagena.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_28");	//Samozřejmě, s tebou pravděpodobně nebude mluvit, ale přesto to stojí za pokus!
	AI_Output(other,self,"DIA_BaalOrun_PaladinWatch_01_29");	//Dobře. Pokusím se zjistit vše, co mohu.
	AI_Output(self,other,"DIA_BaalOrun_PaladinWatch_01_30");	//Netrpělivě budu čekat na tvoje hlášení.
	Log_CreateTopic(TOPIC_PALADINWATCH,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_PALADINWATCH,LOG_Running);
	MIS_PALADINWATCH = LOG_Running;
	B_LogEntry(TOPIC_PALADINWATCH,"Baal Orun se chce dovědět, proč přišli paladinové na Khorinis. Obává se, že paladinové skrývají skutocné důvody své přítomnosti. Baala Oruna se také zajímá o situaci v Hornickom údolí kde se pravděpodobně usadila armáda skřetů. Je pro mě nevyhnutné zjistit všechno o těhle věcech a informovat o tom Guru.");
};


instance DIA_BAALORUN_SPYBERICHT(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_spybericht_condition;
	information = dia_baalorun_spybericht_info;
	permanent = TRUE;
	description = "Myslel jsem, že bych tě měl informovat o paladinech...";
};


func int dia_baalorun_spybericht_condition()
{
	if(MIS_PALADINWATCH == LOG_Running)
	{
		return TRUE;
	};
};

func void dia_baalorun_spybericht_info()
{
	var int countnews;
	countnews = 0;
	AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_00");	//Myslel jsem, že bych tě měl informovat o paladinech...
	AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_01");	//Ano! Chci byt o všem dobře informovaný.
	AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_02");	//Co jsi zjistil?
	if((IDOLORANQUESTIONFULLCOMPLETE == TRUE) && (TELLORANQUESTIONONE == FALSE) && (TELLORANQUESTIONTWO == FALSE) && (TELLORANQUESTIONTHREE == FALSE) && (TELLORANQUESTIONFOUR == FALSE) && (TELLORANQUESTIONFIVE == FALSE))
	{
		B_GivePlayerXP(1000);
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_03");	//Získal jsem nějaké informácie o důvode přítomnosti paladinů na Khorinise.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_04");	//Zřejmě, příkaz k jejich příchodu na ostrov vydal král Rhobar...
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_05");	//... A podle lorda Hagena, jejich mise je velmi důležitá pro osud celého království.
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_06");	//Pokračuj!... (se zájmem)
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_07");	//Vypadá to, že hlavním důvodem jejich příchodu byla magická ruda.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_08");	//Bez dostatku zbraní z magické rudy nebude mít královská armáda nejmenší šanci ve válce proti skřetům.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_09");	//Skupina, kterou lord Hagen poslal do Hornického údolí, měla zjistit jaké jsou možnosti těžby rudy na ostrově.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_10");	//A pak se paladinové chystají vrátit na pevninu.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_11");	//Ta skupina, která odjela zjistit něco o situaci s rudou, se usadila ve starém hradě rudobaronů...
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_12");	//... A je zřejmé, že jejich situace je velice špatná!
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_15");	//Skřeti všechny drží v šachu na hradě, který obléhají.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_16");	//Kromě toho, hrad byl nedávno napaden draky!
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_17");	//Draky?!
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_18");	//Jo, draci. Garond mě poslal s oznámením pro lorda Hagena abych ho informoval o všem co se tam děje.
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_19");	//Už si to oznámil lordovi Hagenovi?
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_20");	//Ano, doručil jsem mu ten dopis. Byl tím velice rozrušený!
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_21");	//Teď ho sužuje - Jak dostat své muže ven z obklíčení.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_22");	//Dokud to neudělá, paladinové neopustí ostrov.
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_23");	//Takže v případě útoku skřetů - a to zřejmě dlouho nepotrvá...
		AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_24");	//... paladinové zůstanou na ostrově a budou chránit Khorinis.
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_25");	//Dobře! Myslím, že si zjistil dost na objasnění situacie.
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_26");	//Hmmm... (zamyšleně) Všechny zprávy, které jsi přinesl, zračí poněkud temný obraz. Dříve nebo později přijdou skřeti sem a pak...
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_27");	//Tak dobře! Aspoň, že paladinové neodejdou z Khorinisu aby ostrov zanechali napospas skřetům.
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_28");	//Měl bych ti podakovat. Posloužil jsi Bratrstvu neocenitelnými službami!
		AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_30");	//Dobře! Tady - vezmi si to jako odměnu za tvou práci.
		B_GiveInvItems(self,other,ItPo_Perm_Mana,1);
		Log_SetTopicStatus(TOPIC_PALADINWATCH,LOG_SUCCESS);
		MIS_PALADINWATCH = LOG_SUCCESS;
		IDOLORANTEST = TRUE;
	}
	else
	{
		if((IDOLORANQUESTIONONE == TRUE) && (TELLORANQUESTIONONE == FALSE))
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_36");	//Získal jsem nějaké informácie o důvode přítomnosti paladinů na Khorinise.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_37");	//Zřejmě, příkaz k jejich příchodu na ostrov vydal král Rhobar...
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_38");	//... A podle lorda Hagena, jejich mise je velmi důležitá pro osud celého království.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_39");	//A co ještě?
			TELLORANQUESTIONONE = TRUE;
			countnews = countnews + 1;
		};
		if((IDOLORANQUESTIONTWO == TRUE) && (TELLORANQUESTIONTWO == FALSE))
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_40");	//Vypadá to, že hlavním důvodem jejich příchodu byla magická ruda.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_41");	//Bez dostatku zbraní z magické rudy nebude mít královská armáda nejmenší šanci ve válce proti skřetům.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_42");	//Skupina, kterou lord Hagen poslal do Hornického údolí, měla zjistit jaké jsou možnosti těžby rudy na ostrově.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_43");	//A pak se paladinové chystají vrátit na pevninu.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_44");	//Máš ještě nějaké novinky?... (pozorný)
			TELLORANQUESTIONTWO = TRUE;
			countnews = countnews + 1;
		};
		if((IDOLORANQUESTIONTHREE == TRUE) && (TELLORANQUESTIONTHREE == FALSE))
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_45");	//Ta skupina, která odjela zjistit něco o situaci s rudou, se usadila ve starém hradě rudobaronů...
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_46");	//... A je zřejmé, že jejich situace je velice špatná!
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_48");	//Skřeti všechny drží v šachu na hradě, který obléhají.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_49");	//Kromě toho, hrad byl nedávno napaden draky!
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_50");	//Draky?!
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_52");	//Cože?!
			TELLORANQUESTIONTHREE = TRUE;
			countnews = countnews + 1;
		};
		if((IDOLORANQUESTIONFOUR == TRUE) && (TELLORANQUESTIONFOUR == FALSE))
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_53");	//Kromě toho, expedice do Hornického údolí je na pokraji kolapsu!
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_54");	//Ty úložiště rudy které jsou pořád dostupné k těžbě - nemohou poskytnout dostatek rudy pro královskou armádu.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_55");	//A paladinové mají hrozné straty na životech počas téhle expedice!
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_56");	//Garond mě poslal s oznámením pro lorda Hagena abych ho informoval o všem co se tam děje.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_57");	//Táto záležitost už nemůže déle čekat! Ihned mu doruč ten dopis!
			TELLORANQUESTIONFOUR = TRUE;
			countnews = countnews + 1;
		};
		if((IDOLORANQUESTIONFIVE == TRUE) && (TELLORANQUESTIONFIVE == FALSE))
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_58");	//Doručil jsem mu ten dopis. Lord Hagen byl tím velice rozrušený!
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_59");	//Teď ho sužuje - Jak dostat své muže ven z obklíčení.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_60");	//Dokud to neudělá, paladinové neopustí ostrov.
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_61");	//Takže v případě útoku skřetů - a to zřejmě dlouho nepotrvá...
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_62");	//... paladinové zůstanou na ostrově a budou chránit Khorinis.
			TELLORANQUESTIONFIVE = TRUE;
			countnews = countnews + 1;
		};
		if((IDOLORANQUESTIONFULLCOMPLETE == TRUE) && (TELLORANQUESTIONONE == TRUE) && (TELLORANQUESTIONTWO == TRUE) && (TELLORANQUESTIONTHREE == TRUE) && (TELLORANQUESTIONFOUR == TRUE) && (TELLORANQUESTIONFIVE == TRUE))
		{
			B_GivePlayerXP(1000);
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_63");	//Dobře! Myslím, že si zjistil dost na objasnění situacie.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_64");	//Hmmm... (zamyšleně) Všechny zprávy, které jsi přinesl, zračí poněkud temný obraz. Dříve nebo později přijdou skřeti sem a pak...
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_67");	//Tak dobře! Aspoň, že paladinové neodejdou z Khorinisu aby ostrov zanechali napospas skřetům.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_68");	//Měl bych ti podakovat. Posloužil jsi Bratrstvu neocenitelnými službami!
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_71");	//Dobře! Tady - vezmi si to jako odměnu za tvou práci.
			B_GiveInvItems(self,other,ItPo_Perm_Mana,1);
			Log_SetTopicStatus(TOPIC_PALADINWATCH,LOG_SUCCESS);
			MIS_PALADINWATCH = LOG_SUCCESS;
			IDOLORANTEST = TRUE;
		}
		else if(countnews >= 1)
		{
			countnews = countnews * 100;
			B_GivePlayerXP(countnews);
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_72");	//To je zatím vše co jsem se dověděl.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_73");	//V pořádku.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_74");	//Informuj mě o dalších záležitostech.
		}
		else
		{
			AI_Output(other,self,"DIA_BaalOrun_SpyBericht_01_75");	//Zatím ne.
			AI_Output(self,other,"DIA_BaalOrun_SpyBericht_01_76");	//Tak proč mě rušíš u práce?
		};
	};
};


instance DIA_BAALORUN_CANBEGURU(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_canbeguru_condition;
	information = dia_baalorun_canbeguru_info;
	permanent = FALSE;
	description = "Jak se teda mohu stát Guru?";
};

func int dia_baalorun_canbeguru_condition()
{
	if(hero.guild == GIL_SEK)
	{
		return TRUE;
	};
};

func void dia_baalorun_canbeguru_info()
{
	AI_Output(other,self,"DIA_BaalOrun_CanBeGuru_01_00");	//Jak se tedy mohu stát Guru?
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_01");	//Přeješ si spojit svou životní linii s posvěceným od Guru?!... (udivene)
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_02");	//Mám obavy, že je ještě příliš brzo na to myslet!
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_03");	//Kromě toho, aby ses mohl stát jedním z nás - nestačí jednoduše si to přát.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_04");	//Nosit roucho Guru je najvětší čest, která může být udělena jenom vybraným bratrům!
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_05");	//A ty k nim nepatříš!
	AI_Output(other,self,"DIA_BaalOrun_CanBeGuru_01_06");	//A co pro to můžu udělat?
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_07");	//Hmmm... Tvá vytrvalost si zaslouží respekt! Pokud ses opravdu rozhodl následovat tuto cestu do konce, pak bys nejprve měl vědět několik věcí.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_08");	//Za prvé, musíš být pevně v naší víře.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_09");	//Každý, kdo pochybuje o svém přesvědčení, je v duchu slabý, což je v našem případě nepřípustné.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_10");	//Posvátný kruh Guru je základem víry pro celé Bratrstvo.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_11");	//Baalové, s jejich moudrostí, nesou božské osvícení v myslích našich bratrů a oni by nikdy neměli pochybovat o jejich správnosti a moci!
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_12");	//Navíc, stát se Guru znamená být připraven na sebeobětování v zájmu Bratrstva.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_13");	//Existuje několik dalších věci vyznačených posvátnou cestou Guru, ale nejsou tak významné ve srovnání s tím, co jsem právě uvedl.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_14");	//Pokud prokážeš, že tvé přesvědčení je pevné a tvůj duch silný, pak teprve budeš moci vstoupit do našeho posvátného kruhu.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_15");	//Naneštěstí nejsti dosud připraven a tvé činy pro slávu Bratrstva nejsou tak významné.
	AI_Output(self,other,"DIA_BaalOrun_CanBeGuru_01_16");	//Ale myslím, že tvůj čas přijde, a pak si určitě můžeme o tom znovu mluvit.
	AI_Output(other,self,"DIA_BaalOrun_CanBeGuru_01_17");	//Vše je mi jasné, mijsře.
	CANBEGURU = TRUE;
};


instance DIA_BAALORUN_FORTUNOBACK(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_fortunoback_condition;
	information = dia_baalorun_fortunoback_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_baalorun_fortunoback_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && ((hero.guild == GIL_GUR) || (hero.guild == GIL_TPL)) && (FORTUNOBACK == TRUE) && (FORTUNOAWFLAG == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_fortunoback_info()
{
	B_GivePlayerXP(100);
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_00");	//Slyšel jsem, že se do tábora vrátil jeden původních noviců.
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_01");	//Zřejmě se jmenuje Fortuno.
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_02");	//Řekl, že se vrátil diký tobě...
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_03");	//Bolo od tebe velice správné, pomoct mu.
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_04");	//Teď se o něj Bratrstvo postará!
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_05");	//Jeho duch oslábl, a jeho sily jsou vyčerpané - ale tuto situaci napravíme. Naše víra mu pomůže znovu najít sám sebe!
	AI_Output(self,other,"DIA_BaalOrun_FortunoBack_01_06");	//Z mé strany, ti chci jednoduše poděkovat.
};


instance DIA_BAALORUN_HAMMERBACK(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_hammerback_condition;
	information = dia_baalorun_hammerback_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_baalorun_hammerback_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && ((hero.guild == GIL_GUR) || (hero.guild == GIL_TPL)) && (GORNAKOSHTEST == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_hammerback_info()
{
	B_GivePlayerXP(100);
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_00");	//Gor Na Kosh mi řekl, že jsi mu přinesl Tarakotovo kladivo.
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_01");	//Jsem velici překvapený, že jsi to dokázal!
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_02");	//Bratrstvo dlho chtělo získat tento prastarý artefakt aby...
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_03");	//... A teď, díky tobě, se to stáva skutečností!
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_04");	//Tvé skutky ti přidávají na cti.
	AI_Output(self,other,"DIA_BaalOrun_HammerBack_01_05");	//Ve jménu našeho Bratrstva, přijmi mé poděkování!
};


instance DIA_BAALORUN_SEKTEHEILEN(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_sekteheilen_condition;
	information = dia_baalorun_sekteheilen_info;
	permanent = FALSE;
	description = "Co víš o ludoch v ciernych kapucniach?";
};


func int dia_baalorun_sekteheilen_condition()
{
	if(((hero.guild == GIL_GUR) || (hero.guild == GIL_TPL)) && (Kapitel >= 3))
	{
		return TRUE;
	};
};

func void dia_baalorun_sekteheilen_info()
{
	AI_Output(other,self,"DIA_BaalOrun_SekteHeilen_01_00");	//Co víš o lidech v černých kápích?
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_01");	//Nijak moc. Zjevně, všichni z nich jsou temní mágové!
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_02");	//Ale jejich pravý původ mi není znám.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_03");	//Někdy se mi však zdá, že s některými z nich má Bratrstvo nějaké neviditelné spojení... (zamyšleně)
	AI_Output(other,self,"DIA_BaalOrun_SekteHeilen_01_04");	//Co tím myslíš?
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_05");	//Po jejich příchodu mnoho našich bratří začalo mít vážné bolesti hlavy.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_06");	//Nemohu vysvětlit, proč je tomu tak.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_07");	//... Ale obávám se, že zhoubný vliv těchto bytostí se nějak odráží v jejich podvědomí.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_08");	//A zdá se mi, že se to velmi podobá posedlosti.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_09");	//Můžeme s tím něco udělat?
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_10");	//Vědomosti a síla Guru nám dovolujé zmírnit některé důsledky těchto kontaktů, ale nevíme na jak dlouho to bude stačit.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_11");	//Pravděpodobně existuje nějaká jiná cesta jak se zbavit tohoto vlivu.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_12");	//Slyšel jsem, že v klášteře mágů Ohně je takový lék který je schopen vyléčit posedlost.
	AI_Output(other,self,"DIA_BaalOrun_SekteHeilen_01_13");	//Pokusím se ho získat.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_14");	//Ach, to by bylo skvělé!
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_15");	//Já bych se s tímto problémem vypořádal sám, ale všechen volný čas se starám o osud našich bratří.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilen_01_16");	//Žádám tě - pospěš si s jeho hledáním.
	Log_CreateTopic(TOPIC_SEKTEHEILEN,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_SEKTEHEILEN,LOG_Running);
	MIS_SEKTEHEILEN = LOG_Running;
	B_LogEntry(TOPIC_SEKTEHEILEN,"Baal Orun je znepokojen tím, že se v Khorinisu objevili mágové v černých kápích. Jsou nějakým způsobem spojeni s Bratrstvem. S příchodem těchto mágů začali novici trpět silnými bolestmi hlavy. Orun se obává, že to jsou první známky posedlosti. Požádal mě, abych šel do kláštera k mágům Ohně, kde se nacházi lék proti této nemoci.");
	AI_StopProcessInfos(self);
};


instance DIA_BAALORUN_SEKTEHEILENGOT(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_sekteheilengot_condition;
	information = dia_baalorun_sekteheilengot_info;
	permanent = FALSE;
	description = "Mám ten lék!";
};


func int dia_baalorun_sekteheilengot_condition()
{
	if((Npc_HasItems(other,ItPo_HealObsession_MIS) > 0) && (MIS_SEKTEHEILEN == LOG_Running) && (FIRSTGIVEHEALPOTIONS == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_sekteheilengot_info()
{
	AI_Output(other,self,"DIA_BaalOrun_SekteHeilenGot_01_00");	//Mám ten lék!
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenGot_01_01");	//Výborně! Teď je nutné ho poroznášet všem novicům.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenGot_01_02");	//Ale jenom jim! Gor Na Kosh a jeho templáři majú velmi silného ducha. Tato nemoc je pro ně, tak jako pro nás - Guru, nefunkční...
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenGot_01_03");	//A ujisti se, že se lék dostane každému.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenGot_01_04");	//Když ho rozdáš - vrať se ke mne.
	B_LogEntry(TOPIC_SEKTEHEILEN,"Mám lék. Teď je důležité abych ho rozdal všem bratrům!");
	SEKTEHEILENCOUNT = 0;
};


instance DIA_BAALORUN_SEKTEHEILENOK(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_sekteheilenok_condition;
	information = dia_baalorun_sekteheilenok_info;
	permanent = FALSE;
	description = "Rozdal jsem lék jak jsi žádal.";
};


func int dia_baalorun_sekteheilenok_condition()
{
	if((MIS_SEKTEHEILEN == LOG_Running) && (SEKTEHEILENCOUNT >= 15))
	{
		return TRUE;
	};
};

func void dia_baalorun_sekteheilenok_info()
{
	B_GivePlayerXP(2150);
	AI_Output(other,self,"DIA_BaalOrun_SekteHeilenOk_01_00");	//Rozdal jsem lék jak jsi žádal.
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenOk_01_02");	//Ano, velmi dobře. Jeho účinky opravdu zachránili všechny naše bratry před těmito hroznými bolestmi hlavy!
	AI_Output(self,other,"DIA_BaalOrun_SekteHeilenOk_01_03");	//Pracoval si dobře! Přijmi mou vděku.
	B_GiveInvItems(self,other,ItMi_Gold,2000);
	B_LogEntry(TOPIC_SEKTEHEILEN,"Rozdal jsem lék všem novicům. Odteď už bratři nebudou pod vlivem posedlosti!");
	Log_SetTopicStatus(TOPIC_SEKTEHEILEN,LOG_SUCCESS);
	MIS_SEKTEHEILEN = LOG_SUCCESS;
};


instance DIA_BAALORUN_BEGURU(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_beguru_condition;
	information = dia_baalorun_beguru_info;
	permanent = FALSE;
	important = TRUE;
};

func int dia_baalorun_beguru_condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (hero.guild == GIL_SEK) && (CANBEGURU == TRUE) && (CADARAGREED == TRUE) && (NAMIBAGREED == TRUE) && (PARVEZAGREED == TRUE) && (TYONAGREED == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_beguru_info()
{
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_00");	//Hej ty! Výborně - chci s tebou mluvit...
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_02");	//Svými činy jsi dokázal svou oddanost myšlenkám našeho Bratrstva a ještě více.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_03");	//Hodně jsem přemýšlel o téhle věci... (zamyšleně)... A nakonec prišel na to, že nadešel čas.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_04");	//Jsem přesvědčen, že jsi hoden cti nosit roucho Guru a být přijat do našeho posvátného kruhu!
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_05");	//Poslední volba je však na tobě.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_06");	//Měl bys pochopit, že zvolením této cesty - ji už nemůžeš jednoduše odvrhnout.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_07");	//Také jsem si promluvil s Gor Na Koshem, mentorem templářů.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_08");	//Také si přeje vidět tě ve svých řadách!
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_09");	//Stát se templářem je nepochybně veliká čest, ale nedá se to porovnat s vysvěcením na Guru.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_10");	//To je nejvyšší čest, která může být udělena následovníkovi naší víry!
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_11");	//Kromě toho, tajemná magie kterou nám odhalil Spáč, je přístupná pouze pro Guru.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_12");	//... A jenom my jsme schopni využít jejich nesmírnou moudrost!
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_13");	//Takže, předtím, než uděláš své konečné rozhodnutí, pečlivě promysli vše, co jsem ti řekl.
	AI_Output(self,other,"DIA_BaalOrun_BeGuru_01_14");	//A dej mi vědět, pokud budeš připraven přijmout zasvěcení do našeho Kruhu.
	READYBEGURU = TRUE;
};


instance DIA_BAALORUN_BEGURUOK(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_beguruok_condition;
	information = dia_baalorun_beguruok_info;
	permanent = TRUE;
	description = "Přeju si stát se Guru Bratrstva.";
};

func int dia_baalorun_beguruok_condition()
{
	if((hero.guild == GIL_SEK) && (READYBEGURU == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_beguruok_info()
{
	AI_Output(other,self,"DIA_BaalOrun_BeGuruOk_01_00");	//Přeju si stát se Guru Bratrstva.

	if(CanTeachTownMaster == FALSE)
	{
		MIS_PathFromDown = LOG_SUCCESS;
		Log_SetTopicStatus(TOPIC_PathFromDown,LOG_SUCCESS);
		CanTeachTownMaster = TRUE;
	};
	if(MIS_CanDoTempler == LOG_Running)
	{
		MIS_CanDoTempler = LOG_OBSOLETE;
	};

	Snd_Play("GUILD_INV");
	hero.guild = GIL_GUR;
	CheckHeroGuild[0] = TRUE;
	SYMBOLSMAKEGURUDONE = TRUE;
	HelmIsUpTemp = FALSE;
	hero.protection[PROT_MAGIC] += 10;
	REALPROTMAGIC += 10;
	AI_PrintClr("Ochrana proti magii + 10",83,152,48);
	Mdl_ApplyOverlayMds(hero,"Humans_Mage.mds");
	AI_Print(NAME_GUR_MAGIC);
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_01");	//Budiž!
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_02");	//Tímto tě přijímám do našeho svatého kruhu a přiděluji ti autoritu Guru!
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_03");	//Odteď, jsi jedním z nás!
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_04");	//Vezmi si tohle roucho, a nos ho jako symbol našeho Kruhu!
	CreateInvItems(self,itar_gur_l,1);
	B_GiveInvItems(self,other,itar_gur_l,1);
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_05");	//Nos ho s pýchou. Jenom málo lidí bylo takhle poctěno!
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_06");	//A taky, přijmi odemně tuto magickou hůl. Jenom pro nás - Guru je daná čest nosit ji a disponovat její sílou!
	CreateInvItems(self,ITMW_2H_G3_STAFFDRUID_01,1);
	B_GiveInvItems(self,other,ITMW_2H_G3_STAFFDRUID_01,1);
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_07");	//A taky nezapomeň, že být Guru neznamená jenom být přijat do našeho Kruhu...
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_08");	//... Je to znamení! Znamení tvého osudu a volby.
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_09");	//Buď věrný naší víře až do konce a snaž se být ve svých skutcích moudrý a rozvážný...
	AI_Output(self,other,"DIA_BaalOrun_BeGuruOk_01_10");	//To je vše, co jsem ti chtěl říct než budeš pokračovat v cestě!
	AI_StopProcessInfos(self);
};

instance DIA_BAALORUN_PRETEACH(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_preteach_condition;
	information = dia_baalorun_preteach_info;
	permanent = FALSE;
	description = "Můžu nyní poznat tajemství Spáčovy magie?";
};


func int dia_baalorun_preteach_condition()
{
	if(hero.guild == GIL_GUR)
	{
		return TRUE;
	};
};

func void dia_baalorun_preteach_info()
{
	AI_Output(other,self,"DIA_BaalOrun_PreTeach_01_00");	//Můžu nyní poznat tajemství Spáčovy magie?
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_01");	//Ano... Teď jsi připraven unést pravé vědění, které je vyhrazeno pouze pro Guru našeho Bratrstva.
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_02");	//A samozřejmě, budeš-li potřebovat nějakou pomoc těm znalostem porozumět...
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_03");	//... mohu tě seznámit s kruhy magie, které jsou nezbytné pro používání magických run.
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_04");	//Baal Cadar ti pomůže zvýšit tvou magickou sílu.
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_05");	//Baal Namib tě naučí vytvářet runy se Spáčovou magií.
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_06");	//A Baal Tyon ti prodá nějaké magicé svitky a potřebné ingredience pro výrobu těchto run.
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_07");	//Po získání všech těchto znalostí se bude ve tvých rukou soustředit obrovská síla!
	AI_Output(self,other,"DIA_BaalOrun_PreTeach_01_08");	//Pamatuj si to a snaž se ji používat moudře.
	BAALTYON_CANTRADE = TRUE;
	BAALNAMIB_TEACHRUNES = TRUE;
	BAALCADAR_TEACHMANA = TRUE;
	BAALORUN_TEACHCIRCLE = TRUE;
	Log_CreateTopic(TOPIC_ADDON_GURTEACHER,LOG_NOTE);
	B_LogEntry(TOPIC_ADDON_GURTEACHER,"Baal Orun mi pomůže naučit se kruhy magie.");
	B_LogEntry(TOPIC_ADDON_GURTEACHER,"Baal Namib mě naučí vytvářet runy se Spáčovou magií.");
	B_LogEntry(TOPIC_ADDON_GURTEACHER,"Baal Cadar mi pomůže zvýšit mou magickou sílu.");
	B_LogEntry(TOPIC_ADDON_GURTEACHER,"Baal Tyon prodává magické svitky a ingredience na výrobu formulí.");
};


instance DIA_BAALORUN_EXPLAINCIRCLES(C_Info)
{
	npc = gur_8002_orun;
	condition = dia_baalorun_explaincircles_condition;
	information = dia_baalorun_explaincircles_info;
	permanent = FALSE;
	description = "Prosím, vysvětli mi smysl kruhů magie.";
};


func int dia_baalorun_explaincircles_condition()
{
	if((hero.guild == GIL_GUR) && Npc_KnowsInfo(other,dia_baalorun_preteach))
	{
		return TRUE;
	};
};

func void dia_baalorun_explaincircles_info()
{
	AI_Output(other,self,"DIA_BaalOrun_EXPLAINCIRCLES_Info_15_01");	//Prosím, vysvětli mi smysl kruhů magie.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_02");	//S radostí. Kruhy symbolizují tvoje chápaní magie.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_03");	//Určuje úroveň tvojich vědomostí a schopností, zdatnosti učit se nové zaklínadlá.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_04");	//Musíš projít každým kruhem až do konce, než se můžeš připojit k dalšímu.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_05");	//Bude trvat hodinu tréninku a mnohem více zkušeností, než se dostaneš do vyšších kruhů.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_06");	//Tvoje úsilí bude vždy odměněno novými mocnými kouzly. V každém případě však kruhy magie znamenají mnohem víc.
	AI_Output(self,other,"DIA_BaalOrun_EXPLAINCIRCLES_Info_14_08");	//Abys pochopil jejich sílu, musíš poznat sám sebe.
	EXPLAINCIRCLEMEAN = TRUE;
};


var int dia_baalorun_circle_noperm;

instance DIA_BAALORUN_CIRCLE(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_circle_condition;
	information = dia_baalorun_circle_info;
	permanent = TRUE;
	description = "Přeju si pochopit esenci magie.";
};

func int dia_baalorun_circle_condition()
{
	if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) <= 6) && (BAALORUN_TEACHCIRCLE == TRUE) && (DIA_BAALORUN_CIRCLE_NOPERM == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_circle_info()
{
	AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_00");	//Přeju si pochopit esenci magie.
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
	Info_AddChoice(DIA_BaalOrun_CIRCLE,Dialog_Back,DIA_BaalOrun_CIRCLE_Back);

	if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) < 1) && (CanLearnMagicCircleNext_ABCZ(1) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"1. kruh magie (VB: 20)",DIA_BaalOrun_CIRCLE_1);
	}
	else if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 1) && (CanLearnMagicCircleNext_ABCZ(2) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"2. kruh magie (VB: 30)",DIA_BaalOrun_CIRCLE_2);
	}
	else if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 2) && (CanLearnMagicCircleNext_ABCZ(3) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"3. kruh magie (VB: 40)",DIA_BaalOrun_CIRCLE_3);
	}
	else if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 3) && (CanLearnMagicCircleNext_ABCZ(4) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"4. kruh magie (VB: 60)",DIA_BaalOrun_CIRCLE_4);
	}
	else if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 4) && (CanLearnMagicCircleNext_ABCZ(5) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"5. kruh magie (VB: 80)",DIA_BaalOrun_CIRCLE_5);
	}
	else if((Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 5) && (CanLearnMagicCircleNext_ABCZ(6) == TRUE))
	{
		Info_AddChoice(DIA_BaalOrun_CIRCLE,"6. kruh magie (VB: 100)",DIA_BaalOrun_CIRCLE_6);
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_42");	//Ještě ne. Vrať se později.
	};
};

func void DIA_BaalOrun_CIRCLE_Back()
{
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_1()
{
	if(B_TeachMagicCircle(self,other,1))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_0A");	//Jsi připraven vstoupit do dalšího kruhu?
		AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_01");	//Jo, jsem připravený.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_01");	//Vstupem do prvního kruhu, se naučíš používat magické runy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_02");	//Každá formule obsahuje strukturu určitého magického kouzla.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_03");	//Použitím své vlastní magické síly, můžeš uvolnit kouzlo runy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_04");	//Ale na rozdíl od svitků, což jsou ve skutečnosti magické zaříkadla, magické runy udržují strukturu kouzla navždy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_05");	//Každá runa má magickou sílu, kterou můžete kdykoli použít.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_06");	//Stejně jako u svitků, v okamžiku kdy použiješ runu, spotřebuje se část tvé vlastní magické síly.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_07");	//S každým novým kruhem se dozvíš více o runách.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_08");	//Využij jejich sílu k poznání sebe sama.
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_2()
{
	if(B_TeachMagicCircle(self,other,2))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_0A");	//Jsi připraven vstoupit do dalšího kruhu?
		AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_02");	//Jo, jsem připravený.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_09");	//Už si se naučil rozumět runám. Nadešel čas prohloubit tvoje vědomosti.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_10");	//Vstupem do druhého kruhu, pochopíš základy mocné útočné magie.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_11");	//Ale k poznání pravých tajomství magie bys měl hlavně studovat.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_12");	//Už víš že můžeš používat runy nekonečně krát, ale jen dokud nespotřebuješ svou magickou sílu.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_13");	//Ale predtým než něco uděláš, promysli si, jestli to má smysl. Máte moc, díky níž je snadné rozsívat smrt a zničení.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_14");	//Ale pravý mág ji používá jen tehdy, když je to nutné.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_15");	//Nauč se posoudit situaci a poznáš pravou sílu run.
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_3()
{
	if(B_TeachMagicCircle(self,other,3))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_0A");	//Jsi připraven vstoupit do dalšího kruhu?
		AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_03");	//Jo, jsem připravený.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_16");	//Třetí kruh je jedním z nejdůležitějších etap života každého mága. Jeho dosažením završíš své hledání.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_17");	//Už jsi zdolal významný bod na ceste magie. Naučil ses používat runy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_18");	//Tato znalost bude sloužit jako základ pro další fázi. Používej runy opatrně.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_19");	//Můžete je použít nebo ne. Ale musíte se rozhodnout.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_20");	//Po výběru použij sílu bez váhání.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_21");	//Najdi cestu a pak budeš znát sílu volby.
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_4()
{
	if(B_TeachMagicCircle(self,other,4))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_0A");	//Jsi připraven vstoupit do dalšího kruhu?
		AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_04");	//Jo, jsem připravený.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_22");	//Dokoncil si prvé tri kruhy. Nadešel čas pochopit tajemství magie.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_23");	//Základem runové magie je kámen. Magický kámen z magické rudy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_24");	//Jedná se o stejnou rudu, která se těží v dolech. V chrámech je obdařena magickými formulemi a tak je transformována do nástroje naší síly.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_25");	//Nyní máš všechny vědomosti, které jsme shromáždily.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_27");	//Nauč se kouzlo a objevíš tajemství moci.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_28");	//A ještě něco. Vstupem do čtvrtého kruhu si zasloužíš čest nosit vznešené roucho Guru!
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_29");	//Jen málo z nás toho dosáhlo. Teď jsti jedním z vyvolených posvátného Kruhu!
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_30");	//Zde, vezmi si tohle roucho a jako uznání tvého postavení.
		CreateInvItems(self,ItMW_Addon_Stab04,1);
		B_GiveInvItems(self,other,ItMW_Addon_Stab04,1);
		CreateInvItems(other,itar_gur_h,1);
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_5()
{
	if(B_TeachMagicCircle(self,other,5))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_0A");	//Jsi připraven vstoupit do dalšího kruhu?
		AI_Output(other,self,"DIA_BaalOrun_CIRCLE_15_05");	//Jo, jsem připravený.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_15_5A");	//Nechť je tak. Otevřu ti pravý smysl páteho kruhu.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_31");	//Poznej hranice svých schopností a poznáš svou pravou sílu.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_32");	//Kouzla, která se můžeš naučit, můžou být skutečně zničující.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_33");	//Nauč se kdy zastavit sílu a pozor na velikášství.
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

func void DIA_BaalOrun_CIRCLE_6()
{
	if(B_TeachMagicCircle(self,other,6))
	{
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_34");	//Uvedu tě do Šestého kruhu magie.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_35");	//Uvědom si, že pouze nejmocnější mágové mohou vstoupit do šestého kruhu. Je to pro ty, jejichž život je znamením.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_38");	//Tvým znamením je Kámen!
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_39");	//Šestý kruh ti umožní použít kouzlo jakékoliv runy.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_40");	//A nezapomeň: neužívej sílu, buď jejím zdrojem.
		AI_Output(self,other,"DIA_BaalOrun_CIRCLE_14_41");	//Buď moudrý a rozumný ve svých skutcích a snaž se využít své znalosti pro dobro Bratrstva!
		DIA_BAALORUN_CIRCLE_NOPERM = TRUE;
	};
	Info_ClearChoices(DIA_BaalOrun_CIRCLE);
};

instance DIA_BAALORUN_SENDCADAR(C_Info)
{
	npc = gur_8002_orun;
	nr = 99;
	condition = dia_baalorun_sendcadar_condition;
	information = dia_baalorun_sendcadar_info;
	permanent = FALSE;
	description = "Baal Cadar mě poslal...";
};


func int dia_baalorun_sendcadar_condition()
{
	if((hero.guild == GIL_GUR) && (BAALORUN_TEACHMANA == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_sendcadar_info()
{
	AI_Output(other,self,"DIA_BaalOrun_SendCadar_15_00");	//Baal Cadar mě poslal. Chci si zvýšit magickou sílu.
	AI_Output(self,other,"DIA_BaalOrun_SendCadar_11_01");	//Vidím, že ses hodně naučil a tvá síla se zvětšila! Nyní se budeš studovat u mě.
};

instance DIA_BAALORUN_TEACH_MANA(C_Info)
{
	npc = gur_8002_orun;
	nr = 10;
	condition = dia_baalorun_teach_mana_condition;
	information = dia_baalorun_teach_mana_info;
	permanent = TRUE;
	description = "Chci zvýšit svou magickou energii.";
};

func int dia_baalorun_teach_mana_condition()
{
	if((other.guild == GIL_GUR) && (BAALORUN_TEACHMANA == TRUE) && Npc_KnowsInfo(other,DIA_BAALORUN_SENDCADAR) && ((other.attribute[ATR_MANA_MAX] < T_MEGA) || (VATRAS_TEACHREGENMANA == FALSE)))
	{
		return TRUE;
	};
};

func void dia_baalorun_teach_mana_info()
{
	AI_Output(other,self,"DIA_BaalOrun_TEACH_MANA_15_00");	//Chci zvýšit svou magickou energii.
	Info_ClearChoices(dia_baalorun_teach_mana);
	Info_AddChoice(dia_baalorun_teach_mana,Dialog_Back,dia_baalorun_teach_mana_back);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA1,B_GetLearnCostAttribute(other,ATR_MANA_MAX)),dia_baalorun_teach_mana_1);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA5,B_GetLearnCostAttribute(other,ATR_MANA_MAX) * 5),dia_baalorun_teach_mana_5);

	if((Kapitel >= 2) && (VATRAS_TEACHREGENMANA == FALSE))
	{
		Info_AddChoice(DIA_BaalOrun_TEACH_MANA,"Regenerace many (VB: 5, cena: 7500 zlatých)",DIA_BaalOrun_TEACH_MANA_Regen);
	};
};

func void dia_baalorun_teach_mana_back()
{
	if(other.attribute[ATR_MANA_MAX] >= T_MEGA)
	{
		AI_Output(self,other,"DIA_BaalOrun_TEACH_MANA_05_00");	//Jsi na pokraji svých možností - naučil jsem tě vše, co znám!
	};

	Info_ClearChoices(dia_baalorun_teach_mana);
};

func void DIA_BaalOrun_TEACH_MANA_Regen()
{
	var int kosten;
	var int money;

	AI_Output(other,self,"DIA_Vatras_Teach_regen_15_05");	//Nauč mě, jak regenerovat manu.

	kosten = 5;
	money = 7500;

	if(hero.lp < kosten)
	{
		AI_Print(PRINT_NotEnoughLearnPoints);
		AI_StopProcessInfos(self);
	};
	if(Npc_HasItems(hero,ItMi_Gold) < money)
	{
		AI_Print(Print_NotEnoughGold);
		AI_StopProcessInfos(self);
	};
	if((hero.lp >= kosten) && (Npc_HasItems(other,ItMi_Gold) >= money))
	{
		hero.lp = hero.lp - kosten;
		RankPoints = RankPoints + kosten;
		Npc_RemoveInvItems(other,ItMi_Gold,money);
		AI_Print("Naučeno: Regenerace many");
		VATRAS_TEACHREGENMANA = TRUE;
		Snd_Play("LevelUP");
	};

	Info_ClearChoices(dia_baalorun_teach_mana);
	Info_AddChoice(dia_baalorun_teach_mana,Dialog_Back,dia_baalorun_teach_mana_back);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA1,B_GetLearnCostAttribute(other,ATR_MANA_MAX)),dia_baalorun_teach_mana_1);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA5,B_GetLearnCostAttribute(other,ATR_MANA_MAX) * 5),dia_baalorun_teach_mana_5);
};

func void dia_baalorun_teach_mana_1()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,1,T_MEGA);
	Info_ClearChoices(dia_baalorun_teach_mana);
	Info_AddChoice(dia_baalorun_teach_mana,Dialog_Back,dia_baalorun_teach_mana_back);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA1,B_GetLearnCostAttribute(other,ATR_MANA_MAX)),dia_baalorun_teach_mana_1);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA5,B_GetLearnCostAttribute(other,ATR_MANA_MAX) * 5),dia_baalorun_teach_mana_5);

	if((Kapitel >= 2) && (hero.guild == GIL_GUR) && (VATRAS_TEACHREGENMANA == FALSE))
	{
		Info_AddChoice(DIA_BaalOrun_TEACH_MANA,"Regenerace many (VB: 5, cena: 7500 zlatých)",DIA_BaalOrun_TEACH_MANA_Regen);
	};
};

func void dia_baalorun_teach_mana_5()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,5,T_MEGA);
	Info_ClearChoices(dia_baalorun_teach_mana);
	Info_AddChoice(dia_baalorun_teach_mana,Dialog_Back,dia_baalorun_teach_mana_back);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA1,B_GetLearnCostAttribute(other,ATR_MANA_MAX)),dia_baalorun_teach_mana_1);
	Info_AddChoice(dia_baalorun_teach_mana,b_buildlearnstringforskills(PRINT_LearnMANA5,B_GetLearnCostAttribute(other,ATR_MANA_MAX) * 5),dia_baalorun_teach_mana_5);

	if((Kapitel >= 2) && (hero.guild == GIL_GUR) && (VATRAS_TEACHREGENMANA == FALSE))
	{
		Info_AddChoice(DIA_BaalOrun_TEACH_MANA,"Regenerace many (VB: 5, cena: 7500 zlatých)",DIA_BaalOrun_TEACH_MANA_Regen);
	};
};

instance DIA_BAALORUN_GATHERARMY(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_gatherarmy_condition;
	information = dia_baalorun_gatherarmy_info;
	permanent = FALSE;
	description = "Musíme si naléhavě promluvit!";
};


func int dia_baalorun_gatherarmy_condition()
{
	if((HAGENOTHERSAGREED == TRUE) && (HAGENNOMORETIMEWAIT == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_gatherarmy_info()
{
	B_GivePlayerXP(400);
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_00");	//Musíme si naléhavě promluvit!
	if((other.guild == GIL_SEK) || (other.guild == GIL_TPL) || (other.guild == GIL_GUR))
	{
		AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_01");	//Co se děje, bratře?
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_02");	//(povzdech)
		AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_03");	//Poslouchej, brzy přijdou skřeti!
		AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_04");	//Skřeti?! Hmmm... Jak jsi na to přišel?
	};
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_05");	//Přišel jsem s návrhem od Lorda Hagena, hlavy paladinského řádu.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_06");	//Ano?! A co obsahuje?
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_07");	//Žádá o pomoc ve válce s těmito netvory.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_08");	//Takže, lord Hagen se chce otevřeně postavit proti skřetům?
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_09");	//Ano, přesne tak! Pravdou však je, že zatím nemá dost lidí pro otevřený boj.
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_10");	//Ale věří, že s pomocí Bratrstva bude mít šanci vyhrát tuto bitvu.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_11");	//Potřebuji čas, abych si to promyslel...
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_12");	//Ale skřeti už převzali většinu ostrova do svých rukou! Ještě kousek a zaberou ho úplně.
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_13");	//Skřeti nikoho neušetří, zařídi všem obyvatelům krvavou porážku. Je nepravděpodobné, že k Bratrstvu budou shovívaví.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_14");	//(rozhodně) Dobře! Myslím, žes mě přesvědčil o potřebě takového spojenectví.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_15");	//Bratrstvo pomůže paladinům, protože se to zřejmě stalo naší společnou záležitostí.
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_16");	//Dobře, vyřídím to lordu Hagenovi. Kdy vyrazíte?
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_17");	//Tohle rozhodnutí není na mně. Myslím, že by bylo lepší, kdyby sis o tom promluvil s Gor Na Koshem.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_18");	//On teď vede posvátný řád templářů.
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_19");	//A co Guru?!
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_20");	//Všechno, co se týká válčení, je záležitostí templářů! V tom se plně spoléháme na ně.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_21");	//Samozřejmě, že naše znalosti magie, které nám poskytl Spáč, by mohly pomoci v nadcházející bitvě.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_22");	//Musíš však pochopit, že Guru je primárně duchovní mentor Bratrstva a ne jeho válečník.
	AI_Output(self,other,"DIA_BaalOrun_GatherArmy_01_23");	//Takže jdi za Gor Na Koshem a řekni mu moje slova. Všechno ostatní rozhodne on sám.
	AI_Output(other,self,"DIA_BaalOrun_GatherArmy_01_24");	//Dobře, udělám to.
	B_LogEntry(TOPIC_ORCGREATWAR,"Dokázal jsem Baala Oruna přesvědčit, že je nutné bojovat na straně paladinů. Teď si musím promluvit s Gor Na Koshem, učitelem kruhu templářů, a zjistit, kdy budou jeho vojáci připraveni vyrazit.");
};


instance DIA_BAALORUN_GETSHIP(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_getship_condition;
	information = dia_baalorun_getship_info;
	description = "Musím se dostat na loď paladinů.";
};


func int dia_baalorun_getship_condition()
{
	if((MIS_SCKnowsWayToIrdorath == TRUE) && (KAPITELORCATC == FALSE) && ((hero.guild == GIL_SEK) || (hero.guild == GIL_TPL) || (hero.guild == GIL_GUR)))
	{
		return TRUE;
	};
};

func void dia_baalorun_getship_info()
{
	AI_Output(other,self,"DIA_BaalOrun_GetShip_01_00");	//Musím se dostat na loď paladinů. Můžeš mi s tím pomocct?
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_01");	//Hmmm... A proč bys to potřeboval?
	AI_Output(other,self,"DIA_BaalOrun_GetShip_01_02");	//Zjistil jsem, kde přebývá náš hlavní nepřítel. A potřebuji loď, abych se tam dostal.
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_03");	//Teď mi je vše jasné... (Vážne) V tom případe vím jak bude najlepší zakročit!
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_04");	//Zřějmě víš, že máme docela dobré vztahy s některými vlivnými lidmi ve městě.
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_05");	//A jistě někteří z nich budou schopni tento problém vyřešit. Myslím, že bychom se k nim měli obrátit!
	AI_Output(other,self,"DIA_BaalOrun_GetShip_01_06");	//A co mám pro to udělat já?
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_07");	//Ty nic... (Vážne) Ja se o vše postarám.
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_08");	//Ale chci tě varovat - služby v takovéto záležitosti nebudou levné!
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_09");	//Nech mi nějaký čas na vybavení všech formalit.
	AI_Output(self,other,"DIA_BaalOrun_GetShip_01_10");	//Vrať se ke mně za pár dní. Možná budu mít pro tebe zprávy o této záležitosti.
	DAYORUNHELP = Wld_GetDay();
	MIS_ORUNHELPSHIP = LOG_Running;
	Log_CreateTopic(TOPIC_ORUNHELPSHIP,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_ORUNHELPSHIP,LOG_Running);
	B_LogEntry(TOPIC_ORUNHELPSHIP,"Baal Orun slíbil, že mi pomůže s lodí. Bude to však stát velkou hromadou zlata! Měl bych se k němu vrátit za pár dní.");
};


instance DIA_BAALORUN_GETSHIPDONE(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_getshipdone_condition;
	information = dia_baalorun_getshipdone_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_baalorun_getshipdone_condition()
{
	var int daynow;
	daynow = Wld_GetDay();
	if((MIS_ORUNHELPSHIP == LOG_Running) && (DAYORUNHELP <= (daynow - 2)))
	{
		return TRUE;
	};
};

func void dia_baalorun_getshipdone_info()
{
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_01_00");	//Je dobré, že ses zastavil. Mám několik novinek ohledně tvě nedávné žádosti.
	AI_Output(other,self,"DIA_BaalOrun_GetShipDone_01_01");	//Jaké?
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_01_02");	//Podařilo se mi získat pro tebe písemné povolení k přístupu na paladinskou loď.
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_01_03");	//Nicméně, jak jsem již řekl, budeš za to muset zaplatit.
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_01_05");	//Pouze dvě tisíce zlatých. Tak co říkáš?
	Info_ClearChoices(dia_baalorun_getshipdone);
	Info_AddChoice(dia_baalorun_getshipdone,"Teď nemám dost peněz.",dia_baalorun_getshipdone_paylater);
	if(Npc_HasItems(other,ItMi_Gold) >= 2000)
	{
		Info_AddChoice(dia_baalorun_getshipdone,"Dobře, tady jsou peníze.",dia_baalorun_getshipdone_money);
	};
};

func void dia_baalorun_getshipdone_paylater()
{
	AI_Output(other,self,"DIA_BaalOrun_GetShipDone_PayLater_01_00");	//Teď nemám dost peněz.
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_PayLater_01_01");	//Tak si o tom promluvíme když je budeš mít.
	AI_Output(other,self,"DIA_BaalOrun_GetShipDone_PayLater_01_02");	//Samozřejmě.
	ORUNCANGIVEMEPASS = TRUE;
	B_LogEntry(TOPIC_ORUNHELPSHIP,"Mám zaplatit dva tisíce zlatých Baalovi Orunovi aby souhlasil a dal mi písemné povolení pro vstupu na lod.");
	Info_ClearChoices(dia_baalorun_getshipdone);
};

func void dia_baalorun_getshipdone_money()
{
	B_GivePlayerXP(200);
	AI_Output(other,self,"DIA_BaalOrun_GetShipDone_Money_01_00");	//Dobře, tady jsou peníze.
	B_GiveInvItems(other,self,ItMi_Gold,2000);
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_Money_01_01");	//Skvělé! V tom případě si ho můžeš vzít.
	B_GiveInvItems(self,other,ITWr_ForgedShipLetter_MIS,1);
	AI_Output(self,other,"DIA_BaalOrun_GetShipDone_Money_01_02");	//A doufám že ti to pomůže!
	AI_Output(other,self,"DIA_BaalOrun_GetShipDone_Money_01_03");	//O tom nepochybuj.
	MIS_ORUNHELPSHIP = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_ORUNHELPSHIP,LOG_SUCCESS);
	B_LogEntry(TOPIC_ORUNHELPSHIP,"Baal Orun mi dal písemné povolení, což znamená že mohu vstoupit na palubu.");
	Info_ClearChoices(dia_baalorun_getshipdone);
};


instance DIA_BAALORUN_GETSHIPDONEAGAIN(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_getshipdoneagain_condition;
	information = dia_baalorun_getshipdoneagain_info;
	permanent = TRUE;
	description = "Dej mi to písemné povolení.";
};


func int dia_baalorun_getshipdoneagain_condition()
{
	if((MIS_ORUNHELPSHIP == LOG_Running) && (ORUNCANGIVEMEPASS == TRUE))
	{
		return TRUE;
	};
};

func void dia_baalorun_getshipdoneagain_info()
{
	AI_Output(other,self,"DIA_BaalOrun_GetShipDoneAgain_01_00");	//Dej mi to písemné povolení.
	AI_Output(self,other,"DIA_BaalOrun_GetShipDoneAgain_01_01");	//A peníze?
	Info_ClearChoices(dia_baalorun_getshipdoneagain);
	Info_AddChoice(dia_baalorun_getshipdoneagain,"Už mám dost peněz.",dia_baalorun_getshipdoneagain_paylater);
	if(Npc_HasItems(other,ItMi_Gold) >= 2000)
	{
		Info_AddChoice(dia_baalorun_getshipdoneagain,"Tak, tady je tvé zlato.",dia_baalorun_getshipdoneagain_money);
	};
};

func void dia_baalorun_getshipdoneagain_paylater()
{
	AI_Output(other,self,"DIA_BaalOrun_GetShipDoneAgain_PayLater_01_00");	//Nemám dost peněz.
	AI_Output(self,other,"DIA_BaalOrun_GetShipDoneAgain_PayLater_01_01");	//Tak si o tom promluvíme když je budeš mít.
	Info_ClearChoices(dia_baalorun_getshipdoneagain);
};

func void dia_baalorun_getshipdoneagain_money()
{
	B_GivePlayerXP(100);
	AI_Output(other,self,"DIA_BaalOrun_GetShipDoneAgain_Money_01_00");	//Tak, tady je tvé zlato.
	B_GiveInvItems(other,self,ItMi_Gold,2000);
	AI_Output(self,other,"DIA_BaalOrun_GetShipDoneAgain_Money_01_01");	//Skvělé! V tom případě si ho můžeš vzít.
	B_GiveInvItems(self,other,ITWr_ForgedShipLetter_MIS,1);
	AI_Output(self,other,"DIA_BaalOrun_GetShipDoneAgain_Money_01_02");	//A doufám že ti to pomůže!
	AI_Output(other,self,"DIA_BaalOrun_GetShipDoneAgain_Money_01_03");	//O tom nepochybuj.
	MIS_ORUNHELPSHIP = LOG_SUCCESS;
	Log_SetTopicStatus(TOPIC_ORUNHELPSHIP,LOG_SUCCESS);
	B_LogEntry(TOPIC_ORUNHELPSHIP,"Baal Orun mi dal písemné povolení, což znamená že mohu vstoupit na palubu.");
	Info_ClearChoices(dia_baalorun_getshipdoneagain);
};


instance DIA_BAALORUN_RUNEMAGICNOTWORK(C_Info)
{
	npc = gur_8002_orun;
	nr = 1;
	condition = dia_baalorun_runemagicnotwork_condition;
	information = dia_baalorun_runemagicnotwork_info;
	permanent = FALSE;
	description = "Jak jde obchod s magickou rudou?";
};


func int dia_baalorun_runemagicnotwork_condition()
{
	if((STOPBIGBATTLE == TRUE) && (MIS_RUNEMAGICNOTWORK == LOG_Running) && (GURUMAGERUNESNOT == FALSE))
	{
		return TRUE;
	};
};

func void dia_baalorun_runemagicnotwork_info()
{
	B_GivePlayerXP(200);
	AI_Output(other,self,"DIA_BaalOrun_RuneMagicNotWork_01_00");	//Jak jde obchod s magickou rudou?
	AI_Output(self,other,"DIA_BaalOrun_RuneMagicNotWork_01_01");	//Naše magické runy slábnou a už nejsou schopny kouzlit!
	AI_Output(self,other,"DIA_BaalOrun_RuneMagicNotWork_01_02");	//My všichni jsme těmito okolností velice překvapeni, ale nemůžeme nic dělat.
	AI_Output(self,other,"DIA_BaalOrun_RuneMagicNotWork_01_03");	//Všechno je to poněkud zvláštní.
	B_LogEntry(TOPIC_RUNEMAGICNOTWORK,"Ani Guru Bratrstva už svou runovou magií nevládnou.");
	GURUMAGERUNESNOT = TRUE;
};

instance DIA_BaalOrun_MAXROBE(C_Info)
{
	npc = gur_8002_orun;
	nr = 2;
	condition = DIA_BaalOrun_MAXROBE_condition;
	information = DIA_BaalOrun_MAXROBE_info;
	permanent = FALSE;
	description = "Co takhle lepší oblečení?";
};

func int DIA_BaalOrun_MAXROBE_condition()
{
	if((hero.guild == GIL_GUR) && (Kapitel >= 5) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 6) && (LastRobeGUR == FALSE) && (MAXROBEGUR_Permanent == FALSE))
	{
		return TRUE;
	};
};

func void DIA_BaalOrun_MAXROBE_info()
{
	AI_Output(other,self,"DIA_BaalOrun_MAXROBE_01_00");	//Co takhle lepší oblečení?
	AI_Output(self,other,"DIA_BaalOrun_MAXROBE_01_01");	//Jelikož ovládáš všech šest kruhů magie, jsi nyní hoden nosit nejvyšší roucho Guru.
	AI_Output(self,other,"DIA_BaalOrun_MAXROBE_01_02");	//Budeš však za to muset zaplatit. Výrobní náklady nejsou nejnižší, takže by se nám hodil nějaký drobný příspěvek.
	LastRobeGUR = TRUE;
};

instance DIA_BaalOrun_MAXROBE_Buy(C_Info)
{
	npc = gur_8002_orun;
	nr = 2;
	condition = DIA_BaalOrun_MAXROBE_Buy_condition;
	information = DIA_BaalOrun_MAXROBE_Buy_info;
	permanent = TRUE;
	description = "Prodej mi roucho nejvyššího Guru Bratrstva. (cena: 25000 zlatých)";
};

func int DIA_BaalOrun_MAXROBE_Buy_condition()
{
	if((hero.guild == GIL_GUR) && (LastRobeGUR == TRUE) && (MAXROBEGUR_Permanent == FALSE))
	{
		return TRUE;
	};
};

func void DIA_BaalOrun_MAXROBE_Buy_info()
{
	AI_Output(other,self,"DIA_BaalOrun_MAXROBE_Buy_01_00");	//Prodej mi roucho nejvyššího Guru Bratrstva.

	if(Npc_HasItems(hero,ItMi_Gold) >= 25000)
	{
		B_GiveInvItems(other,self,ItMi_Gold,25000);
		Npc_RemoveInvItems(self,ItMi_Gold,25000);
		AI_Output(self,other,"DIA_BaalOrun_MAXROBE_Buy_01");	//Dobře! Tady ji máš.
		AI_Output(self,other,"DIA_BaalOrun_MAXROBE_Buy_02");	//Je velkou ctí nosit takový oděv. Pamatuj na to.
		CreateInvItems(self,ITAR_GUR_TOP,1);
		B_GiveInvItems(self,other,ITAR_GUR_TOP,1);
		MAXROBEGUR_Permanent = TRUE;
	}
	else
	{
		AI_Output(self,other,"DIA_BaalOrun_MAXROBE_Buy_01_03");	//Nemáš dostatek zlata.
	};
};
