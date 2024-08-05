data EMWS1.MdlComp3_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp4" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp4" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp4" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set WORK.Neural7_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp4" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp4" MODEL "Neural7" MODELDESCRIPTION "NNet 5HUBP" TARGETLABEL "Diabetes Prediction";
set EMWS1.Neural7_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMRANK;
set EMWS1.MdlComp3_EMRANK work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMSCOREDIST;
set EMWS1.MdlComp3_EMSCOREDIST work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set WORK.Tree4_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMOUTFIT;
set EMWS1.MdlComp3_EMOUTFIT work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMCLASSIFICATION;
set EMWS1.MdlComp3_EMCLASSIFICATION work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMEVENTREPORT;
set EMWS1.MdlComp3_EMEVENTREPORT work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp2" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMRANK;
set EMWS1.MdlComp3_EMRANK work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp2" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMSCOREDIST;
set EMWS1.MdlComp3_EMSCOREDIST work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp2" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set WORK.Reg_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMOUTFIT;
set EMWS1.MdlComp3_EMOUTFIT work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp2" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMCLASSIFICATION;
set EMWS1.MdlComp3_EMCLASSIFICATION work.MdlComp3_TEMP;
run;
data work.MdlComp3_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "MdlComp2" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp3_EMEVENTREPORT;
set EMWS1.MdlComp3_EMEVENTREPORT work.MdlComp3_TEMP;
run;
