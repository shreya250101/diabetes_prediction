*------------------------------------------------------------*;
* Score: Creating Fixed Names;
*------------------------------------------------------------*;
LABEL EM_SEGMENT = 'Node';
EM_SEGMENT = _NODE_;
LENGTH EM_EVENTPROBABILITY 8;
LABEL EM_EVENTPROBABILITY = 'Probability for level PREDIABETES of Diabetes_Prediction';
EM_EVENTPROBABILITY = P_Diabetes_Predictionprediabetes;
LENGTH EM_PROBABILITY 8;
LABEL EM_PROBABILITY = 'Probability of Classification';
EM_PROBABILITY =
max(
P_Diabetes_Predictionprediabetes
,
P_Diabetes_Predictionno_diabetes
,
P_Diabetes_Predictiondiabetes
);
LENGTH EM_CLASSIFICATION $%dmnorlen;
LABEL EM_CLASSIFICATION = "Prediction for Diabetes_Prediction";
EM_CLASSIFICATION = I_Diabetes_Prediction;
LABEL EM_CLASSTARGET = 'Target Variable: Diabetes_Prediction';
EM_CLASSTARGET = F_Diabetes_Prediction;
