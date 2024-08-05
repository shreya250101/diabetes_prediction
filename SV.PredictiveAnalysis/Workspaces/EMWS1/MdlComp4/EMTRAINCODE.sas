data EMWS1.MdlComp4_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural" MODEL "Neural" MODELDESCRIPTION "NNet 3HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural" MODEL "Neural" MODELDESCRIPTION "NNet 3HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural" MODEL "Neural" MODELDESCRIPTION "NNet 3HU" TARGETLABEL "Diabetes Prediction";
set WORK.Neural_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural" MODEL "Neural" MODELDESCRIPTION "NNet 3HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural" MODEL "Neural" MODELDESCRIPTION "NNet 3HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural2" MODEL "Neural2" MODELDESCRIPTION "NNet 5HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural2_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural2" MODEL "Neural2" MODELDESCRIPTION "NNet 5HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural2_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural2" MODEL "Neural2" MODELDESCRIPTION "NNet 5HU" TARGETLABEL "Diabetes Prediction";
set WORK.Neural2_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural2" MODEL "Neural2" MODELDESCRIPTION "NNet 5HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural2" MODEL "Neural2" MODELDESCRIPTION "NNet 5HU" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural4" MODEL "Neural4" MODELDESCRIPTION "NNet 3HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural4_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural4" MODEL "Neural4" MODELDESCRIPTION "NNet 3HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural4_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural4" MODEL "Neural4" MODELDESCRIPTION "NNet 3HUBP" TARGETLABEL "Diabetes Prediction";
set WORK.Neural4_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural4" MODEL "Neural4" MODELDESCRIPTION "NNet 3HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural4" MODEL "Neural4" MODELDESCRIPTION "NNet 3HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural7" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMRANK;
set EMWS1.MdlComp4_EMRANK work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural7" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMSCOREDIST;
set EMWS1.MdlComp4_EMSCOREDIST work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural7" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set WORK.Neural7_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMOUTFIT;
set EMWS1.MdlComp4_EMOUTFIT work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural7" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMCLASSIFICATION;
set EMWS1.MdlComp4_EMCLASSIFICATION work.MdlComp4_TEMP;
run;
data work.MdlComp4_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural7" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp4_EMEVENTREPORT;
set EMWS1.MdlComp4_EMEVENTREPORT work.MdlComp4_TEMP;
run;
