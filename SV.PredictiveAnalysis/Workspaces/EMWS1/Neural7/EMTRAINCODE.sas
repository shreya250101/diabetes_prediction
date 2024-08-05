*------------------------------------------------------------*;
* Neural7: Create decision matrix;
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
data EM_Neural7;
set EMWS1.Part_TRAIN(keep=
Age AnyHealthcare BMI CholCheck Diabetes_Prediction DiffWalk Education Fruits
GenHlth HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies );
run;
*------------------------------------------------------------* ;
* Neural7: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    AnyHealthcare(ASC) CholCheck(ASC) Diabetes_Prediction(DESC) DiffWalk(ASC)
   Education(ASC) Fruits(ASC) GenHlth(ASC) HeartDiseaseorAttack(ASC) HighBP(ASC)
   HighChol(ASC) HvyAlcoholConsump(ASC) Income(ASC) MentHlth(ASC) NoDocbcCost(ASC)
   PhysActivity(ASC) PhysHlth(ASC) Sex(ASC) Smoker(ASC) Stroke(ASC) Veggies(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural7: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age BMI
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural7: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural7
dmdbcat=WORK.Neural7_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Diabetes_Prediction
;
run;
quit;
*------------------------------------------------------------* ;
* Neural7: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    Age BMI
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural7: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;
    AnyHealthcare CholCheck DiffWalk Fruits HeartDiseaseorAttack HighBP HighChol
   HvyAlcoholConsump NoDocbcCost PhysActivity Sex Smoker Stroke Veggies
%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural7: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural7: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;
    Education GenHlth Income MentHlth PhysHlth
%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural7 dmdbcat=WORK.Neural7_DMDB
validdata = EMWS1.Part_VALIDATE
random=12345
;
nloptions
;
performance alldetails noutilfile;
netopts
decay=0;
input %INTINPUTS / level=interval id=intvl
;
input %BININPUTS / level=nominal id=bin
;
input %ORDINPUTS / level=ordinal id=ord
;
target Diabetes_Prediction / level=NOMINAL id=Diabetes_Prediction
bias
;
arch MLP
Hidden=5
;
save network=EMWS1.Neural7_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
technique=BPROP
learn=0.1 momentum=0
Outest=EMWS1.Neural7_outest estiter=1
Outfit=EMWS1.Neural7_OUTFIT
;
run;
quit;
proc sort data=EMWS1.Neural7_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural7;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural7(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS1.Neural7_INITIAL;
set EMWS1.Neural7_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural7 dmdbcat=WORK.Neural7_DMDB
validdata = EMWS1.Part_VALIDATE
network = EMWS1.Neural7_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS1.Neural7_INITIAL;
train tech=NONE;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1\Neural7\SCORECODE.sas"
group=Neural7
;
;
code file="\\uisnutvdiprof1a\redirected$\shre2\Documents\SV.SAS EM Assignments\SV.PredictiveAnalysis\Workspaces\EMWS1\Neural7\RESIDUALSCORECODE.sas"
group=Neural7
residual
;
;
score data=EMWS1.Part_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS1.Neural7_OUTKEY;
score data=EMWS1.Part_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS1.Neural7_OUTKEY;
score data=EMWS1.Part_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS1.Neural7_OUTKEY;
run;
quit;
data EMWS1.Neural7_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS1.Neural7_EMESTIMATE;
set EMWS1.Neural7_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural7;
run;
quit;
