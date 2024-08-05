*------------------------------------------------------------*;
* Variable Macros;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* General Variable Macros;
*------------------------------------------------------------*;
%let EM_NUM_VARS = 25;
   %macro EM_VARS;
    BMI Diabetes_Prediction EM_CLASSIFICATION EM_CLASSTARGET EM_EVENTPROBABILITY
   EM_PROBABILITY EM_SEGMENT F_Diabetes_Prediction GenHlth HighBP HighChol
   Q_Diabetes_Predictiondiabetes Q_Diabetes_Predictionno_diabetes
   Q_Diabetes_Predictionprediabetes R_Diabetes_Predictiondiabetes
   R_Diabetes_Predictionno_diabetes R_Diabetes_Predictionprediabetes
   U_Diabetes_Prediction V_Diabetes_Predictiondiabetes
   V_Diabetes_Predictionno_diabetes V_Diabetes_Predictionprediabetes _NODE_ _WARN_
   _dataobs_ b_Diabetes_Prediction
   %mend EM_VARS;
%let EM_NUM_CLASS = 12;
   %macro EM_CLASS;
    Diabetes_Prediction EM_CLASSIFICATION EM_CLASSTARGET EM_SEGMENT
   F_Diabetes_Prediction GenHlth HighBP HighChol U_Diabetes_Prediction _NODE_
   _WARN_ b_Diabetes_Prediction
   %mend EM_CLASS;
%let EM_NUM_INTERVAL = 13;
   %macro EM_INTERVAL;
    BMI EM_EVENTPROBABILITY EM_PROBABILITY Q_Diabetes_Predictiondiabetes
   Q_Diabetes_Predictionno_diabetes Q_Diabetes_Predictionprediabetes
   R_Diabetes_Predictiondiabetes R_Diabetes_Predictionno_diabetes
   R_Diabetes_Predictionprediabetes V_Diabetes_Predictiondiabetes
   V_Diabetes_Predictionno_diabetes V_Diabetes_Predictionprediabetes _dataobs_
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
%let EM_NUM_INPUT = 4;
   %macro EM_INPUT;
    BMI GenHlth HighBP HighChol
   %mend EM_INPUT;
%let EM_NUM_BINARY_INPUT = 2;
   %macro EM_BINARY_INPUT;
    HighBP HighChol
   %mend EM_BINARY_INPUT;
%let EM_NUM_ORDINAL_INPUT = 1;
   %macro EM_ORDINAL_INPUT;
    GenHlth
   %mend EM_ORDINAL_INPUT;
%let EM_NUM_NOMINAL_INPUT = 0;
   %macro  EM_NOMINAL_INPUT; %mend;
%let EM_NUM_INTERVAL_INPUT = 1;
   %macro EM_INTERVAL_INPUT;
    BMI
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
%let EM_NUM_ASSESS = 5;
   %macro EM_ASSESS;
    EM_CLASSTARGET Q_Diabetes_Predictiondiabetes Q_Diabetes_Predictionno_diabetes
   Q_Diabetes_Predictionprediabetes _WARN_
   %mend EM_ASSESS;
%let EM_NUM_INTERVAL_ASSESS = 3;
   %macro EM_INTERVAL_ASSESS;
    Q_Diabetes_Predictiondiabetes Q_Diabetes_Predictionno_diabetes
   Q_Diabetes_Predictionprediabetes
   %mend EM_INTERVAL_ASSESS;
%let EM_NUM_CLASS_ASSESS = 2;
   %macro EM_CLASS_ASSESS;
    EM_CLASSTARGET _WARN_
   %mend EM_CLASS_ASSESS;
%let EM_NUM_CENSOR = 0;
   %macro  EM_CENSOR; %mend;
%let EM_NUM_CLASSIFICATION = 3;
   %macro EM_CLASSIFICATION;
    EM_CLASSIFICATION F_Diabetes_Prediction U_Diabetes_Prediction
   %mend EM_CLASSIFICATION;
%let EM_NUM_COST = 0;
   %macro  EM_COST; %mend;
%let EM_NUM_CROSSID = 0;
   %macro  EM_CROSSID; %mend;
%let EM_NUM_DECISION = 0;
   %macro  EM_DECISION; %mend;
%let EM_NUM_FREQ = 0;
   %macro  EM_FREQ; %mend;
%let EM_NUM_ID = 1;
   %macro EM_ID;
    _dataobs_
   %mend EM_ID;
%let EM_NUM_LABEL = 0;
   %macro  EM_LABEL; %mend;
%let EM_NUM_PREDICT = 5;
   %macro EM_PREDICT;
    EM_EVENTPROBABILITY EM_PROBABILITY V_Diabetes_Predictiondiabetes
   V_Diabetes_Predictionno_diabetes V_Diabetes_Predictionprediabetes
   %mend EM_PREDICT;
%let EM_NUM_REFERRER = 0;
   %macro  EM_REFERRER; %mend;
%let EM_NUM_REJECTS = 21;
   %macro EM_REJECTS;
    Age AnyHealthcare CholCheck DiffWalk Education Fruits HeartDiseaseorAttack
   HvyAlcoholConsump I_Diabetes_Prediction Income MentHlth NoDocbcCost
   P_Diabetes_Predictiondiabetes P_Diabetes_Predictionno_diabetes
   P_Diabetes_Predictionprediabetes PhysActivity PhysHlth Sex Smoker Stroke
   Veggies
   %mend EM_REJECTS;
%let EM_NUM_RESIDUAL = 3;
   %macro EM_RESIDUAL;
    R_Diabetes_Predictiondiabetes R_Diabetes_Predictionno_diabetes
   R_Diabetes_Predictionprediabetes
   %mend EM_RESIDUAL;
%let EM_NUM_SEGMENT = 3;
   %macro EM_SEGMENT;
    EM_SEGMENT _NODE_ b_Diabetes_Prediction
   %mend EM_SEGMENT;
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
