*------------------------------------------------------------*;
* Reg2: Create decision matrix;
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
Diabetes_Prediction="PREDIABETES"; COUNT=3671; DATAPRIOR=0.0183026544; TRAINPRIOR=0.0183026544; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0;
output;
Diabetes_Prediction="NO DIABETES"; COUNT=169553; DATAPRIOR=0.8453473067; TRAINPRIOR=0.8453473067; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0;
output;
Diabetes_Prediction="DIABETES"; COUNT=27348; DATAPRIOR=0.1363500389; TRAINPRIOR=0.1363500389; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1;
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
set EMWS2.Part_TRAIN(keep=
Age AnyHealthcare BMI CholCheck Diabetes_Prediction DiffWalk Education Fruits
GenHlth HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies );
run;
*------------------------------------------------------------* ;
* Reg2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    AnyHealthcare(ASC) CholCheck(ASC) Diabetes_Prediction(DESC) DiffWalk(ASC)
   Education(ASC) Fruits(ASC) GenHlth(ASC) HeartDiseaseorAttack(ASC) HighBP(ASC)
   HighChol(ASC) HvyAlcoholConsump(ASC) Income(ASC) MentHlth(ASC) NoDocbcCost(ASC)
   PhysActivity(ASC) PhysHlth(ASC) Sex(ASC) Smoker(ASC) Stroke(ASC) Veggies(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age BMI
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg2_DMDB
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
* Reg2: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg2_DMDB
validata = EMWS2.Part_VALIDATE
outest = EMWS2.Reg2_EMESTIMATE
outterms = EMWS2.Reg2_OUTTERMS
outmap= EMWS2.Reg2_MAPDS namelen=200
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
selection=FORWARD choose=NONE
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS2.Part_TEST
out=_null_
outfit=EMWS2.Reg2_FITTEST
role = TEST
;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS2\Reg2\EMPUBLISHSCORE.sas"
group=Reg2
;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS2\Reg2\EMFLOWSCORE.sas"
group=Reg2
residual
;
run;
quit;
