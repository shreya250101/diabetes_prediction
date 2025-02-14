*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Diabetes_Prediction $ 11;
label I_Diabetes_Prediction = 'Into: Diabetes_Prediction' ;
*** Target Values;
array REG4DRF [3] $11 _temporary_ ('PREDIABETES' 'NO DIABETES' 'DIABETES' );
label U_Diabetes_Prediction = 'Unnormalized Into: Diabetes_Prediction' ;
length U_Diabetes_Prediction $ 11;
*** Unnormalized target values;
array REG4DRU[3] $ 11 _temporary_ ('prediabetes'  'no diabetes'  
'diabetes   ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check Age for missing values ;
if missing( Age ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check BMI for missing values ;
if missing( BMI ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Generate dummy variables for CholCheck ;
drop _2_0 ;
if missing( CholCheck ) then do;
   _2_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( CholCheck , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      _2_0 = -1;
   end;
   else if _dm12 = '0'  then do;
      _2_0 = 1;
   end;
   else do;
      _2_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Education ;
drop _4_0 _4_1 _4_2 _4_3 _4_4 ;
*** encoding is sparse, initialize to zero;
_4_0 = 0;
_4_1 = 0;
_4_2 = 0;
_4_3 = 0;
_4_4 = 0;
if missing( Education ) then do;
   _4_0 = .;
   _4_1 = .;
   _4_2 = .;
   _4_3 = .;
   _4_4 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Education , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '3'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 = '1'  then do;
            _4_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               _4_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            _4_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 <= '5'  then do;
         if _dm12 = '4'  then do;
            _4_3 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               _4_4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '6'  then do;
            _4_0 = -1;
            _4_1 = -1;
            _4_2 = -1;
            _4_3 = -1;
            _4_4 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _4_0 = .;
      _4_1 = .;
      _4_2 = .;
      _4_3 = .;
      _4_4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GenHlth ;
drop _6_0 _6_1 _6_2 _6_3 ;
*** encoding is sparse, initialize to zero;
_6_0 = 0;
_6_1 = 0;
_6_2 = 0;
_6_3 = 0;
if missing( GenHlth ) then do;
   _6_0 = .;
   _6_1 = .;
   _6_2 = .;
   _6_3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GenHlth , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '3'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 = '1'  then do;
            _6_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               _6_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            _6_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '4'  then do;
         _6_3 = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '5'  then do;
            _6_0 = -1;
            _6_1 = -1;
            _6_2 = -1;
            _6_3 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _6_0 = .;
      _6_1 = .;
      _6_2 = .;
      _6_3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HeartDiseaseorAttack ;
drop _7_0 ;
if missing( HeartDiseaseorAttack ) then do;
   _7_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HeartDiseaseorAttack , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _7_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _7_0 = -1;
   end;
   else do;
      _7_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighBP ;
drop _8_0 ;
if missing( HighBP ) then do;
   _8_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighBP , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _8_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _8_0 = -1;
   end;
   else do;
      _8_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighChol ;
drop _9_0 ;
if missing( HighChol ) then do;
   _9_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighChol , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _9_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _9_0 = -1;
   end;
   else do;
      _9_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HvyAlcoholConsump ;
drop _10_0 ;
if missing( HvyAlcoholConsump ) then do;
   _10_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HvyAlcoholConsump , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _10_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _10_0 = -1;
   end;
   else do;
      _10_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Income ;
drop _11_0 _11_1 _11_2 _11_3 _11_4 _11_5 _11_6 ;
*** encoding is sparse, initialize to zero;
_11_0 = 0;
_11_1 = 0;
_11_2 = 0;
_11_3 = 0;
_11_4 = 0;
_11_5 = 0;
_11_6 = 0;
if missing( Income ) then do;
   _11_0 = .;
   _11_1 = .;
   _11_2 = .;
   _11_3 = .;
   _11_4 = .;
   _11_5 = .;
   _11_6 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Income , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 = '1'  then do;
            _11_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               _11_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            _11_2 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               _11_3 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            _11_4 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               _11_5 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            _11_6 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               _11_0 = -1;
               _11_1 = -1;
               _11_2 = -1;
               _11_3 = -1;
               _11_4 = -1;
               _11_5 = -1;
               _11_6 = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _11_0 = .;
      _11_1 = .;
      _11_2 = .;
      _11_3 = .;
      _11_4 = .;
      _11_5 = .;
      _11_6 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for NoDocbcCost ;
drop _13_0 ;
if missing( NoDocbcCost ) then do;
   _13_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( NoDocbcCost , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _13_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _13_0 = -1;
   end;
   else do;
      _13_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for PhysActivity ;
drop _14_0 ;
if missing( PhysActivity ) then do;
   _14_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( PhysActivity , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      _14_0 = -1;
   end;
   else if _dm12 = '0'  then do;
      _14_0 = 1;
   end;
   else do;
      _14_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Sex ;
drop _16_0 ;
if missing( Sex ) then do;
   _16_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Sex , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _16_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _16_0 = -1;
   end;
   else do;
      _16_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Stroke ;
drop _18_0 ;
if missing( Stroke ) then do;
   _18_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Stroke , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _18_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _18_0 = -1;
   end;
   else do;
      _18_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.0181482774;
   _P1 = 0.8452784564;
   _P2 = 0.1365732662;
   goto REG4DR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0  _LP1;
_LP0 = 0;
_LP1 = 0;

***  Effect: Age ;
_TEMP = Age ;
_LP0 = _LP0 + (   -0.00634966167762 * _TEMP);
_LP1 = _LP1 + (   -0.13955929865491 * _TEMP);

***  Effect: BMI ;
_TEMP = BMI ;
_LP0 = _LP0 + (   -0.01788766355146 * _TEMP);
_LP1 = _LP1 + (   -0.08473865141961 * _TEMP);

***  Effect: CholCheck ;
_TEMP = 1;
_LP0 = _LP0 + (     0.1332727295884) * _TEMP * _2_0;
_LP1 = _LP1 + (     0.5324265531954) * _TEMP * _2_0;

***  Effect: Education ;
_TEMP = 1;
_LP0 = _LP0 + (   -2.68226741524382) * _TEMP * _4_0;
_LP1 = _LP1 + (      0.232608222224) * _TEMP * _4_0;
_LP0 = _LP0 + (    0.56308564513593) * _TEMP * _4_1;
_LP1 = _LP1 + (   -0.23546112288521) * _TEMP * _4_1;
_LP0 = _LP0 + (    0.66429709087999) * _TEMP * _4_2;
_LP1 = _LP1 + (   -0.01928747995543) * _TEMP * _4_2;
_LP0 = _LP0 + (    0.55824676360608) * _TEMP * _4_3;
_LP1 = _LP1 + (    0.05043446680594) * _TEMP * _4_3;
_LP0 = _LP0 + (    0.43200199535289) * _TEMP * _4_4;
_LP1 = _LP1 + (   -0.07321245305684) * _TEMP * _4_4;

***  Effect: GenHlth ;
_TEMP = 1;
_LP0 = _LP0 + (    0.53721945285699) * _TEMP * _6_0;
_LP1 = _LP1 + (    1.18358234473381) * _TEMP * _6_0;
_LP0 = _LP0 + (    0.16013978652761) * _TEMP * _6_1;
_LP1 = _LP1 + (    0.46025651171941) * _TEMP * _6_1;
_LP0 = _LP0 + (   -0.09762702749653) * _TEMP * _6_2;
_LP1 = _LP1 + (   -0.21599298850835) * _TEMP * _6_2;
_LP0 = _LP0 + (   -0.21882394362431) * _TEMP * _6_3;
_LP1 = _LP1 + (   -0.65356742384152) * _TEMP * _6_3;

***  Effect: HeartDiseaseorAttack ;
_TEMP = 1;
_LP0 = _LP0 + (    0.13093426553686) * _TEMP * _7_0;
_LP1 = _LP1 + (    0.09941554770241) * _TEMP * _7_0;

***  Effect: HighBP ;
_TEMP = 1;
_LP0 = _LP0 + (    0.17010799551256) * _TEMP * _8_0;
_LP1 = _LP1 + (    0.34278333675656) * _TEMP * _8_0;

***  Effect: HighChol ;
_TEMP = 1;
_LP0 = _LP0 + (    0.03781517953112) * _TEMP * _9_0;
_LP1 = _LP1 + (     0.3002444621049) * _TEMP * _9_0;

***  Effect: HvyAlcoholConsump ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.21645928857521) * _TEMP * _10_0;
_LP1 = _LP1 + (   -0.37032041482256) * _TEMP * _10_0;

***  Effect: Income ;
_TEMP = 1;
_LP0 = _LP0 + (    0.09700198649602) * _TEMP * _11_0;
_LP1 = _LP1 + (   -0.20860179101213) * _TEMP * _11_0;
_LP0 = _LP0 + (   -0.05694245951298) * _TEMP * _11_1;
_LP1 = _LP1 + (   -0.10715876509009) * _TEMP * _11_1;
_LP0 = _LP0 + (   -0.09020011680377) * _TEMP * _11_2;
_LP1 = _LP1 + (   -0.08488831299753) * _TEMP * _11_2;
_LP0 = _LP0 + (   -0.01745667285938) * _TEMP * _11_3;
_LP1 = _LP1 + (   -0.05888776297833) * _TEMP * _11_3;
_LP0 = _LP0 + (   -0.05385446372862) * _TEMP * _11_4;
_LP1 = _LP1 + (    0.03754927611468) * _TEMP * _11_4;
_LP0 = _LP0 + (    0.02897302442685) * _TEMP * _11_5;
_LP1 = _LP1 + (    0.06802623081806) * _TEMP * _11_5;
_LP0 = _LP0 + (    0.12008004487115) * _TEMP * _11_6;
_LP1 = _LP1 + (    0.11667940018547) * _TEMP * _11_6;

***  Effect: NoDocbcCost ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.13857250766024) * _TEMP * _13_0;
_LP1 = _LP1 + (    0.03585134537366) * _TEMP * _13_0;

***  Effect: PhysActivity ;
_TEMP = 1;
_LP0 = _LP0 + (    0.00284584539469) * _TEMP * _14_0;
_LP1 = _LP1 + (   -0.03184631867726) * _TEMP * _14_0;

***  Effect: Sex ;
_TEMP = 1;
_LP0 = _LP0 + (    0.11660959113644) * _TEMP * _16_0;
_LP1 = _LP1 + (    0.13783962471319) * _TEMP * _16_0;

***  Effect: Stroke ;
_TEMP = 1;
_LP0 = _LP0 + (    0.14197276832459) * _TEMP * _18_0;
_LP1 = _LP1 + (     0.0964781962528) * _TEMP * _18_0;

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -1.54007133909134 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =     6.16197657645389 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP0 = exp(_LP0 - _LPMAX);
_LP1 = exp(_LP1 - _LPMAX);
_LPMAX = exp(-_LPMAX);
_P2 = 1 / (_LPMAX + _LP0 + _LP1);
_P0 = _LP0 * _P2;
_P1 = _LP1 * _P2;
_P2 = _LPMAX * _P2;

REG4DR1:


*** Posterior Probabilities and Predicted Level;
label P_Diabetes_Predictionprediabetes = 
'Predicted: Diabetes_Prediction=prediabetes' ;
label P_Diabetes_Predictionno_diabetes = 
'Predicted: Diabetes_Prediction=no diabetes' ;
label P_Diabetes_Predictiondiabetes = 
'Predicted: Diabetes_Prediction=diabetes' ;
P_Diabetes_Predictionprediabetes = _P0;
_MAXP = _P0;
_IY = 1;
P_Diabetes_Predictionno_diabetes = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
P_Diabetes_Predictiondiabetes = _P2;
if (_P2 >  _MAXP + 1E-8) then do;
   _MAXP = _P2;
   _IY = 3;
end;
I_Diabetes_Prediction = REG4DRF[_IY];
U_Diabetes_Prediction = REG4DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
