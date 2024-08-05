****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_Diabetes_Prediction  $   11; 
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
label R_Diabetes_Predictionno_diabetes = 
'Residual: Diabetes_Prediction=no diabetes' ;
label R_Diabetes_Predictiondiabetes = 
'Residual: Diabetes_Prediction=diabetes' ;
label R_Diabetes_Predictionprediabetes = 
'Residual: Diabetes_Prediction=prediabetes' ;
label F_Diabetes_Prediction = 'From: Diabetes_Prediction' ;
label I_Diabetes_Prediction = 'Into: Diabetes_Prediction' ;
label U_Diabetes_Prediction = 'Unnormalized Into: Diabetes_Prediction' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_11 $     11; DROP _ARBFMT_11; 
_ARBFMT_11 = ' '; /* Initialize to avoid warning. */


_ARBFMT_11 = PUT( Diabetes_Prediction , $11.);
 %DMNORMCP( _ARBFMT_11, F_Diabetes_Prediction );

******             ASSIGN OBSERVATION TO NODE             ******;
_NODE_  =                    1;
_LEAF_  =                    1;
P_Diabetes_Predictionno_diabetes  =     0.84527845639926;
P_Diabetes_Predictiondiabetes  =     0.13657326619135;
P_Diabetes_Predictionprediabetes  =     0.01814827740938;
Q_Diabetes_Predictionno_diabetes  =     0.84527845639926;
Q_Diabetes_Predictiondiabetes  =     0.13657326619135;
Q_Diabetes_Predictionprediabetes  =     0.01814827740938;
V_Diabetes_Predictionno_diabetes  =     0.84528577839086;
V_Diabetes_Predictiondiabetes  =     0.13658196081038;
V_Diabetes_Predictionprediabetes  =     0.01813226079875;
I_Diabetes_Prediction  = 'NO DIABETES' ;
U_Diabetes_Prediction  = 'no diabetes' ;

*****  RESIDUALS R_ *************;
IF  F_Diabetes_Prediction  NE 'NO DIABETES' 
AND F_Diabetes_Prediction  NE 'DIABETES' 
AND F_Diabetes_Prediction  NE 'PREDIABETES'  THEN DO; 
        R_Diabetes_Predictionno_diabetes  = .;
        R_Diabetes_Predictiondiabetes  = .;
        R_Diabetes_Predictionprediabetes  = .;
 END;
 ELSE DO;
       R_Diabetes_Predictionno_diabetes  =  -P_Diabetes_Predictionno_diabetes
         ;
       R_Diabetes_Predictiondiabetes  =  -P_Diabetes_Predictiondiabetes ;
       R_Diabetes_Predictionprediabetes  =  -P_Diabetes_Predictionprediabetes
         ;
       SELECT( F_Diabetes_Prediction  );
          WHEN( 'NO DIABETES'  ) R_Diabetes_Predictionno_diabetes  = 
        R_Diabetes_Predictionno_diabetes  +1;
          WHEN( 'DIABETES'  ) R_Diabetes_Predictiondiabetes  = 
        R_Diabetes_Predictiondiabetes  +1;
          WHEN( 'PREDIABETES'  ) R_Diabetes_Predictionprediabetes  = 
        R_Diabetes_Predictionprediabetes  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

