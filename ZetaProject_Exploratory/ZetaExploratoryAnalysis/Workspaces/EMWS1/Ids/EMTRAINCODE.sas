*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "\\uisnutvdiprof1a\redirected$\bkris2\Documents\ZetaProject\ZetaExploratoryAnalysis\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
/ view=EMWS1.Ids_DATA
;
set ZETADATA.ZETADIABITIES_TRAIN;
run;
