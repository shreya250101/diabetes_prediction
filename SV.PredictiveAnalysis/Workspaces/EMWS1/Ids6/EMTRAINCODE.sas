*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids6: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids6_DATA (label="")
;
set ZETADATA.SCOREZETA_TRAIN;
drop _dataobs_;
run;
