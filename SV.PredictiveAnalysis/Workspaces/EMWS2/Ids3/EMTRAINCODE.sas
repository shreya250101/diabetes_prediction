*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids3: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids3_DATA (label="")
/ view=EMWS2.Ids3_DATA
;
set ZETADATA.CLEANZETADIABETES_TRAIN;
run;
