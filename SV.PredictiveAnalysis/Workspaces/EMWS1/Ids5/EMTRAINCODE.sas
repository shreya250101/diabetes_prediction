*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids5: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids5_DATA (label="")
;
set ZETADATA.ZETADIABETES_TRAIN;
drop _dataobs_;
run;
