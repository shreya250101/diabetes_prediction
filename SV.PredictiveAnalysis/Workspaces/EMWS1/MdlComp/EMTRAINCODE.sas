data EMWS1.MdlComp_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree4" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree4" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree4" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set WORK.Tree4_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree4" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree4" MODEL "Tree4" MODELDESCRIPTION "ClassDec Tree B3D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree4_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "ClassDec Tree B2D2" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree3_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMRANK;
set EMWS1.MdlComp_EMRANK work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "ClassDec Tree B2D2" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree3_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMSCOREDIST;
set EMWS1.MdlComp_EMSCOREDIST work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "ClassDec Tree B2D2" TARGETLABEL "Diabetes Prediction";
set WORK.Tree3_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMOUTFIT;
set EMWS1.MdlComp_EMOUTFIT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "ClassDec Tree B2D2" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree3_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMCLASSIFICATION;
set EMWS1.MdlComp_EMCLASSIFICATION work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "ClassDec Tree B2D2" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree3_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMEVENTREPORT;
set EMWS1.MdlComp_EMEVENTREPORT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "ClassDec Tree B2D4" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree2_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMRANK;
set EMWS1.MdlComp_EMRANK work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "ClassDec Tree B2D4" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree2_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMSCOREDIST;
set EMWS1.MdlComp_EMSCOREDIST work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "ClassDec Tree B2D4" TARGETLABEL "Diabetes Prediction";
set WORK.Tree2_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMOUTFIT;
set EMWS1.MdlComp_EMOUTFIT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "ClassDec Tree B2D4" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMCLASSIFICATION;
set EMWS1.MdlComp_EMCLASSIFICATION work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "ClassDec Tree B2D4" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree2_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMEVENTREPORT;
set EMWS1.MdlComp_EMEVENTREPORT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree" MODEL "Tree" MODELDESCRIPTION "ClassDecTree B2D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree_EMRANK;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMRANK;
set EMWS1.MdlComp_EMRANK work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree" MODEL "Tree" MODELDESCRIPTION "ClassDecTree B2D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree_EMSCOREDIST;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMSCOREDIST;
set EMWS1.MdlComp_EMSCOREDIST work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree" MODEL "Tree" MODELDESCRIPTION "ClassDecTree B2D6" TARGETLABEL "Diabetes Prediction";
set WORK.Tree_OUTFIT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMOUTFIT;
set EMWS1.MdlComp_EMOUTFIT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree" MODEL "Tree" MODELDESCRIPTION "ClassDecTree B2D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMCLASSIFICATION;
set EMWS1.MdlComp_EMCLASSIFICATION work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree" MODEL "Tree" MODELDESCRIPTION "ClassDecTree B2D6" TARGETLABEL "Diabetes Prediction";
set EMWS1.Tree_EMEVENTREPORT;
where upcase(TARGET) = upcase("Diabetes_Prediction");
run;
data EMWS1.MdlComp_EMEVENTREPORT;
set EMWS1.MdlComp_EMEVENTREPORT work.MdlComp_TEMP;
run;
