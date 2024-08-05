*------------------------------------------------------------*;
* Reg4: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Diabetes_Prediction;
  length   Diabetes_Prediction              $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           DECISION3                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="PREDIABETES"
           DECISION2="NO DIABETES"
           DECISION3="DIABETES"
           ;
  format   COUNT 10.
           ;
Diabetes_Prediction="PREDIABETES"; COUNT=3641; DATAPRIOR=0.01815299167884; TRAINPRIOR=0.01815299167884; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0;
output;
Diabetes_Prediction="NO DIABETES"; COUNT=169538; DATAPRIOR=0.84526830630244; TRAINPRIOR=0.84526830630244; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0;
output;
Diabetes_Prediction="DIABETES"; COUNT=27394; DATAPRIOR=0.13657870201871; TRAINPRIOR=0.13657870201871; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1;
output;
;
run;
proc datasets lib=work nolist;
modify Diabetes_Prediction(type=PROFIT label=Diabetes_Prediction);
label DECISION1= 'PREDIABETES';
label DECISION2= 'NO DIABETES';
label DECISION3= 'DIABETES';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS1.Part_TRAIN(keep=
Age AnyHealthcare BMI CholCheck Diabetes_Prediction DiffWalk Education Fruits
GenHlth HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies );
run;
*------------------------------------------------------------* ;
* Reg4: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    AnyHealthcare(ASC) CholCheck(ASC) Diabetes_Prediction(DESC) DiffWalk(ASC)
   Education(ASC) Fruits(ASC) GenHlth(ASC) HeartDiseaseorAttack(ASC) HighBP(ASC)
   HighChol(ASC) HvyAlcoholConsump(ASC) Income(ASC) MentHlth(ASC) NoDocbcCost(ASC)
   PhysActivity(ASC) PhysHlth(ASC) Sex(ASC) Smoker(ASC) Stroke(ASC) Veggies(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg4: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age BMI
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg4: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg4_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Diabetes_Prediction
;
run;
quit;
*------------------------------------------------------------*;
* Reg4: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg4_DMDB
validata = EMWS1.Part_VALIDATE
outest = EMWS1.Reg4_EMESTIMATE
outterms = EMWS1.Reg4_OUTTERMS
outmap= EMWS1.Reg4_MAPDS namelen=200
;
class
Diabetes_Prediction
AnyHealthcare
CholCheck
DiffWalk
Education
Fruits
GenHlth
HeartDiseaseorAttack
HighBP
HighChol
HvyAlcoholConsump
Income
MentHlth
NoDocbcCost
PhysActivity
PhysHlth
Sex
Smoker
Stroke
Veggies
;
model Diabetes_Prediction =
Age
AnyHealthcare
BMI
CholCheck
DiffWalk
Education
Fruits
GenHlth
HeartDiseaseorAttack
HighBP
HighChol
HvyAlcoholConsump
Income
MentHlth
NoDocbcCost
PhysActivity
PhysHlth
Sex
Smoker
Stroke
Veggies
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=NONE
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS1.Part_TEST
out=_null_
outfit=EMWS1.Reg4_FITTEST
role = TEST
;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1\Reg4\EMPUBLISHSCORE.sas"
group=Reg4
;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1\Reg4\EMFLOWSCORE.sas"
group=Reg4
residual
;
run;
quit;
