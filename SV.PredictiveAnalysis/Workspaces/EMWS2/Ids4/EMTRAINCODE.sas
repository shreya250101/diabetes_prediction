*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids4: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids4_DATA (label="")
/ view=EMWS2.Ids4_DATA
;
set ZETADATA.SCOREDIABETES_TRAIN;
run;
