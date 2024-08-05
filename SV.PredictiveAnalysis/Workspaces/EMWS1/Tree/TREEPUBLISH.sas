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
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( HighBP , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
  _ARBFMT_12 = PUT( GenHlth , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('1' ,'2' ) THEN DO;
    _NODE_  =                    4;
    _LEAF_  =                    1;
    P_Diabetes_Predictionno_diabetes  =      0.8602142251676;
    P_Diabetes_Predictiondiabetes  =     0.12129151575864;
    P_Diabetes_Predictionprediabetes  =     0.01849425907374;
    Q_Diabetes_Predictionno_diabetes  =      0.8602142251676;
    Q_Diabetes_Predictiondiabetes  =     0.12129151575864;
    Q_Diabetes_Predictionprediabetes  =     0.01849425907374;
    V_Diabetes_Predictionno_diabetes  =     0.85775862068965;
    V_Diabetes_Predictiondiabetes  =       0.121921182266;
    V_Diabetes_Predictionprediabetes  =     0.02032019704433;
    I_Diabetes_Prediction  = 'NO DIABETES' ;
    U_Diabetes_Prediction  = 'no diabetes' ;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( HighChol , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                    6;
      P_Diabetes_Predictionno_diabetes  =     0.75577902572809;
      P_Diabetes_Predictiondiabetes  =       0.217709285621;
      P_Diabetes_Predictionprediabetes  =      0.0265116886509;
      Q_Diabetes_Predictionno_diabetes  =     0.75577902572809;
      Q_Diabetes_Predictiondiabetes  =       0.217709285621;
      Q_Diabetes_Predictionprediabetes  =      0.0265116886509;
      V_Diabetes_Predictionno_diabetes  =     0.74675437078068;
      V_Diabetes_Predictiondiabetes  =     0.22762679591483;
      V_Diabetes_Predictionprediabetes  =     0.02561883330448;
      I_Diabetes_Prediction  = 'NO DIABETES' ;
      U_Diabetes_Prediction  = 'no diabetes' ;
      END;
    ELSE DO;
      IF  NOT MISSING(BMI ) AND 
                        30.5 <= BMI  THEN DO;
        _ARBFMT_12 = PUT( GenHlth , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('4' ,'5' ) THEN DO;
          IF  NOT MISSING(Age ) AND 
            Age  <                  6.5 THEN DO;
            _NODE_  =                   86;
            _LEAF_  =                    4;
            P_Diabetes_Predictionno_diabetes  =     0.54255319148936;
            P_Diabetes_Predictiondiabetes  =     0.40691489361702;
            P_Diabetes_Predictionprediabetes  =     0.05053191489361;
            Q_Diabetes_Predictionno_diabetes  =     0.54255319148936;
            Q_Diabetes_Predictiondiabetes  =     0.40691489361702;
            Q_Diabetes_Predictionprediabetes  =     0.05053191489361;
            V_Diabetes_Predictionno_diabetes  =     0.48275862068965;
            V_Diabetes_Predictiondiabetes  =     0.46743295019157;
            V_Diabetes_Predictionprediabetes  =     0.04980842911877;
            I_Diabetes_Prediction  = 'NO DIABETES' ;
            U_Diabetes_Prediction  = 'no diabetes' ;
            END;
          ELSE DO;
            _NODE_  =                   87;
            _LEAF_  =                    5;
            P_Diabetes_Predictionno_diabetes  =     0.40611178126256;
            P_Diabetes_Predictiondiabetes  =     0.55327704061117;
            P_Diabetes_Predictionprediabetes  =     0.04061117812625;
            Q_Diabetes_Predictionno_diabetes  =     0.40611178126256;
            Q_Diabetes_Predictiondiabetes  =     0.55327704061117;
            Q_Diabetes_Predictionprediabetes  =     0.04061117812625;
            V_Diabetes_Predictionno_diabetes  =     0.40021231422505;
            V_Diabetes_Predictiondiabetes  =      0.5552016985138;
            V_Diabetes_Predictionprediabetes  =     0.04458598726114;
            I_Diabetes_Prediction  = 'DIABETES' ;
            U_Diabetes_Prediction  = 'diabetes' ;
            END;
          END;
        ELSE DO;
          _NODE_  =                   42;
          _LEAF_  =                    3;
          P_Diabetes_Predictionno_diabetes  =     0.59073107049608;
          P_Diabetes_Predictiondiabetes  =     0.37206266318537;
          P_Diabetes_Predictionprediabetes  =     0.03720626631853;
          Q_Diabetes_Predictionno_diabetes  =     0.59073107049608;
          Q_Diabetes_Predictiondiabetes  =     0.37206266318537;
          Q_Diabetes_Predictionprediabetes  =     0.03720626631853;
          V_Diabetes_Predictionno_diabetes  =     0.59310344827586;
          V_Diabetes_Predictiondiabetes  =     0.36896551724137;
          V_Diabetes_Predictionprediabetes  =     0.03793103448275;
          I_Diabetes_Prediction  = 'NO DIABETES' ;
          U_Diabetes_Prediction  = 'no diabetes' ;
          END;
        END;
      ELSE DO;
        _NODE_  =                   20;
        _LEAF_  =                    2;
        P_Diabetes_Predictionno_diabetes  =     0.67413837781808;
        P_Diabetes_Predictiondiabetes  =     0.29411764705882;
        P_Diabetes_Predictionprediabetes  =     0.03174397512308;
        Q_Diabetes_Predictionno_diabetes  =     0.67413837781808;
        Q_Diabetes_Predictiondiabetes  =     0.29411764705882;
        Q_Diabetes_Predictionprediabetes  =     0.03174397512308;
        V_Diabetes_Predictionno_diabetes  =      0.6775692582663;
        V_Diabetes_Predictiondiabetes  =     0.29276139410187;
        V_Diabetes_Predictionprediabetes  =     0.02966934763181;
        I_Diabetes_Prediction  = 'NO DIABETES' ;
        U_Diabetes_Prediction  = 'no diabetes' ;
        END;
      END;
    END;
  END;
ELSE DO;
  _NODE_  =                    3;
  _LEAF_  =                    7;
  P_Diabetes_Predictionno_diabetes  =     0.92794184857124;
  P_Diabetes_Predictiondiabetes  =     0.06043657098087;
  P_Diabetes_Predictionprediabetes  =     0.01162158044788;
  Q_Diabetes_Predictionno_diabetes  =     0.92794184857124;
  Q_Diabetes_Predictiondiabetes  =     0.06043657098087;
  Q_Diabetes_Predictionprediabetes  =     0.01162158044788;
  V_Diabetes_Predictionno_diabetes  =     0.92925292008789;
  V_Diabetes_Predictiondiabetes  =     0.05935584595813;
  V_Diabetes_Predictionprediabetes  =     0.01139123395397;
  I_Diabetes_Prediction  = 'NO DIABETES' ;
  U_Diabetes_Prediction  = 'no diabetes' ;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

