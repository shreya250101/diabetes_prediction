*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    AnyHealthcare(ASC) CholCheck(ASC) DiffWalk(ASC) Education(ASC) Fruits(ASC)
   GenHlth(ASC) HeartDiseaseorAttack(ASC) HighBP(ASC) HighChol(ASC)
   HvyAlcoholConsump(ASC) Income(ASC) MentHlth(ASC) NoDocbcCost(ASC)
   PhysActivity(ASC) PhysHlth(ASC) Sex(ASC) Smoker(ASC) Stroke(ASC) Veggies(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age BMI
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
libname _spdslib SPDE "C:\Users\bkris2\AppData\Local\Temp\SAS Temporary Files\_TD11852_NUTVDIWIN104-34_\Prc2";
proc dmdb batch data=EMWS2.Filter_TRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 101
out=_spdslib.EM_DMDB
;
class %DMDBClass;
var %DMDBVar;
run;
quit;
