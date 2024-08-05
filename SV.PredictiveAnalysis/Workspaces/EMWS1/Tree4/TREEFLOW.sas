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
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


_ARBFMT_11 = PUT( Diabetes_Prediction , $11.);
 %DMNORMCP( _ARBFMT_11, F_Diabetes_Prediction );

******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( GenHlth , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('3' ) THEN DO;
  _NODE_  =                    3;
  _LEAF_  =                    2;
  P_Diabetes_Predictionno_diabetes  =     0.80035150855755;
  P_Diabetes_Predictiondiabetes  =     0.17688412771477;
  P_Diabetes_Predictionprediabetes  =     0.02276436372766;
  Q_Diabetes_Predictionno_diabetes  =     0.80035150855755;
  Q_Diabetes_Predictiondiabetes  =     0.17688412771477;
  Q_Diabetes_Predictionprediabetes  =     0.02276436372766;
  V_Diabetes_Predictionno_diabetes  =     0.80127097385584;
  V_Diabetes_Predictiondiabetes  =     0.17704442834048;
  V_Diabetes_Predictionprediabetes  =     0.02168459780366;
  I_Diabetes_Prediction  = 'NO DIABETES' ;
  U_Diabetes_Prediction  = 'no diabetes' ;
  END;
ELSE IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
  _ARBFMT_12 = PUT( HighBP , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('0' ) THEN DO;
    _NODE_  =                   10;
    _LEAF_  =                    7;
    P_Diabetes_Predictionno_diabetes  =     0.79789335088874;
    P_Diabetes_Predictiondiabetes  =     0.17555409260478;
    P_Diabetes_Predictionprediabetes  =     0.02655255650647;
    Q_Diabetes_Predictionno_diabetes  =     0.79789335088874;
    Q_Diabetes_Predictiondiabetes  =     0.17555409260478;
    Q_Diabetes_Predictionprediabetes  =     0.02655255650647;
    V_Diabetes_Predictionno_diabetes  =     0.79485697775209;
    V_Diabetes_Predictiondiabetes  =     0.17885004334007;
    V_Diabetes_Predictionprediabetes  =     0.02629297890783;
    I_Diabetes_Prediction  = 'NO DIABETES' ;
    U_Diabetes_Prediction  = 'no diabetes' ;
    END;
  ELSE DO;
    IF  NOT MISSING(BMI ) AND 
      BMI  <                 23.5 THEN DO;
      _NODE_  =                   23;
      _LEAF_  =                    3;
      P_Diabetes_Predictionno_diabetes  =      0.7676935886761;
      P_Diabetes_Predictiondiabetes  =     0.21315570358034;
      P_Diabetes_Predictionprediabetes  =     0.01915070774354;
      Q_Diabetes_Predictionno_diabetes  =      0.7676935886761;
      Q_Diabetes_Predictiondiabetes  =     0.21315570358034;
      Q_Diabetes_Predictionprediabetes  =     0.01915070774354;
      V_Diabetes_Predictionno_diabetes  =     0.79161676646706;
      V_Diabetes_Predictiondiabetes  =     0.19281437125748;
      V_Diabetes_Predictionprediabetes  =     0.01556886227544;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    ELSE IF  NOT MISSING(BMI ) AND 
                      32.5 <= BMI  THEN DO;
      _ARBFMT_12 = PUT( HighChol , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        _NODE_  =                   65;
        _LEAF_  =                    6;
        P_Diabetes_Predictionno_diabetes  =     0.58539094650205;
        P_Diabetes_Predictiondiabetes  =     0.36419753086419;
        P_Diabetes_Predictionprediabetes  =     0.05041152263374;
        Q_Diabetes_Predictionno_diabetes  =     0.58539094650205;
        Q_Diabetes_Predictiondiabetes  =     0.36419753086419;
        Q_Diabetes_Predictionprediabetes  =     0.05041152263374;
        V_Diabetes_Predictionno_diabetes  =     0.57202216066482;
        V_Diabetes_Predictiondiabetes  =     0.39473684210526;
        V_Diabetes_Predictionprediabetes  =     0.03324099722991;
        I_Diabetes_Prediction  = 'NO DIABETES' ;
        U_Diabetes_Prediction  = 'no diabetes' ;
        END;
      ELSE DO;
        _NODE_  =                   64;
        _LEAF_  =                    5;
        P_Diabetes_Predictionno_diabetes  =     0.39981273408239;
        P_Diabetes_Predictiondiabetes  =     0.56039325842696;
        P_Diabetes_Predictionprediabetes  =     0.03979400749063;
        Q_Diabetes_Predictionno_diabetes  =     0.39981273408239;
        Q_Diabetes_Predictiondiabetes  =     0.56039325842696;
        Q_Diabetes_Predictionprediabetes  =     0.03979400749063;
        V_Diabetes_Predictionno_diabetes  =     0.37317073170731;
        V_Diabetes_Predictiondiabetes  =     0.57865853658536;
        V_Diabetes_Predictionprediabetes  =     0.04817073170731;
        I_Diabetes_Prediction  = 'DIABETES' ;
        U_Diabetes_Prediction  = 'diabetes' ;
        END;
      END;
    ELSE DO;
      _NODE_  =                   24;
      _LEAF_  =                    4;
      P_Diabetes_Predictionno_diabetes  =     0.59767687434002;
      P_Diabetes_Predictiondiabetes  =     0.36684266103484;
      P_Diabetes_Predictionprediabetes  =     0.03548046462513;
      Q_Diabetes_Predictionno_diabetes  =     0.59767687434002;
      Q_Diabetes_Predictiondiabetes  =     0.36684266103484;
      Q_Diabetes_Predictionprediabetes  =     0.03548046462513;
      V_Diabetes_Predictionno_diabetes  =     0.59850445786597;
      V_Diabetes_Predictiondiabetes  =     0.36439459303997;
      V_Diabetes_Predictionprediabetes  =     0.03710094909404;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    END;
  END;
ELSE DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_Diabetes_Predictionno_diabetes  =     0.93325532412824;
  P_Diabetes_Predictiondiabetes  =      0.0558389890007;
  P_Diabetes_Predictionprediabetes  =     0.01090568687105;
  Q_Diabetes_Predictionno_diabetes  =     0.93325532412824;
  Q_Diabetes_Predictiondiabetes  =      0.0558389890007;
  Q_Diabetes_Predictionprediabetes  =     0.01090568687105;
  V_Diabetes_Predictionno_diabetes  =      0.9337279950148;
  V_Diabetes_Predictiondiabetes  =     0.05486835955756;
  V_Diabetes_Predictionprediabetes  =     0.01140364542763;
  I_Diabetes_Prediction  = 'NO DIABETES' ;
  U_Diabetes_Prediction  = 'no diabetes' ;
  END;

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

