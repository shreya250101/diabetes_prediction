***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4
      F_Diabetes_Prediction  $ 11
      I_Diabetes_Prediction  $ 11
      U_Diabetes_Prediction  $ 11
;
      label S_Age = 'Standard: Age' ;

      label S_BMI = 'Standard: BMI' ;

      label AnyHealthcare0 = 'Dummy: AnyHealthcare=0' ;

      label CholCheck0 = 'Dummy: CholCheck=0' ;

      label DiffWalk0 = 'Dummy: DiffWalk=0' ;

      label Fruits0 = 'Dummy: Fruits=0' ;

      label HeartDiseaseorAttack0 = 'Dummy: HeartDiseaseorAttack=0' ;

      label HighBP0 = 'Dummy: HighBP=0' ;

      label HighChol0 = 'Dummy: HighChol=0' ;

      label HvyAlcoholConsump0 = 'Dummy: HvyAlcoholConsump=0' ;

      label NoDocbcCost0 = 'Dummy: NoDocbcCost=0' ;

      label PhysActivity0 = 'Dummy: PhysActivity=0' ;

      label Sex0 = 'Dummy: Sex=0' ;

      label Smoker0 = 'Dummy: Smoker=0' ;

      label Stroke0 = 'Dummy: Stroke=0' ;

      label Veggies0 = 'Dummy: Veggies=0' ;

      label Education1 = 'Dummy: Education=1' ;

      label Education2 = 'Dummy: Education=2' ;

      label Education3 = 'Dummy: Education=3' ;

      label Education4 = 'Dummy: Education=4' ;

      label Education5 = 'Dummy: Education=5' ;

      label GenHlth1 = 'Dummy: GenHlth=1' ;

      label GenHlth2 = 'Dummy: GenHlth=2' ;

      label GenHlth3 = 'Dummy: GenHlth=3' ;

      label GenHlth4 = 'Dummy: GenHlth=4' ;

      label Income1 = 'Dummy: Income=1' ;

      label Income2 = 'Dummy: Income=2' ;

      label Income3 = 'Dummy: Income=3' ;

      label Income4 = 'Dummy: Income=4' ;

      label Income5 = 'Dummy: Income=5' ;

      label Income6 = 'Dummy: Income=6' ;

      label Income7 = 'Dummy: Income=7' ;

      label MentHlth0 = 'Dummy: MentHlth=0' ;

      label MentHlth1 = 'Dummy: MentHlth=1' ;

      label MentHlth2 = 'Dummy: MentHlth=2' ;

      label MentHlth3 = 'Dummy: MentHlth=3' ;

      label MentHlth4 = 'Dummy: MentHlth=4' ;

      label MentHlth5 = 'Dummy: MentHlth=5' ;

      label MentHlth6 = 'Dummy: MentHlth=6' ;

      label MentHlth7 = 'Dummy: MentHlth=7' ;

      label MentHlth8 = 'Dummy: MentHlth=8' ;

      label MentHlth9 = 'Dummy: MentHlth=9' ;

      label MentHlth10 = 'Dummy: MentHlth=10' ;

      label MentHlth11 = 'Dummy: MentHlth=11' ;

      label MentHlth12 = 'Dummy: MentHlth=12' ;

      label MentHlth13 = 'Dummy: MentHlth=13' ;

      label MentHlth14 = 'Dummy: MentHlth=14' ;

      label MentHlth15 = 'Dummy: MentHlth=15' ;

      label MentHlth16 = 'Dummy: MentHlth=16' ;

      label MentHlth17 = 'Dummy: MentHlth=17' ;

      label MentHlth18 = 'Dummy: MentHlth=18' ;

      label MentHlth19 = 'Dummy: MentHlth=19' ;

      label MentHlth20 = 'Dummy: MentHlth=20' ;

      label MentHlth21 = 'Dummy: MentHlth=21' ;

      label MentHlth22 = 'Dummy: MentHlth=22' ;

      label MentHlth23 = 'Dummy: MentHlth=23' ;

      label MentHlth24 = 'Dummy: MentHlth=24' ;

      label MentHlth25 = 'Dummy: MentHlth=25' ;

      label MentHlth26 = 'Dummy: MentHlth=26' ;

      label MentHlth27 = 'Dummy: MentHlth=27' ;

      label MentHlth28 = 'Dummy: MentHlth=28' ;

      label MentHlth29 = 'Dummy: MentHlth=29' ;

      label PhysHlth0 = 'Dummy: PhysHlth=0' ;

      label PhysHlth1 = 'Dummy: PhysHlth=1' ;

      label PhysHlth2 = 'Dummy: PhysHlth=2' ;

      label PhysHlth3 = 'Dummy: PhysHlth=3' ;

      label PhysHlth4 = 'Dummy: PhysHlth=4' ;

      label PhysHlth5 = 'Dummy: PhysHlth=5' ;

      label PhysHlth6 = 'Dummy: PhysHlth=6' ;

      label PhysHlth7 = 'Dummy: PhysHlth=7' ;

      label PhysHlth8 = 'Dummy: PhysHlth=8' ;

      label PhysHlth9 = 'Dummy: PhysHlth=9' ;

      label PhysHlth10 = 'Dummy: PhysHlth=10' ;

      label PhysHlth11 = 'Dummy: PhysHlth=11' ;

      label PhysHlth12 = 'Dummy: PhysHlth=12' ;

      label PhysHlth13 = 'Dummy: PhysHlth=13' ;

      label PhysHlth14 = 'Dummy: PhysHlth=14' ;

      label PhysHlth15 = 'Dummy: PhysHlth=15' ;

      label PhysHlth16 = 'Dummy: PhysHlth=16' ;

      label PhysHlth17 = 'Dummy: PhysHlth=17' ;

      label PhysHlth18 = 'Dummy: PhysHlth=18' ;

      label PhysHlth19 = 'Dummy: PhysHlth=19' ;

      label PhysHlth20 = 'Dummy: PhysHlth=20' ;

      label PhysHlth21 = 'Dummy: PhysHlth=21' ;

      label PhysHlth22 = 'Dummy: PhysHlth=22' ;

      label PhysHlth23 = 'Dummy: PhysHlth=23' ;

      label PhysHlth24 = 'Dummy: PhysHlth=24' ;

      label PhysHlth25 = 'Dummy: PhysHlth=25' ;

      label PhysHlth26 = 'Dummy: PhysHlth=26' ;

      label PhysHlth27 = 'Dummy: PhysHlth=27' ;

      label PhysHlth28 = 'Dummy: PhysHlth=28' ;

      label PhysHlth29 = 'Dummy: PhysHlth=29' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label I_Diabetes_Prediction = 'Into: Diabetes_Prediction' ;

      label F_Diabetes_Prediction = 'From: Diabetes_Prediction' ;

      label U_Diabetes_Prediction = 'Unnormalized Into: Diabetes_Prediction' ;

      label P_Diabetes_Predictionprediabetes =
