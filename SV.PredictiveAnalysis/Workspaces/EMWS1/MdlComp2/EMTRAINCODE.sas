data EMWS1.MdlComp2_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg4" MODEL "Reg4" MODELDESCRIPTION "Stepwise Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg4_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg4" MODEL "Reg4" MODELDESCRIPTION "Stepwise Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg4_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg4" MODEL "Reg4" MODELDESCRIPTION "Stepwise Regression" TARGETLABEL "Diabetes Prediction";
set WORK.Reg4_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg4" MODEL "Reg4" MODELDESCRIPTION "Stepwise Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg4" MODEL "Reg4" MODELDESCRIPTION "Stepwise Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg3" MODEL "Reg3" MODELDESCRIPTION "Backward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg3_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMRANK;
set EMWS1.MdlComp2_EMRANK work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg3" MODEL "Reg3" MODELDESCRIPTION "Backward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg3_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMSCOREDIST;
set EMWS1.MdlComp2_EMSCOREDIST work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg3" MODEL "Reg3" MODELDESCRIPTION "Backward Regression" TARGETLABEL "Diabetes Prediction";
set WORK.Reg3_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMOUTFIT;
set EMWS1.MdlComp2_EMOUTFIT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg3" MODEL "Reg3" MODELDESCRIPTION "Backward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg3_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMCLASSIFICATION;
set EMWS1.MdlComp2_EMCLASSIFICATION work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg3" MODEL "Reg3" MODELDESCRIPTION "Backward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg3_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMEVENTREPORT;
set EMWS1.MdlComp2_EMEVENTREPORT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg2" MODEL "Reg2" MODELDESCRIPTION "Forward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg2_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMRANK;
set EMWS1.MdlComp2_EMRANK work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg2" MODEL "Reg2" MODELDESCRIPTION "Forward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg2_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMSCOREDIST;
set EMWS1.MdlComp2_EMSCOREDIST work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg2" MODEL "Reg2" MODELDESCRIPTION "Forward Regression" TARGETLABEL "Diabetes Prediction";
set WORK.Reg2_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMOUTFIT;
set EMWS1.MdlComp2_EMOUTFIT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg2" MODEL "Reg2" MODELDESCRIPTION "Forward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMCLASSIFICATION;
set EMWS1.MdlComp2_EMCLASSIFICATION work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg2" MODEL "Reg2" MODELDESCRIPTION "Forward Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMEVENTREPORT;
set EMWS1.MdlComp2_EMEVENTREPORT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMRANK;
set EMWS1.MdlComp2_EMRANK work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMSCOREDIST;
set EMWS1.MdlComp2_EMSCOREDIST work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set WORK.Reg_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMOUTFIT;
set EMWS1.MdlComp2_EMOUTFIT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMCLASSIFICATION;
set EMWS1.MdlComp2_EMCLASSIFICATION work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Exhaustive Regression" TARGETLABEL "Diabetes Prediction";
set EMWS1.Reg_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp2_EMEVENTREPORT;
set EMWS1.MdlComp2_EMEVENTREPORT work.MdlComp2_TEMP;
run;
