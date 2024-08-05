****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_Diabetes_Prediction  $   11;
LENGTH U_Diabetes_Prediction  $   11;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_Diabetes_Predictionno_diabetes =
'Predicted: Diabetes_Prediction=no diabetes' ;
label P_Diabetes_Predictiondiabetes =
'Predicted: Diabetes_Prediction=diabetes' ;
label P_Diabetes_Predictionprediabetes =
'Predicted: Diabetes_Prediction=prediabetes' ;
label Q_Diabetes_Predictionno_diabetes =
'Unadjusted P: Diabetes_Prediction=no diabetes' ;
label Q_Diabetes_Predictiondiabetes =
'Unadjusted P: Diabetes_Prediction=diabetes' ;
label Q_Diabetes_Predictionprediabetes =
'Unadjusted P: Diabetes_Prediction=prediabetes' ;
label V_Diabetes_Predictionno_diabetes =
'Validated: Diabetes_Prediction=no diabetes' ;
label V_Diabetes_Predictiondiabetes =
'Validated: Diabetes_Prediction=diabetes' ;
label V_Diabetes_Predictionprediabetes =
'Validated: Diabetes_Prediction=prediabetes' ;
label I_Diabetes_Prediction = 'Into: Diabetes_Prediction' ;
label U_Diabetes_Prediction = 'Unnormalized Into: Diabetes_Prediction' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_11 $     11; DROP _ARBFMT_11;
_ARBFMT_11 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
_NODE_  =                    1;
_LEAF_  =                    1;
P_Diabetes_Predictionno_diabetes  =     0.84536378027347;
P_Diabetes_Predictiondiabetes  =     0.13635060515786;
P_Diabetes_Predictionprediabetes  =     0.01828561456866;
Q_Diabetes_Predictionno_diabetes  =     0.84536378027347;
Q_Diabetes_Predictiondiabetes  =     0.13635060515786;
Q_Diabetes_Predictionprediabetes  =     0.01828561456866;
V_Diabetes_Predictionno_diabetes  =     0.84536887766125;
V_Diabetes_Predictiondiabetes  =     0.13633266299921;
V_Diabetes_Predictionprediabetes  =     0.01829845933952;
I_Diabetes_Prediction  = 'NO DIABETES' ;
U_Diabetes_Prediction  = 'no diabetes' ;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