'Predicted: Diabetes_Prediction=prediabetes' ;

      label R_Diabetes_Predictionprediabetes =
'Residual: Diabetes_Prediction=prediabetes' ;

      label P_Diabetes_Predictionno_diabetes =
'Predicted: Diabetes_Prediction=no diabetes' ;

      label R_Diabetes_Predictionno_diabetes =
'Residual: Diabetes_Prediction=no diabetes' ;

      label P_Diabetes_Predictiondiabetes =
'Predicted: Diabetes_Prediction=diabetes' ;

      label R_Diabetes_Predictiondiabetes =
'Residual: Diabetes_Prediction=diabetes' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for AnyHealthcare ;
drop AnyHealthcare0 ;
if missing( AnyHealthcare ) then do;
   AnyHealthcare0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( AnyHealthcare , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      AnyHealthcare0 = -1;
   end;
   else if _dm12 = '0'  then do;
      AnyHealthcare0 = 1;
   end;
   else do;
      AnyHealthcare0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for CholCheck ;
drop CholCheck0 ;
if missing( CholCheck ) then do;
   CholCheck0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( CholCheck , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      CholCheck0 = -1;
   end;
   else if _dm12 = '0'  then do;
      CholCheck0 = 1;
   end;
   else do;
      CholCheck0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for DiffWalk ;
drop DiffWalk0 ;
if missing( DiffWalk ) then do;
   DiffWalk0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( DiffWalk , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      DiffWalk0 = 1;
   end;
   else if _dm12 = '1'  then do;
      DiffWalk0 = -1;
   end;
   else do;
      DiffWalk0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Fruits ;
drop Fruits0 ;
if missing( Fruits ) then do;
   Fruits0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Fruits , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Fruits0 = -1;
   end;
   else if _dm12 = '0'  then do;
      Fruits0 = 1;
   end;
   else do;
      Fruits0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HeartDiseaseorAttack ;
drop HeartDiseaseorAttack0 ;
if missing( HeartDiseaseorAttack ) then do;
   HeartDiseaseorAttack0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HeartDiseaseorAttack , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HeartDiseaseorAttack0 = 1;
   end;
   else if _dm12 = '1'  then do;
      HeartDiseaseorAttack0 = -1;
   end;
   else do;
      HeartDiseaseorAttack0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighBP ;
drop HighBP0 ;
if missing( HighBP ) then do;
   HighBP0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighBP , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HighBP0 = 1;
   end;
   else if _dm12 = '1'  then do;
      HighBP0 = -1;
   end;
   else do;
      HighBP0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighChol ;
drop HighChol0 ;
if missing( HighChol ) then do;
   HighChol0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighChol , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HighChol0 = 1;
   end;
   else if _dm12 = '1'  then do;
      HighChol0 = -1;
   end;
   else do;
      HighChol0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HvyAlcoholConsump ;
drop HvyAlcoholConsump0 ;
if missing( HvyAlcoholConsump ) then do;
   HvyAlcoholConsump0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HvyAlcoholConsump , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HvyAlcoholConsump0 = 1;
   end;
   else if _dm12 = '1'  then do;
      HvyAlcoholConsump0 = -1;
   end;
   else do;
      HvyAlcoholConsump0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for NoDocbcCost ;
drop NoDocbcCost0 ;
if missing( NoDocbcCost ) then do;
   NoDocbcCost0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( NoDocbcCost , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      NoDocbcCost0 = 1;
   end;
   else if _dm12 = '1'  then do;
      NoDocbcCost0 = -1;
   end;
   else do;
      NoDocbcCost0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for PhysActivity ;
drop PhysActivity0 ;
if missing( PhysActivity ) then do;
   PhysActivity0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( PhysActivity , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      PhysActivity0 = -1;
   end;
   else if _dm12 = '0'  then do;
      PhysActivity0 = 1;
   end;
   else do;
      PhysActivity0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Sex ;
drop Sex0 ;
if missing( Sex ) then do;
   Sex0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Sex , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Sex0 = 1;
   end;
   else if _dm12 = '1'  then do;
      Sex0 = -1;
   end;
   else do;
      Sex0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Smoker ;
drop Smoker0 ;
if missing( Smoker ) then do;
   Smoker0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Smoker , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Smoker0 = 1;
   end;
   else if _dm12 = '1'  then do;
      Smoker0 = -1;
   end;
   else do;
      Smoker0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Stroke ;
drop Stroke0 ;
if missing( Stroke ) then do;
   Stroke0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Stroke , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Stroke0 = 1;
   end;
   else if _dm12 = '1'  then do;
      Stroke0 = -1;
   end;
   else do;
      Stroke0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Veggies ;
drop Veggies0 ;
if missing( Veggies ) then do;
   Veggies0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Veggies , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Veggies0 = -1;
   end;
   else if _dm12 = '0'  then do;
      Veggies0 = 1;
   end;
   else do;
      Veggies0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Education ;
drop Education1 Education2 Education3 Education4 Education5 ;
if missing( Education ) then do;
   Education1 = .;
   Education2 = .;
   Education3 = .;
   Education4 = .;
   Education5 = .;
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
            Education1 = -0.50709255283711;
            Education2 = -0.50709255283711;
            Education3 = -0.50709255283711;
            Education4 = -0.50709255283711;
            Education5 = -0.50709255283711;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               Education1 = 0.50709255283711;
               Education2 = -0.50709255283711;
               Education3 = -0.50709255283711;
               Education4 = -0.50709255283711;
               Education5 = -0.50709255283711;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            Education1 = 0.50709255283711;
            Education2 = 0.50709255283711;
            Education3 = -0.50709255283711;
            Education4 = -0.50709255283711;
            Education5 = -0.50709255283711;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 <= '5'  then do;
         if _dm12 = '4'  then do;
            Education1 = 0.50709255283711;
            Education2 = 0.50709255283711;
            Education3 = 0.50709255283711;
            Education4 = -0.50709255283711;
            Education5 = -0.50709255283711;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               Education1 = 0.50709255283711;
               Education2 = 0.50709255283711;
               Education3 = 0.50709255283711;
               Education4 = 0.50709255283711;
               Education5 = -0.50709255283711;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '6'  then do;
            Education1 = 0.50709255283711;
            Education2 = 0.50709255283711;
            Education3 = 0.50709255283711;
            Education4 = 0.50709255283711;
            Education5 = 0.50709255283711;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      Education1 = .;
      Education2 = .;
      Education3 = .;
      Education4 = .;
      Education5 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GenHlth ;
drop GenHlth1 GenHlth2 GenHlth3 GenHlth4 ;
if missing( GenHlth ) then do;
   GenHlth1 = .;
   GenHlth2 = .;
   GenHlth3 = .;
   GenHlth4 = .;
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
            GenHlth1 = -0.55901699437494;
            GenHlth2 = -0.55901699437494;
            GenHlth3 = -0.55901699437494;
            GenHlth4 = -0.55901699437494;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               GenHlth1 = 0.55901699437494;
               GenHlth2 = -0.55901699437494;
               GenHlth3 = -0.55901699437494;
               GenHlth4 = -0.55901699437494;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            GenHlth1 = 0.55901699437494;
            GenHlth2 = 0.55901699437494;
            GenHlth3 = -0.55901699437494;
            GenHlth4 = -0.55901699437494;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '4'  then do;
         GenHlth1 = 0.55901699437494;
         GenHlth2 = 0.55901699437494;
         GenHlth3 = 0.55901699437494;
         GenHlth4 = -0.55901699437494;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '5'  then do;
            GenHlth1 = 0.55901699437494;
            GenHlth2 = 0.55901699437494;
            GenHlth3 = 0.55901699437494;
            GenHlth4 = 0.55901699437494;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      GenHlth1 = .;
      GenHlth2 = .;
      GenHlth3 = .;
      GenHlth4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Income ;
drop Income1 Income2 Income3 Income4 Income5 Income6 Income7 ;
if missing( Income ) then do;
   Income1 = .;
   Income2 = .;
   Income3 = .;
   Income4 = .;
   Income5 = .;
   Income6 = .;
   Income7 = .;
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
            Income1 = -0.43643578047198;
            Income2 = -0.43643578047198;
            Income3 = -0.43643578047198;
            Income4 = -0.43643578047198;
            Income5 = -0.43643578047198;
            Income6 = -0.43643578047198;
            Income7 = -0.43643578047198;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               Income1 = 0.43643578047198;
               Income2 = -0.43643578047198;
               Income3 = -0.43643578047198;
               Income4 = -0.43643578047198;
               Income5 = -0.43643578047198;
               Income6 = -0.43643578047198;
               Income7 = -0.43643578047198;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            Income1 = 0.43643578047198;
            Income2 = 0.43643578047198;
            Income3 = -0.43643578047198;
            Income4 = -0.43643578047198;
            Income5 = -0.43643578047198;
            Income6 = -0.43643578047198;
            Income7 = -0.43643578047198;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               Income1 = 0.43643578047198;
               Income2 = 0.43643578047198;
               Income3 = 0.43643578047198;
               Income4 = -0.43643578047198;
               Income5 = -0.43643578047198;
               Income6 = -0.43643578047198;
               Income7 = -0.43643578047198;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            Income1 = 0.43643578047198;
            Income2 = 0.43643578047198;
            Income3 = 0.43643578047198;
            Income4 = 0.43643578047198;
            Income5 = -0.43643578047198;
            Income6 = -0.43643578047198;
            Income7 = -0.43643578047198;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               Income1 = 0.43643578047198;
               Income2 = 0.43643578047198;
               Income3 = 0.43643578047198;
               Income4 = 0.43643578047198;
               Income5 = 0.43643578047198;
               Income6 = -0.43643578047198;
               Income7 = -0.43643578047198;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            Income1 = 0.43643578047198;
            Income2 = 0.43643578047198;
            Income3 = 0.43643578047198;
            Income4 = 0.43643578047198;
            Income5 = 0.43643578047198;
            Income6 = 0.43643578047198;
            Income7 = -0.43643578047198;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               Income1 = 0.43643578047198;
               Income2 = 0.43643578047198;
               Income3 = 0.43643578047198;
               Income4 = 0.43643578047198;
               Income5 = 0.43643578047198;
               Income6 = 0.43643578047198;
               Income7 = 0.43643578047198;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      Income1 = .;
      Income2 = .;
      Income3 = .;
      Income4 = .;
      Income5 = .;
      Income6 = .;
      Income7 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for MentHlth ;
drop MentHlth0 MentHlth1 MentHlth2 MentHlth3 MentHlth4 MentHlth5 MentHlth6
        MentHlth7 MentHlth8 MentHlth9 MentHlth10 MentHlth11 MentHlth12
        MentHlth13 MentHlth14 MentHlth15 MentHlth16 MentHlth17 MentHlth18
        MentHlth19 MentHlth20 MentHlth21 MentHlth22 MentHlth23 MentHlth24
        MentHlth25 MentHlth26 MentHlth27 MentHlth28 MentHlth29 ;
if missing( MentHlth ) then do;
   MentHlth0 = .;
   MentHlth1 = .;
   MentHlth2 = .;
   MentHlth3 = .;
   MentHlth4 = .;
   MentHlth5 = .;
   MentHlth6 = .;
   MentHlth7 = .;
   MentHlth8 = .;
   MentHlth9 = .;
   MentHlth10 = .;
   MentHlth11 = .;
   MentHlth12 = .;
   MentHlth13 = .;
   MentHlth14 = .;
   MentHlth15 = .;
   MentHlth16 = .;
   MentHlth17 = .;
   MentHlth18 = .;
   MentHlth19 = .;
   MentHlth20 = .;
   MentHlth21 = .;
   MentHlth22 = .;
   MentHlth23 = .;
   MentHlth24 = .;
   MentHlth25 = .;
   MentHlth26 = .;
   MentHlth27 = .;
   MentHlth28 = .;
   MentHlth29 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( MentHlth , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      MentHlth0 = -0.22008521077073;
      MentHlth1 = -0.22008521077073;
      MentHlth2 = -0.22008521077073;
      MentHlth3 = -0.22008521077073;
      MentHlth4 = -0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '2'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = -0.22008521077073;
      MentHlth3 = -0.22008521077073;
      MentHlth4 = -0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '30'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = 0.22008521077073;
      MentHlth26 = 0.22008521077073;
      MentHlth27 = 0.22008521077073;
      MentHlth28 = 0.22008521077073;
      MentHlth29 = 0.22008521077073;
   end;
   else if _dm12 = '5'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '1'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = -0.22008521077073;
      MentHlth2 = -0.22008521077073;
      MentHlth3 = -0.22008521077073;
      MentHlth4 = -0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '3'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = -0.22008521077073;
      MentHlth4 = -0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '10'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '15'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '4'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = -0.22008521077073;
      MentHlth5 = -0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '20'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '7'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '14'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '25'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '6'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = -0.22008521077073;
      MentHlth7 = -0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '8'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = -0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '12'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '28'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = 0.22008521077073;
      MentHlth26 = 0.22008521077073;
      MentHlth27 = 0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '21'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '16'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '27'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = 0.22008521077073;
      MentHlth26 = 0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '29'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = 0.22008521077073;
      MentHlth26 = 0.22008521077073;
      MentHlth27 = 0.22008521077073;
      MentHlth28 = 0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '18'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '9'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = -0.22008521077073;
      MentHlth10 = -0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '22'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '13'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '17'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '26'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = 0.22008521077073;
      MentHlth25 = 0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '23'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '11'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = -0.22008521077073;
      MentHlth12 = -0.22008521077073;
      MentHlth13 = -0.22008521077073;
      MentHlth14 = -0.22008521077073;
      MentHlth15 = -0.22008521077073;
      MentHlth16 = -0.22008521077073;
      MentHlth17 = -0.22008521077073;
      MentHlth18 = -0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '24'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = 0.22008521077073;
      MentHlth20 = 0.22008521077073;
      MentHlth21 = 0.22008521077073;
      MentHlth22 = 0.22008521077073;
      MentHlth23 = 0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '19'  then do;
      MentHlth0 = 0.22008521077073;
      MentHlth1 = 0.22008521077073;
      MentHlth2 = 0.22008521077073;
      MentHlth3 = 0.22008521077073;
      MentHlth4 = 0.22008521077073;
      MentHlth5 = 0.22008521077073;
      MentHlth6 = 0.22008521077073;
      MentHlth7 = 0.22008521077073;
      MentHlth8 = 0.22008521077073;
      MentHlth9 = 0.22008521077073;
      MentHlth10 = 0.22008521077073;
      MentHlth11 = 0.22008521077073;
      MentHlth12 = 0.22008521077073;
      MentHlth13 = 0.22008521077073;
      MentHlth14 = 0.22008521077073;
      MentHlth15 = 0.22008521077073;
      MentHlth16 = 0.22008521077073;
      MentHlth17 = 0.22008521077073;
      MentHlth18 = 0.22008521077073;
      MentHlth19 = -0.22008521077073;
      MentHlth20 = -0.22008521077073;
      MentHlth21 = -0.22008521077073;
      MentHlth22 = -0.22008521077073;
      MentHlth23 = -0.22008521077073;
      MentHlth24 = -0.22008521077073;
      MentHlth25 = -0.22008521077073;
      MentHlth26 = -0.22008521077073;
      MentHlth27 = -0.22008521077073;
      MentHlth28 = -0.22008521077073;
      MentHlth29 = -0.22008521077073;
   end;
   else do;
      MentHlth0 = .;
      MentHlth1 = .;
      MentHlth2 = .;
      MentHlth3 = .;
      MentHlth4 = .;
      MentHlth5 = .;
      MentHlth6 = .;
      MentHlth7 = .;
      MentHlth8 = .;
      MentHlth9 = .;
      MentHlth10 = .;
      MentHlth11 = .;
      MentHlth12 = .;
      MentHlth13 = .;
      MentHlth14 = .;
      MentHlth15 = .;
      MentHlth16 = .;
      MentHlth17 = .;
      MentHlth18 = .;
      MentHlth19 = .;
      MentHlth20 = .;
      MentHlth21 = .;
      MentHlth22 = .;
      MentHlth23 = .;
      MentHlth24 = .;
      MentHlth25 = .;
      MentHlth26 = .;
      MentHlth27 = .;
      MentHlth28 = .;
      MentHlth29 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for PhysHlth ;
drop PhysHlth0 PhysHlth1 PhysHlth2 PhysHlth3 PhysHlth4 PhysHlth5 PhysHlth6
        PhysHlth7 PhysHlth8 PhysHlth9 PhysHlth10 PhysHlth11 PhysHlth12
        PhysHlth13 PhysHlth14 PhysHlth15 PhysHlth16 PhysHlth17 PhysHlth18
        PhysHlth19 PhysHlth20 PhysHlth21 PhysHlth22 PhysHlth23 PhysHlth24
        PhysHlth25 PhysHlth26 PhysHlth27 PhysHlth28 PhysHlth29 ;
if missing( PhysHlth ) then do;
   PhysHlth0 = .;
   PhysHlth1 = .;
   PhysHlth2 = .;
   PhysHlth3 = .;
   PhysHlth4 = .;
   PhysHlth5 = .;
   PhysHlth6 = .;
   PhysHlth7 = .;
   PhysHlth8 = .;
   PhysHlth9 = .;
   PhysHlth10 = .;
   PhysHlth11 = .;
   PhysHlth12 = .;
   PhysHlth13 = .;
   PhysHlth14 = .;
   PhysHlth15 = .;
   PhysHlth16 = .;
   PhysHlth17 = .;
   PhysHlth18 = .;
   PhysHlth19 = .;
   PhysHlth20 = .;
   PhysHlth21 = .;
   PhysHlth22 = .;
   PhysHlth23 = .;
   PhysHlth24 = .;
   PhysHlth25 = .;
   PhysHlth26 = .;
   PhysHlth27 = .;
   PhysHlth28 = .;
   PhysHlth29 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( PhysHlth , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      PhysHlth0 = -0.22008521077073;
      PhysHlth1 = -0.22008521077073;
      PhysHlth2 = -0.22008521077073;
      PhysHlth3 = -0.22008521077073;
      PhysHlth4 = -0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '30'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = 0.22008521077073;
      PhysHlth26 = 0.22008521077073;
      PhysHlth27 = 0.22008521077073;
      PhysHlth28 = 0.22008521077073;
      PhysHlth29 = 0.22008521077073;
   end;
   else if _dm12 = '2'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = -0.22008521077073;
      PhysHlth3 = -0.22008521077073;
      PhysHlth4 = -0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '1'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = -0.22008521077073;
      PhysHlth2 = -0.22008521077073;
      PhysHlth3 = -0.22008521077073;
      PhysHlth4 = -0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '3'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = -0.22008521077073;
      PhysHlth4 = -0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '5'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '10'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '15'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '7'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '4'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = -0.22008521077073;
      PhysHlth5 = -0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '20'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '14'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '6'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = -0.22008521077073;
      PhysHlth7 = -0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '25'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '8'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = -0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '21'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '12'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '28'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = 0.22008521077073;
      PhysHlth26 = 0.22008521077073;
      PhysHlth27 = 0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '29'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = 0.22008521077073;
      PhysHlth26 = 0.22008521077073;
      PhysHlth27 = 0.22008521077073;
      PhysHlth28 = 0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '9'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = -0.22008521077073;
      PhysHlth10 = -0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '18'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '17'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '27'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = 0.22008521077073;
      PhysHlth26 = 0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '16'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '22'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '13'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '24'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '26'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = 0.22008521077073;
      PhysHlth24 = 0.22008521077073;
      PhysHlth25 = 0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '23'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = 0.22008521077073;
      PhysHlth20 = 0.22008521077073;
      PhysHlth21 = 0.22008521077073;
      PhysHlth22 = 0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '11'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = -0.22008521077073;
      PhysHlth12 = -0.22008521077073;
      PhysHlth13 = -0.22008521077073;
      PhysHlth14 = -0.22008521077073;
      PhysHlth15 = -0.22008521077073;
      PhysHlth16 = -0.22008521077073;
      PhysHlth17 = -0.22008521077073;
      PhysHlth18 = -0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else if _dm12 = '19'  then do;
      PhysHlth0 = 0.22008521077073;
      PhysHlth1 = 0.22008521077073;
      PhysHlth2 = 0.22008521077073;
      PhysHlth3 = 0.22008521077073;
      PhysHlth4 = 0.22008521077073;
      PhysHlth5 = 0.22008521077073;
      PhysHlth6 = 0.22008521077073;
      PhysHlth7 = 0.22008521077073;
      PhysHlth8 = 0.22008521077073;
      PhysHlth9 = 0.22008521077073;
      PhysHlth10 = 0.22008521077073;
      PhysHlth11 = 0.22008521077073;
      PhysHlth12 = 0.22008521077073;
      PhysHlth13 = 0.22008521077073;
      PhysHlth14 = 0.22008521077073;
      PhysHlth15 = 0.22008521077073;
      PhysHlth16 = 0.22008521077073;
      PhysHlth17 = 0.22008521077073;
      PhysHlth18 = 0.22008521077073;
      PhysHlth19 = -0.22008521077073;
      PhysHlth20 = -0.22008521077073;
      PhysHlth21 = -0.22008521077073;
      PhysHlth22 = -0.22008521077073;
      PhysHlth23 = -0.22008521077073;
      PhysHlth24 = -0.22008521077073;
      PhysHlth25 = -0.22008521077073;
      PhysHlth26 = -0.22008521077073;
      PhysHlth27 = -0.22008521077073;
      PhysHlth28 = -0.22008521077073;
      PhysHlth29 = -0.22008521077073;
   end;
   else do;
      PhysHlth0 = .;
      PhysHlth1 = .;
      PhysHlth2 = .;
      PhysHlth3 = .;
      PhysHlth4 = .;
      PhysHlth5 = .;
      PhysHlth6 = .;
      PhysHlth7 = .;
      PhysHlth8 = .;
      PhysHlth9 = .;
      PhysHlth10 = .;
      PhysHlth11 = .;
      PhysHlth12 = .;
      PhysHlth13 = .;
      PhysHlth14 = .;
      PhysHlth15 = .;
      PhysHlth16 = .;
      PhysHlth17 = .;
      PhysHlth18 = .;
      PhysHlth19 = .;
      PhysHlth20 = .;
      PhysHlth21 = .;
      PhysHlth22 = .;
      PhysHlth23 = .;
      PhysHlth24 = .;
      PhysHlth25 = .;
      PhysHlth26 = .;
      PhysHlth27 = .;
      PhysHlth28 = .;
      PhysHlth29 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   Age ,
   BMI   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_Age  =    -2.63886619504557 +     0.32781423649112 * Age ;
   S_BMI  =    -5.01046276833619 +     0.17874505957054 * BMI ;
END;
ELSE DO;
   IF MISSING( Age ) THEN S_Age  = . ;
   ELSE S_Age  =    -2.63886619504557 +     0.32781423649112 * Age ;
   IF MISSING( BMI ) THEN S_BMI  = . ;
   ELSE S_BMI  =    -5.01046276833619 +     0.17874505957054 * BMI ;
END;
*** *************************;
*** Writing the Node bin ;
*** *************************;
*** *************************;
*** Writing the Node ord ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.33703371324467 * S_Age  +     0.40101865347467 * S_BMI ;
   H12  =    -0.06777667093097 * S_Age  +     -0.0815799941784 * S_BMI ;
   H13  =    -0.03361874931043 * S_Age  +     0.00318647086339 * S_BMI ;
   H11  = H11  +    -0.09531536126242 * AnyHealthcare0
          +    -0.01253514922749 * CholCheck0  +    -0.04018318180124 *
        DiffWalk0  +     0.01746356752243 * Fruits0  +    -0.29051651660892 *
        HeartDiseaseorAttack0  +    -0.24933731371044 * HighBP0
          +    -0.27597436513766 * HighChol0  +     0.23495944812442 *
        HvyAlcoholConsump0  +    -0.01209647738341 * NoDocbcCost0
          +     0.09324451718022 * PhysActivity0  +     -0.0315378908716 *
        Sex0  +    -0.01233989922325 * Smoker0  +    -0.01189192246355 *
        Stroke0  +     0.06502103790858 * Veggies0 ;
   H12  = H12  +      0.1442843701638 * AnyHealthcare0
          +     0.20798272050335 * CholCheck0  +     -0.1274942034403 *
        DiffWalk0  +     0.07972360501096 * Fruits0  +     0.05241441792007 *
        HeartDiseaseorAttack0  +     0.22290686683059 * HighBP0
          +    -0.14006569416248 * HighChol0  +    -0.28932408138361 *
        HvyAlcoholConsump0  +    -0.24515226216427 * NoDocbcCost0
          +    -0.04447316689846 * PhysActivity0  +      0.0467029943209 *
        Sex0  +     -0.1040535810157 * Smoker0  +    -0.08224219795808 *
        Stroke0  +     0.07446087745395 * Veggies0 ;
   H13  = H13  +     0.03122190879148 * AnyHealthcare0
          +     0.00812555258495 * CholCheck0  +    -0.04145976437302 *
        DiffWalk0  +    -0.05550859937148 * Fruits0  +    -0.07790676089759 *
        HeartDiseaseorAttack0  +     0.00042349384875 * HighBP0
          +    -0.06384985323391 * HighChol0  +    -0.02600255484922 *
        HvyAlcoholConsump0  +    -0.10573132379295 * NoDocbcCost0
          +     0.12413651731373 * PhysActivity0  +     0.03183388010064 *
        Sex0  +    -0.10291894929701 * Smoker0  +    -0.10575941686498 *
        Stroke0  +     0.20250503763525 * Veggies0 ;
   H11  = H11  +  1.0000000014252E-10 * Education1  +     0.08335748034679 *
        Education2  +      0.0902257427698 * Education3
          +     0.00295822995678 * Education4  +  1.0000000000699E-10 *
        Education5  +     0.33857901897409 * GenHlth1
          +     0.31609942140496 * GenHlth2  +     0.18670425466413 * GenHlth3
          +     0.12641206614859 * GenHlth4  +     0.05069370369331 * Income1
          +   1.000000000341E-10 * Income2  +     0.04513141899743 * Income3
          +   1.000000000341E-10 * Income4  +   1.000000000341E-10 * Income5
          +  9.9999999993443E-11 * Income6  +   1.000000000341E-10 * Income7
          +     0.02417538159873 * MentHlth0  +   1.000000000341E-10 *
        MentHlth1  +      0.0418102999075 * MentHlth2
          +     0.01757830226611 * MentHlth3  +     0.09394399551201 *
        MentHlth4  +  1.0000000046778E-10 * MentHlth5
          +   1.000000000341E-10 * MentHlth6  +  9.9999999993443E-11 *
        MentHlth7  +   1.000000000341E-10 * MentHlth8
          +     0.03451001931443 * MentHlth9  +   1.000000000341E-10 *
        MentHlth10  +   1.000000000341E-10 * MentHlth11
          +     0.10955519243935 * MentHlth12  +     0.01989155413185 *
        MentHlth13  +     0.00017321238342 * MentHlth14
          +   9.999999997989E-11 * MentHlth15  +  9.9999999993443E-11 *
        MentHlth16  +     0.00242549050621 * MentHlth17
          +   1.000000000341E-10 * MentHlth18  +   1.000000000341E-10 *
        MentHlth19  +  1.0000000000021E-10 * MentHlth20
          +     0.12316212390704 * MentHlth21  +     0.05392033301674 *
        MentHlth22  +   1.000000000341E-10 * MentHlth23
          +      0.0065230498825 * MentHlth24  +     0.05697400792341 *
        MentHlth25  +     0.01210467031541 * MentHlth26
          +  9.9999999600419E-11 * MentHlth27  +     0.08365332964562 *
        MentHlth28  +   9.999999981726E-11 * MentHlth29
          +     0.00071618359167 * PhysHlth0  +   1.000000000341E-10 *
        PhysHlth1  +     0.06724962487709 * PhysHlth2
          +        0.00181671493 * PhysHlth3  +     0.15087815540611 *
        PhysHlth4  +     0.09829388782397 * PhysHlth5
          +   1.000000000341E-10 * PhysHlth6  +  9.9999999600419E-11 *
        PhysHlth7  +     0.00324357635805 * PhysHlth8
          +   1.000000000341E-10 * PhysHlth9  +   1.000000000341E-10 *
        PhysHlth10  +     0.16326130472054 * PhysHlth11
          +     0.03366252011458 * PhysHlth12  +   1.000000000341E-10 *
        PhysHlth13  +     0.00362761790356 * PhysHlth14
          +     0.04169924375226 * PhysHlth15  +     0.08530424713374 *
        PhysHlth16  +     0.08342935253808 * PhysHlth17
          +   1.000000000341E-10 * PhysHlth18  +     0.00771942020558 *
        PhysHlth19  +   1.000000000341E-10 * PhysHlth20
          +     0.00193150211595 * PhysHlth21  +   1.000000000341E-10 *
        PhysHlth22  +     0.09735528398347 * PhysHlth23
          +   1.000000000341E-10 * PhysHlth24  +   1.000000000341E-10 *
        PhysHlth25  +  9.9999999600419E-11 * PhysHlth26
          +     0.05758549439101 * PhysHlth27  +      0.0310624090456 *
        PhysHlth28  +   1.000000000341E-10 * PhysHlth29 ;
   H12  = H12  +  1.0000000000699E-10 * Education1  +   1.000000000341E-10 *
        Education2  +  9.9999999600419E-11 * Education3
          +     0.13223354141191 * Education4  +     0.07773225089533 *
        Education5  +     0.04545727132475 * GenHlth1
          +   1.000000000341E-10 * GenHlth2  +     0.08500555611125 * GenHlth3
          +     0.13878426122564 * GenHlth4  +     0.10056807773087 * Income1
          +   1.000000000341E-10 * Income2  +   1.000000000341E-10 * Income3
          +   1.000000000341E-10 * Income4  +     0.04825333978523 * Income5
          +     0.13951708533969 * Income6  +     0.17813619392347 * Income7
          +     0.10067747110643 * MentHlth0  +     0.01931755125814 *
        MentHlth1  +     0.06346024245118 * MentHlth2
          +     0.12319704065276 * MentHlth3  +     0.03106257217222 *
        MentHlth4  +     0.03094233667555 * MentHlth5
          +     0.05734951738883 * MentHlth6  +     0.09249961169067 *
        MentHlth7  +     0.14649648342537 * MentHlth8
          +     0.15168787834647 * MentHlth9  +     0.21248729643087 *
        MentHlth10  +     0.32608067438751 * MentHlth11
          +     0.22404724030486 * MentHlth12  +     0.09478757682311 *
        MentHlth13  +     0.09347610422763 * MentHlth14
          +     0.07484084755359 * MentHlth15  +     0.05321739241733 *
        MentHlth16  +     0.16535949676774 * MentHlth17
          +     0.23139119454987 * MentHlth18  +     0.13479806877481 *
        MentHlth19  +     0.14896836210365 * MentHlth20
          +      0.1623678480927 * MentHlth21  +     0.32410838553095 *
        MentHlth22  +     0.07123309309823 * MentHlth23
          +     0.18590516876636 * MentHlth24  +     0.07910573936689 *
        MentHlth25  +     0.07915208357097 * MentHlth26
          +     0.06519021627482 * MentHlth27  +     0.02956777647107 *
        MentHlth28  +     0.25000964898275 * MentHlth29
          +     0.12796334102898 * PhysHlth0  +     0.03301542266891 *
        PhysHlth1  +     0.05562701805101 * PhysHlth2
          +     0.11898099754125 * PhysHlth3  +     0.10801023129998 *
        PhysHlth4  +     0.04326104054646 * PhysHlth5
          +     0.12817421617681 * PhysHlth6  +       0.092728474854 *
        PhysHlth7  +     0.07641188683309 * PhysHlth8
          +     0.13899307949142 * PhysHlth9  +     0.13628196959482 *
        PhysHlth10  +     0.14376270083958 * PhysHlth11
          +     0.05609018516954 * PhysHlth12  +     0.10757216289621 *
        PhysHlth13  +     0.02908942376434 * PhysHlth14
          +     0.06572451320873 * PhysHlth15  +     0.06665641524807 *
        PhysHlth16  +     0.12309103225393 * PhysHlth17
          +     0.12442612941937 * PhysHlth18  +     0.07730831313666 *
        PhysHlth19  +     0.07588619778768 * PhysHlth20
          +     0.19511249689887 * PhysHlth21  +     0.21080127635705 *
        PhysHlth22  +     0.13641197133363 * PhysHlth23
          +     0.10548686128193 * PhysHlth24  +     0.08555879013257 *
        PhysHlth25  +     0.09457141560624 * PhysHlth26
          +     0.17120727826072 * PhysHlth27  +     0.03311552120306 *
        PhysHlth28  +     0.04331719475327 * PhysHlth29 ;
   H13  = H13  +  1.0000000000021E-10 * Education1  +   9.999999997989E-11 *
        Education2  +     0.05638899538871 * Education3
          +     0.05008594079716 * Education4  +     0.10431646723609 *
        Education5  +      0.0230706325758 * GenHlth1
          +   1.000000000341E-10 * GenHlth2  +     0.01759124210412 * GenHlth3
          +     0.04360856294234 * GenHlth4  +     0.09109110160833 * Income1
          +     0.06828956684399 * Income2  +     0.10739870748404 * Income3
          +     0.03658972493505 * Income4  +     0.05562878122921 * Income5
          +     0.23711140998582 * Income6  +     0.13118574373087 * Income7
          +   1.000000000341E-10 * MentHlth0  +  9.9999999993443E-11 *
        MentHlth1  +     0.04171498391012 * MentHlth2
          +     0.03759556959818 * MentHlth3  +      0.0150098779436 *
        MentHlth4  +     0.17161059833648 * MentHlth5
          +     0.05289091600902 * MentHlth6  +     0.00842953458613 *
        MentHlth7  +     0.01571466180557 * MentHlth8
          +     0.03055259217678 * MentHlth9  +     0.16252199488837 *
        MentHlth10  +     0.10953572117316 * MentHlth11
          +     0.00795110223078 * MentHlth12  +     0.01195971827308 *
        MentHlth13  +   9.999999997989E-11 * MentHlth14
          +     0.08612374651958 * MentHlth15  +     0.04788281108267 *
        MentHlth16  +     0.13285720101665 * MentHlth17
          +      0.0479979159029 * MentHlth18  +     0.13375820553993 *
        MentHlth19  +     0.06787840763443 * MentHlth20
          +  1.0000000000021E-10 * MentHlth21  +     0.18916869462608 *
        MentHlth22  +     0.06208282410497 * MentHlth23
          +     0.17359143828845 * MentHlth24  +     0.01368642733464 *
        MentHlth25  +     0.09533878558075 * MentHlth26
          +      0.0035241496662 * MentHlth27  +     0.05539219846145 *
        MentHlth28  +     0.17892992846896 * MentHlth29
          +     0.02350244652764 * PhysHlth0  +     0.28525853471797 *
        PhysHlth1  +     0.25789764104306 * PhysHlth2
          +     0.07530677487104 * PhysHlth3  +     0.05468143218543 *
        PhysHlth4  +     0.09071839190709 * PhysHlth5
          +     0.00231568016547 * PhysHlth6  +     0.07785970010469 *
        PhysHlth7  +     0.03879810016311 * PhysHlth8
          +     0.04230117967848 * PhysHlth9  +     0.06888629934761 *
        PhysHlth10  +     0.09049490064134 * PhysHlth11
          +     0.03228544099801 * PhysHlth12  +     0.07407653938654 *
        PhysHlth13  +     0.05116341849574 * PhysHlth14
          +      0.0354696540401 * PhysHlth15  +     0.02950383789062 *
        PhysHlth16  +     0.11565499455584 * PhysHlth17
          +     0.10235730662091 * PhysHlth18  +     0.05368988642065 *
        PhysHlth19  +     0.04328596189299 * PhysHlth20
          +     0.21021373662396 * PhysHlth21  +     0.13531781212565 *
        PhysHlth22  +     0.00853839775829 * PhysHlth23
          +     0.08921954891469 * PhysHlth24  +     0.05613016941073 *
        PhysHlth25  +     0.01738996836746 * PhysHlth26
          +     0.04790858283549 * PhysHlth27  +     0.03098923200741 *
        PhysHlth28  +     0.03733940574925 * PhysHlth29 ;
   H11  =     0.20725936597317 + H11 ;
   H12  =     0.35243934050558 + H12 ;
   H13  =    -1.32684677650801 + H13 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
END;
*** *************************;
*** Writing the Node Diabetes_Prediction ;
*** *************************;

*** Generate dummy variables for Diabetes_Prediction ;
drop Diabetes_Predictionprediabetes Diabetes_Predictionno_diabetes
        Diabetes_Predictiondiabetes ;
label F_Diabetes_Prediction = 'From: Diabetes_Prediction' ;
length F_Diabetes_Prediction $ 11;
%DMNORMCP( Diabetes_Prediction , F_Diabetes_Prediction )
*** encoding is sparse, initialize to zero;
Diabetes_Predictionprediabetes = 0;
Diabetes_Predictionno_diabetes = 0;
Diabetes_Predictiondiabetes = 0;
if missing( Diabetes_Prediction ) then do;
   Diabetes_Predictionprediabetes = .;
   Diabetes_Predictionno_diabetes = .;
   Diabetes_Predictiondiabetes = .;
end;
else do;
   if F_Diabetes_Prediction = 'NO DIABETES'  then do;
      Diabetes_Predictionno_diabetes = 1;
   end;
   else if F_Diabetes_Prediction = 'DIABETES'  then do;
      Diabetes_Predictiondiabetes = 1;
   end;
   else if F_Diabetes_Prediction = 'PREDIABETES'  then do;
      Diabetes_Predictionprediabetes = 1;
   end;
   else do;
      Diabetes_Predictionprediabetes = .;
      Diabetes_Predictionno_diabetes = .;
      Diabetes_Predictiondiabetes = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_Diabetes_Predictionprediabetes  =    -0.03624821349593 * H11
          +     0.06109266074526 * H12  +     0.03446653388842 * H13 ;
   P_Diabetes_Predictionno_diabetes  =     -1.7399120984146 * H11
          +    -0.35508800501091 * H12  +    -0.75466308987893 * H13 ;
   P_Diabetes_Predictionprediabetes  =    -1.91339049706768 +
        P_Diabetes_Predictionprediabetes ;
   P_Diabetes_Predictionno_diabetes  =     1.07818807239411 +
        P_Diabetes_Predictionno_diabetes ;
   P_Diabetes_Predictiondiabetes  = 0;
   _MAX_ = MAX (P_Diabetes_Predictionprediabetes ,
        P_Diabetes_Predictionno_diabetes , P_Diabetes_Predictiondiabetes );
   _SUM_ = 0.;
   P_Diabetes_Predictionprediabetes  = EXP(P_Diabetes_Predictionprediabetes
          - _MAX_);
   _SUM_ = _SUM_ + P_Diabetes_Predictionprediabetes ;
   P_Diabetes_Predictionno_diabetes  = EXP(P_Diabetes_Predictionno_diabetes
          - _MAX_);
   _SUM_ = _SUM_ + P_Diabetes_Predictionno_diabetes ;
   P_Diabetes_Predictiondiabetes  = EXP(P_Diabetes_Predictiondiabetes
          - _MAX_);
   _SUM_ = _SUM_ + P_Diabetes_Predictiondiabetes ;
   P_Diabetes_Predictionprediabetes  = P_Diabetes_Predictionprediabetes
          / _SUM_;
   P_Diabetes_Predictionno_diabetes  = P_Diabetes_Predictionno_diabetes
          / _SUM_;
   P_Diabetes_Predictiondiabetes  = P_Diabetes_Predictiondiabetes  / _SUM_;
END;
ELSE DO;
   P_Diabetes_Predictionprediabetes  = .;
   P_Diabetes_Predictionno_diabetes  = .;
   P_Diabetes_Predictiondiabetes  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_Diabetes_Predictionprediabetes  =     0.01814827740938;
   P_Diabetes_Predictionno_diabetes  =     0.84527845639926;
   P_Diabetes_Predictiondiabetes  =     0.13657326619135;
END;
*** *****************************;
*** Writing the Residuals  of the Node Diabetes_Prediction ;
*** ******************************;
IF MISSING( Diabetes_Predictionprediabetes ) THEN
        R_Diabetes_Predictionprediabetes  = . ;
ELSE R_Diabetes_Predictionprediabetes  = Diabetes_Predictionprediabetes  -
        P_Diabetes_Predictionprediabetes ;
IF MISSING( Diabetes_Predictionno_diabetes ) THEN
        R_Diabetes_Predictionno_diabetes  = . ;
ELSE R_Diabetes_Predictionno_diabetes  = Diabetes_Predictionno_diabetes  -
        P_Diabetes_Predictionno_diabetes ;
IF MISSING( Diabetes_Predictiondiabetes ) THEN R_Diabetes_Predictiondiabetes
          = . ;
ELSE R_Diabetes_Predictiondiabetes  = Diabetes_Predictiondiabetes  -
        P_Diabetes_Predictiondiabetes ;
*** *************************;
*** Writing the I_Diabetes_Prediction  AND U_Diabetes_Prediction ;
*** *************************;
_MAXP_ = P_Diabetes_Predictionprediabetes ;
I_Diabetes_Prediction  = "PREDIABETES" ;
U_Diabetes_Prediction  = "prediabetes" ;
IF( _MAXP_ LT P_Diabetes_Predictionno_diabetes  ) THEN DO;
   _MAXP_ = P_Diabetes_Predictionno_diabetes ;
   I_Diabetes_Prediction  = "NO DIABETES" ;
   U_Diabetes_Prediction  = "no diabetes" ;
END;
IF( _MAXP_ LT P_Diabetes_Predictiondiabetes  ) THEN DO;
   _MAXP_ = P_Diabetes_Predictiondiabetes ;
   I_Diabetes_Prediction  = "DIABETES   " ;
   U_Diabetes_Prediction  = "diabetes   " ;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
S_Age
S_BMI
H11
H12
H13
;
