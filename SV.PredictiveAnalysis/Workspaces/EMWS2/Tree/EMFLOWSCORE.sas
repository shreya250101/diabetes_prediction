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
_ARBFMT_12 = PUT( HighBP , BEST.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
  _ARBFMT_12 = PUT( GenHlth , BEST.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
    IF  NOT MISSING(BMI ) AND
      BMI  <                 28.5 THEN DO;
      _NODE_  =                   10;
      _LEAF_  =                    2;
      P_Diabetes_Predictionno_diabetes  =     0.67987971569163;
      P_Diabetes_Predictiondiabetes  =     0.29168944778567;
      P_Diabetes_Predictionprediabetes  =     0.02843083652268;
      Q_Diabetes_Predictionno_diabetes  =     0.67987971569163;
      Q_Diabetes_Predictiondiabetes  =     0.29168944778567;
      Q_Diabetes_Predictionprediabetes  =     0.02843083652268;
      V_Diabetes_Predictionno_diabetes  =     0.68299817184643;
      V_Diabetes_Predictiondiabetes  =     0.28957952468007;
      V_Diabetes_Predictionprediabetes  =     0.02742230347349;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( HighChol , BEST.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                    5;
        P_Diabetes_Predictionno_diabetes  =     0.62299293513166;
        P_Diabetes_Predictiondiabetes  =     0.34489402697495;
        P_Diabetes_Predictionprediabetes  =     0.03211303789338;
        Q_Diabetes_Predictionno_diabetes  =     0.62299293513166;
        Q_Diabetes_Predictiondiabetes  =     0.34489402697495;
        Q_Diabetes_Predictionprediabetes  =     0.03211303789338;
        V_Diabetes_Predictionno_diabetes  =      0.5807560137457;
        V_Diabetes_Predictiondiabetes  =     0.37800687285223;
        V_Diabetes_Predictionprediabetes  =     0.04123711340206;
        I_Diabetes_Prediction  = 'NO DIABETES' ;
        U_Diabetes_Prediction  = 'no diabetes' ;
        END;
      ELSE DO;
        IF  NOT MISSING(BMI ) AND
          BMI  <                 33.5 THEN DO;
          _NODE_  =                   44;
          _LEAF_  =                    3;
          P_Diabetes_Predictionno_diabetes  =     0.49486301369863;
          P_Diabetes_Predictiondiabetes  =     0.46632420091324;
          P_Diabetes_Predictionprediabetes  =     0.03881278538812;
          Q_Diabetes_Predictionno_diabetes  =     0.49486301369863;
          Q_Diabetes_Predictiondiabetes  =     0.46632420091324;
          Q_Diabetes_Predictionprediabetes  =     0.03881278538812;
          V_Diabetes_Predictionno_diabetes  =      0.5103448275862;
          V_Diabetes_Predictiondiabetes  =     0.44597701149425;
          V_Diabetes_Predictionprediabetes  =     0.04367816091954;
          I_Diabetes_Prediction  = 'NO DIABETES' ;
          U_Diabetes_Prediction  = 'no diabetes' ;
          END;
        ELSE DO;
          _NODE_  =                   45;
          _LEAF_  =                    4;
          P_Diabetes_Predictionno_diabetes  =     0.37452982267598;
          P_Diabetes_Predictiondiabetes  =     0.58355722729715;
          P_Diabetes_Predictionprediabetes  =     0.04191295002686;
          Q_Diabetes_Predictionno_diabetes  =     0.37452982267598;
          Q_Diabetes_Predictiondiabetes  =     0.58355722729715;
          Q_Diabetes_Predictionprediabetes  =     0.04191295002686;
          V_Diabetes_Predictionno_diabetes  =     0.38901262063845;
          V_Diabetes_Predictiondiabetes  =     0.56867112100965;
          V_Diabetes_Predictionprediabetes  =     0.04231625835189;
          I_Diabetes_Prediction  = 'DIABETES' ;
          U_Diabetes_Prediction  = 'diabetes' ;
          END;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    4;
    _LEAF_  =                    1;
    P_Diabetes_Predictionno_diabetes  =     0.79015442502155;
    P_Diabetes_Predictiondiabetes  =     0.18531002586815;
    P_Diabetes_Predictionprediabetes  =     0.02453554911029;
    Q_Diabetes_Predictionno_diabetes  =     0.79015442502155;
    Q_Diabetes_Predictiondiabetes  =     0.18531002586815;
    Q_Diabetes_Predictionprediabetes  =     0.02453554911029;
    V_Diabetes_Predictionno_diabetes  =     0.79015828240087;
    V_Diabetes_Predictiondiabetes  =     0.18581204617875;
    V_Diabetes_Predictionprediabetes  =     0.02402967142036;
    I_Diabetes_Prediction  = 'NO DIABETES' ;
    U_Diabetes_Prediction  = 'no diabetes' ;
    END;
  END;
ELSE DO;
  _NODE_  =                    3;
  _LEAF_  =                    6;
  P_Diabetes_Predictionno_diabetes  =     0.92927972104173;
  P_Diabetes_Predictiondiabetes  =     0.05892993352947;
  P_Diabetes_Predictionprediabetes  =     0.01179034542878;
  Q_Diabetes_Predictionno_diabetes  =     0.92927972104173;
  Q_Diabetes_Predictiondiabetes  =     0.05892993352947;
  Q_Diabetes_Predictionprediabetes  =     0.01179034542878;
  V_Diabetes_Predictionno_diabetes  =     0.92835387962291;
  V_Diabetes_Predictiondiabetes  =     0.05992748368382;
  V_Diabetes_Predictionprediabetes  =     0.01171863669325;
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
 
drop _LEAF_;
