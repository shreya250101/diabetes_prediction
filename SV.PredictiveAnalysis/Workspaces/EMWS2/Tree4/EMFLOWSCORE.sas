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
_ARBFMT_12 = PUT( GenHlth , BEST.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('3' ) THEN DO;
  _NODE_  =                    3;
  _LEAF_  =                    2;
  P_Diabetes_Predictionno_diabetes  =     0.79996648653177;
  P_Diabetes_Predictiondiabetes  =     0.17657408571069;
  P_Diabetes_Predictionprediabetes  =     0.02345942775753;
  Q_Diabetes_Predictionno_diabetes  =     0.79996648653177;
  Q_Diabetes_Predictiondiabetes  =     0.17657408571069;
  Q_Diabetes_Predictionprediabetes  =     0.02345942775753;
  V_Diabetes_Predictionno_diabetes  =     0.80150064393303;
  V_Diabetes_Predictiondiabetes  =     0.17526177277563;
  V_Diabetes_Predictionprediabetes  =     0.02323758329133;
  I_Diabetes_Prediction  = 'NO DIABETES' ;
  U_Diabetes_Prediction  = 'no diabetes' ;
  END;
ELSE IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
  _ARBFMT_12 = PUT( HighBP , BEST.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('0' ) THEN DO;
    _NODE_  =                   10;
    _LEAF_  =                    9;
    P_Diabetes_Predictionno_diabetes  =     0.79806393516434;
    P_Diabetes_Predictiondiabetes  =     0.17402071139126;
    P_Diabetes_Predictionprediabetes  =     0.02791535344439;
    Q_Diabetes_Predictionno_diabetes  =     0.79806393516434;
    Q_Diabetes_Predictiondiabetes  =     0.17402071139126;
    Q_Diabetes_Predictionprediabetes  =     0.02791535344439;
    V_Diabetes_Predictionno_diabetes  =     0.78993055555555;
    V_Diabetes_Predictiondiabetes  =               0.1875;
    V_Diabetes_Predictionprediabetes  =     0.02256944444444;
    I_Diabetes_Prediction  = 'NO DIABETES' ;
    U_Diabetes_Prediction  = 'no diabetes' ;
    END;
  ELSE DO;
    IF  NOT MISSING(BMI ) AND
                      27.5 <= BMI  AND
      BMI  <                 33.5 THEN DO;
      _NODE_  =                   24;
      _LEAF_  =                    4;
      P_Diabetes_Predictionno_diabetes  =     0.55485161720573;
      P_Diabetes_Predictiondiabetes  =     0.40780260086695;
      P_Diabetes_Predictionprediabetes  =      0.0373457819273;
      Q_Diabetes_Predictionno_diabetes  =     0.55485161720573;
      Q_Diabetes_Predictiondiabetes  =     0.40780260086695;
      Q_Diabetes_Predictionprediabetes  =      0.0373457819273;
      V_Diabetes_Predictionno_diabetes  =     0.55328798185941;
      V_Diabetes_Predictiondiabetes  =      0.4063492063492;
      V_Diabetes_Predictionprediabetes  =     0.04036281179138;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    ELSE IF  NOT MISSING(BMI ) AND
                      33.5 <= BMI  THEN DO;
      _ARBFMT_12 = PUT( HighChol , BEST.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        _NODE_  =                   66;
        _LEAF_  =                    8;
        P_Diabetes_Predictionno_diabetes  =     0.59363957597173;
        P_Diabetes_Predictiondiabetes  =     0.37691401648998;
        P_Diabetes_Predictionprediabetes  =     0.02944640753828;
        Q_Diabetes_Predictionno_diabetes  =     0.59363957597173;
        Q_Diabetes_Predictiondiabetes  =     0.37691401648998;
        Q_Diabetes_Predictionprediabetes  =     0.02944640753828;
        V_Diabetes_Predictionno_diabetes  =     0.53738317757009;
        V_Diabetes_Predictiondiabetes  =     0.41744548286604;
        V_Diabetes_Predictionprediabetes  =     0.04517133956386;
        I_Diabetes_Prediction  = 'NO DIABETES' ;
        U_Diabetes_Prediction  = 'no diabetes' ;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( GenHlth , BEST.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('5' ) THEN DO;
          _NODE_  =                  133;
          _LEAF_  =                    7;
          P_Diabetes_Predictionno_diabetes  =     0.30464716006884;
          P_Diabetes_Predictiondiabetes  =      0.6643717728055;
          P_Diabetes_Predictionprediabetes  =     0.03098106712564;
          Q_Diabetes_Predictionno_diabetes  =     0.30464716006884;
          Q_Diabetes_Predictiondiabetes  =      0.6643717728055;
          Q_Diabetes_Predictionprediabetes  =     0.03098106712564;
          V_Diabetes_Predictionno_diabetes  =     0.35338345864661;
          V_Diabetes_Predictiondiabetes  =     0.60150375939849;
          V_Diabetes_Predictionprediabetes  =     0.04511278195488;
          I_Diabetes_Prediction  = 'DIABETES' ;
          U_Diabetes_Prediction  = 'diabetes' ;
          END;
        ELSE DO;
          _ARBFMT_12 = PUT( HvyAlcoholConsump , BEST.);
           %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('1' ) THEN DO;
            _NODE_  =                  210;
            _LEAF_  =                    6;
            P_Diabetes_Predictionno_diabetes  =     0.66666666666666;
            P_Diabetes_Predictiondiabetes  =     0.25641025641025;
            P_Diabetes_Predictionprediabetes  =     0.07692307692307;
            Q_Diabetes_Predictionno_diabetes  =     0.66666666666666;
            Q_Diabetes_Predictiondiabetes  =     0.25641025641025;
            Q_Diabetes_Predictionprediabetes  =     0.07692307692307;
            V_Diabetes_Predictionno_diabetes  =                 0.56;
            V_Diabetes_Predictiondiabetes  =                 0.36;
            V_Diabetes_Predictionprediabetes  =                 0.08;
            I_Diabetes_Prediction  = 'NO DIABETES' ;
            U_Diabetes_Prediction  = 'no diabetes' ;
            END;
          ELSE DO;
            _NODE_  =                  209;
            _LEAF_  =                    5;
            P_Diabetes_Predictionno_diabetes  =     0.39806607574536;
            P_Diabetes_Predictiondiabetes  =     0.55600322320709;
            P_Diabetes_Predictionprediabetes  =     0.04593070104754;
            Q_Diabetes_Predictionno_diabetes  =     0.39806607574536;
            Q_Diabetes_Predictiondiabetes  =     0.55600322320709;
            Q_Diabetes_Predictionprediabetes  =     0.04593070104754;
            V_Diabetes_Predictionno_diabetes  =     0.39978331527627;
            V_Diabetes_Predictiondiabetes  =     0.56013001083423;
            V_Diabetes_Predictionprediabetes  =     0.04008667388949;
            I_Diabetes_Prediction  = 'DIABETES' ;
            U_Diabetes_Prediction  = 'diabetes' ;
            END;
          END;
        END;
      END;
    ELSE DO;
      _NODE_  =                   23;
      _LEAF_  =                    3;
      P_Diabetes_Predictionno_diabetes  =     0.69124719461365;
      P_Diabetes_Predictiondiabetes  =     0.28150048092337;
      P_Diabetes_Predictionprediabetes  =     0.02725232446296;
      Q_Diabetes_Predictionno_diabetes  =     0.69124719461365;
      Q_Diabetes_Predictiondiabetes  =     0.28150048092337;
      Q_Diabetes_Predictionprediabetes  =     0.02725232446296;
      V_Diabetes_Predictionno_diabetes  =     0.69792108612643;
      V_Diabetes_Predictiondiabetes  =     0.27577428935086;
      V_Diabetes_Predictionprediabetes  =     0.02630462452269;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    END;
  END;
ELSE DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_Diabetes_Predictionno_diabetes  =     0.93206610035742;
  P_Diabetes_Predictiondiabetes  =     0.05672376177876;
  P_Diabetes_Predictionprediabetes  =      0.0112101378638;
  Q_Diabetes_Predictionno_diabetes  =     0.93206610035742;
  Q_Diabetes_Predictiondiabetes  =     0.05672376177876;
  Q_Diabetes_Predictionprediabetes  =      0.0112101378638;
  V_Diabetes_Predictionno_diabetes  =     0.93139956041234;
  V_Diabetes_Predictiondiabetes  =     0.05711543819459;
  V_Diabetes_Predictionprediabetes  =     0.01148500139305;
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
