*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\uisnutvdiprof1a\redirected$\bkris2\Documents\ZetaProject\ZetaExploratoryAnalysis\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids_DATA (label="")
/ view=EMWS2.Ids_DATA
;
set ZETADATA.ZETADIABITIES_TRAIN;
run;
