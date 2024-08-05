*------------------------------------------------------------*;
* Variable Macros;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* General Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_VARS = 22;
   %macro EM_VARS;
    Age AnyHealthcare BMI CholCheck Diabetes_Prediction DiffWalk Education Fruits
   GenHlth HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
   NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies
   %mend EM_VARS;
%let EM_NUM_CLASS = 20;
   %macro EM_CLASS;
    AnyHealthcare CholCheck Diabetes_Prediction DiffWalk Education Fruits GenHlth
   HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
   NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies
   %mend EM_CLASS;
%let EM_NUM_INTERVAL = 2;
   %macro EM_INTERVAL;
    Age BMI
   %mend EM_INTERVAL;
%let EM_NUM_REPORT_VARS = 0;
   %macro  EM_REPORT_VARS; %mend;
%let EM_NUM_CLASS_REPORT = 0;
   %macro  EM_CLASS_REPORT; %mend;
%let EM_NUM_INTERVAL_REPORT = 0;
   %macro  EM_INTERVAL_REPORT; %mend;
*------------------------------------------------------------*;
* Target Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_TARGET = 1;
   %macro EM_TARGET;
    Diabetes_Prediction
   %mend EM_TARGET;
%let EM_NUM_TARGET_LEVEL = 1;
   %macro EM_TARGET_LEVEL;
    NOMINAL
   %mend EM_TARGET_LEVEL;
%let EM_NUM_BINARY_TARGET = 0;
   %macro  EM_BINARY_TARGET; %mend;
%let EM_NUM_ORDINAL_TARGET = 0;
   %macro  EM_ORDINAL_TARGET; %mend;
%let EM_NUM_NOMINAL_TARGET = 1;
   %macro EM_NOMINAL_TARGET;
    Diabetes_Prediction
   %mend EM_NOMINAL_TARGET;
%let EM_NUM_INTERVAL_TARGET = 0;
   %macro  EM_INTERVAL_TARGET; %mend;
*------------------------------------------------------------*;
* Input Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_INPUT = 21;
   %macro EM_INPUT;
    Age AnyHealthcare BMI CholCheck DiffWalk Education Fruits GenHlth
   HeartDiseaseorAttack HighBP HighChol HvyAlcoholConsump Income MentHlth
   NoDocbcCost PhysActivity PhysHlth Sex Smoker Stroke Veggies
   %mend EM_INPUT;
%let EM_NUM_BINARY_INPUT = 14;
   %macro EM_BINARY_INPUT;
    AnyHealthcare CholCheck DiffWalk Fruits HeartDiseaseorAttack HighBP HighChol
   HvyAlcoholConsump NoDocbcCost PhysActivity Sex Smoker Stroke Veggies
   %mend EM_BINARY_INPUT;
%let EM_NUM_ORDINAL_INPUT = 5;
   %macro EM_ORDINAL_INPUT;
    Education GenHlth Income MentHlth PhysHlth
   %mend EM_ORDINAL_INPUT;
%let EM_NUM_NOMINAL_INPUT = 0;
   %macro  EM_NOMINAL_INPUT; %mend;
%let EM_NUM_INTERVAL_INPUT = 2;
   %macro EM_INTERVAL_INPUT;
    Age BMI
   %mend EM_INTERVAL_INPUT;
*------------------------------------------------------------*;
* Rejected Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_REJECTED = 0;
   %macro  EM_REJECTED; %mend;
%let EM_NUM_BINARY_REJECTED = 0;
   %macro  EM_BINARY_REJECTED; %mend;
%let EM_NUM_ORDINAL_REJECTED = 0;
   %macro  EM_ORDINAL_REJECTED; %mend;
%let EM_NUM_NOMINAL_REJECTED = 0;
   %macro  EM_NOMINAL_REJECTED; %mend;
%let EM_NUM_INTERVAL_REJECTED = 0;
   %macro  EM_INTERVAL_REJECTED; %mend;
*------------------------------------------------------------*;
* Misc Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_ASSESS = 0;
   %macro  EM_ASSESS; %mend;
%let EM_NUM_INTERVAL_ASSESS = 0;
   %macro  EM_INTERVAL_ASSESS; %mend;
%let EM_NUM_CLASS_ASSESS = 0;
   %macro  EM_CLASS_ASSESS; %mend;
%let EM_NUM_CENSOR = 0;
   %macro  EM_CENSOR; %mend;
%let EM_NUM_CLASSIFICATION = 0;
   %macro  EM_CLASSIFICATION; %mend;
%let EM_NUM_COST = 0;
   %macro  EM_COST; %mend;
%let EM_NUM_CROSSID = 0;
   %macro  EM_CROSSID; %mend;
%let EM_NUM_DECISION = 0;
   %macro  EM_DECISION; %mend;
%let EM_NUM_FREQ = 0;
   %macro  EM_FREQ; %mend;
%let EM_NUM_ID = 0;
   %macro  EM_ID; %mend;
%let EM_NUM_LABEL = 0;
   %macro  EM_LABEL; %mend;
%let EM_NUM_PREDICT = 0;
   %macro  EM_PREDICT; %mend;
%let EM_NUM_REFERRER = 0;
   %macro  EM_REFERRER; %mend;
%let EM_NUM_REJECTS = 0;
   %macro  EM_REJECTS; %mend;
%let EM_NUM_RESIDUAL = 0;
   %macro  EM_RESIDUAL; %mend;
%let EM_NUM_SEGMENT = 0;
   %macro  EM_SEGMENT; %mend;
%let EM_NUM_SEQUENCE = 0;
   %macro  EM_SEQUENCE; %mend;
%let EM_NUM_TEXT = 0;
   %macro  EM_TEXT; %mend;
%let EM_NUM_TIMEID = 0;
   %macro  EM_TIMEID; %mend;
%let EM_NUM_TREATMENT = 0;
   %macro  EM_TREATMENT; %mend;
%let EM_NUM_KEY = 0;
   %macro  EM_KEY; %mend;
*------------------------------------------------------------*;
* End Create EM Macro Variables and Macros;
*------------------------------------------------------------*;
