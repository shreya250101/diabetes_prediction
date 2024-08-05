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
   H11  =    -0.00424502598116 * S_Age  +     -0.0101545029905 * S_BMI ;
   H12  =    -0.02531290440032 * S_Age  +    -0.02308562440598 * S_BMI ;
   H13  =     0.00769047564789 * S_Age  +     0.05210944836646 * S_BMI ;
   H11  = H11  +    -0.15856828397888 * AnyHealthcare0
          +     0.08255044497223 * CholCheck0  +      0.0594741759977 *
        DiffWalk0  +     0.01836593763992 * Fruits0  +    -0.15063728357136 *
        HeartDiseaseorAttack0  +     0.04648033999116 * HighBP0
          +    -0.06740558603881 * HighChol0  +      0.1771462926769 *
        HvyAlcoholConsump0  +     0.00322824972043 * NoDocbcCost0
          +     0.10062510820117 * PhysActivity0  +     0.06301049331441 *
        Sex0  +     0.03160805004044 * Smoker0  +     0.08881302540218 *
        Stroke0  +     0.07597639479174 * Veggies0 ;
   H12  = H12  +      0.0189165071292 * AnyHealthcare0
          +     0.06483363737937 * CholCheck0  +    -0.10753703823714 *
        DiffWalk0  +     0.05116006262851 * Fruits0  +     0.15351660685373 *
        HeartDiseaseorAttack0  +     0.19198071290912 * HighBP0
          +    -0.11797418574515 * HighChol0  +    -0.16226227082865 *
        HvyAlcoholConsump0  +    -0.14364189633083 * NoDocbcCost0
          +    -0.11598752725832 * PhysActivity0  +     0.03818101613509 *
        Sex0  +    -0.11634322435684 * Smoker0  +     0.05272914157631 *
        Stroke0  +    -0.00359859155848 * Veggies0 ;
   H13  = H13  +    -0.04738157578848 * AnyHealthcare0
          +    -0.08064739351664 * CholCheck0  +    -0.08216295812518 *
        DiffWalk0  +    -0.05387254220188 * Fruits0  +    -0.05445828012617 *
        HeartDiseaseorAttack0  +    -0.05732711337496 * HighBP0
          +    -0.10822733636464 * HighChol0  +     0.06026619241037 *
        HvyAlcoholConsump0  +    -0.08096641332962 * NoDocbcCost0
          +     0.16845729812554 * PhysActivity0  +     0.04193723985933 *
        Sex0  +    -0.14929165466975 * Smoker0  +    -0.03749070554682 *
        Stroke0  +     0.21321691342412 * Veggies0 ;
   H11  = H11  +     0.03081990969735 * Education1  +     0.15722891849921 *
        Education2  +     0.17612529999537 * Education3
          +     0.06357004914645 * Education4  +      0.0500038713441 *
        Education5  +     0.25358863918445 * GenHlth1
          +     0.03202922123064 * GenHlth2  +     0.02027698303199 * GenHlth3
          +     0.10756024666205 * GenHlth4  +     0.12324593859242 * Income1
          +     0.01955672774173 * Income2  +     0.14792815894551 * Income3
          +     0.02288919801339 * Income4  +     0.04133261571504 * Income5
          +     0.13581097064036 * Income6  +     0.08365935769306 * Income7
          +     0.08820006682085 * MentHlth0  +     0.02523352633947 *
        MentHlth1  +     0.10855166557194 * MentHlth2
          +     0.08313388065802 * MentHlth3  +     0.16021250382937 *
        MentHlth4  +     0.05727060713458 * MentHlth5
          +      0.0074490105472 * MentHlth6  +     0.04933594086724 *
        MentHlth7  +     0.00861934655407 * MentHlth8
          +     0.11003986728618 * MentHlth9  +     0.03434329882744 *
        MentHlth10  +     0.07273931274078 * MentHlth11
          +     0.18305831098051 * MentHlth12  +     0.09434221776468 *
        MentHlth13  +     0.07706997271458 * MentHlth14
          +     0.00709345885793 * MentHlth15  +     0.04172714215399 *
        MentHlth16  +     0.06695511147636 * MentHlth17
          +     0.06109056889548 * MentHlth18  +     0.00522884213098 *
        MentHlth19  +     0.05985780790896 * MentHlth20
          +     0.18287664634939 * MentHlth21  +     0.11423515314963 *
        MentHlth22  +     0.03889241932008 * MentHlth23
          +      0.0671573859287 * MentHlth24  +     0.11090437707779 *
        MentHlth25  +     0.06558318162203 * MentHlth26
          +     0.02115542065518 * MentHlth27  +      0.1332662849525 *
        MentHlth28  +     0.03706227171644 * MentHlth29
          +     0.02428183289038 * PhysHlth0  +     0.00922440972915 *
        PhysHlth1  +     0.10535772978437 * PhysHlth2
          +     0.04086403447772 * PhysHlth3  +     0.19729466377691 *
        PhysHlth4  +     0.15087968854087 * PhysHlth5
          +      0.0527209913589 * PhysHlth6  +     0.03296118339332 *
        PhysHlth7  +     0.06203915155515 * PhysHlth8
          +     0.04817063849203 * PhysHlth9  +     0.06733087542589 *
        PhysHlth10  +     0.23936399360617 * PhysHlth11
          +     0.10989657802739 * PhysHlth12  +     0.06731302440708 *
        PhysHlth13  +     0.07975272032252 * PhysHlth14
          +     0.12737850995873 * PhysHlth15  +     0.17311744508668 *
        PhysHlth16  +     0.17147732711589 * PhysHlth17
          +     0.08762805359863 * PhysHlth18  +     0.09599665547014 *
        PhysHlth19  +     0.07412513325474 * PhysHlth20
          +     0.08067514267039 * PhysHlth21  +     0.06607648167635 *
        PhysHlth22  +     0.17699013520424 * PhysHlth23
          +     0.03684952669286 * PhysHlth24  +     0.03481116094271 *
        PhysHlth25  +      0.0295431417447 * PhysHlth26
          +     0.12682508784246 * PhysHlth27  +     0.09814424406714 *
        PhysHlth28  +     0.00463343328682 * PhysHlth29 ;
   H12  = H12  +     0.07098552236307 * Education1  +     0.06797507253813 *
        Education2  +     0.01084301993343 * Education3
          +     0.13673860112057 * Education4  +      0.0368676206009 *
        Education5  +     0.10662064557796 * GenHlth1
          +     0.04515168372635 * GenHlth2  +     0.07497467420255 * GenHlth3
          +     0.06883159758617 * GenHlth4  +     0.15837979832461 * Income1
          +     0.02460922525778 * Income2  +     0.00734719783022 * Income3
          +     0.01277636314541 * Income4  +     0.03879119732009 * Income5
          +      0.1059002308088 * Income6  +     0.12845322219235 * Income7
          +     0.08807350764561 * MentHlth0  +     0.00476146647136 *
        MentHlth1  +     0.04642258620458 * MentHlth2
          +     0.10447544549323 * MentHlth3  +     0.01114716911633 *
        MentHlth4  +     0.00969797309236 * MentHlth5
          +      0.0358959106031 * MentHlth6  +     0.07139027023568 *
        MentHlth7  +      0.1250654892644 * MentHlth8
          +     0.13023476958823 * MentHlth9  +     0.19160857885068 *
        MentHlth10  +     0.30531389159809 * MentHlth11
          +     0.20337060763011 * MentHlth12  +     0.07428674870641 *
        MentHlth13  +     0.07413158298112 * MentHlth14
          +       0.054500147664 * MentHlth15  +     0.03274141620096 *
        MentHlth16  +     0.14483481133303 * MentHlth17
          +     0.21068982485305 * MentHlth18  +     0.11411581770192 *
        MentHlth19  +     0.12783153774621 * MentHlth20
          +     0.14132298106062 * MentHlth21  +     0.30313020594361 *
        MentHlth22  +     0.05030368790578 * MentHlth23
          +      0.1650247823294 * MentHlth24  +      0.0572992050948 *
        MentHlth25  +     0.05725732462064 * MentHlth26
          +     0.04327414304086 * MentHlth27  +     0.00713364559837 *
        MentHlth28  +      0.2273083364898 * MentHlth29
          +     0.11657200083295 * PhysHlth0  +     0.01848250206671 *
        PhysHlth1  +     0.03663656495143 * PhysHlth2
          +     0.09715573503027 * PhysHlth3  +     0.08447918141122 *
        PhysHlth4  +     0.01776292879211 * PhysHlth5
          +     0.10250431436541 * PhysHlth6  +     0.06647314167813 *
        PhysHlth7  +     0.05006616954728 * PhysHlth8
          +     0.11258247013402 * PhysHlth9  +     0.10792434733746 *
        PhysHlth10  +     0.11551081115663 * PhysHlth11
          +     0.02809371885587 * PhysHlth12  +     0.07973010068317 *
        PhysHlth13  +      0.0018212258458 * PhysHlth14
          +      0.0381830392586 * PhysHlth15  +     0.03916100849518 *
        PhysHlth16  +     0.09553365701101 * PhysHlth17
          +     0.09692011890741 * PhysHlth18  +     0.04976646878323 *
        PhysHlth19  +     0.04778544625796 * PhysHlth20
          +     0.16727296650518 * PhysHlth21  +     0.18307443707108 *
        PhysHlth22  +     0.10880988305853 * PhysHlth23
          +     0.07762711141426 * PhysHlth24  +     0.05637638142602 *
        PhysHlth25  +     0.06550443318229 * PhysHlth26
          +     0.14203511528101 * PhysHlth27  +     0.00357336326428 *
        PhysHlth28  +     0.01415420582086 * PhysHlth29 ;
   H13  = H13  +     0.02690846794019 * Education1  +     0.01131416583693 *
        Education2  +     0.09847296971186 * Education3
          +     0.05456430991668 * Education4  +      0.0828532719429 *
        Education5  +      0.0828965596412 * GenHlth1
          +     0.02101139955372 * GenHlth2  +     0.04483159393794 * GenHlth3
          +     0.03276539665895 * GenHlth4  +     0.12944334303774 * Income1
          +     0.09368353633933 * Income2  +     0.12074121263105 * Income3
          +     0.03980050446659 * Income4  +     0.04914052367593 * Income5
          +     0.22085159067189 * Income6  +     0.10001184088333 * Income7
          +     0.00770793627972 * MentHlth0  +     0.00524919800489 *
        MentHlth1  +     0.05090795458111 * MentHlth2
          +     0.04625294731639 * MentHlth3  +     0.02355346146831 *
        MentHlth4  +     0.17981821383189 * MentHlth5
          +      0.0608913629584 * MentHlth6  +     0.01616575086268 *
        MentHlth7  +     0.02334120990528 * MentHlth8
          +     0.03822736360457 * MentHlth9  +      0.1705579691864 *
        MentHlth10  +     0.11760505151254 * MentHlth11
          +      0.0159627438254 * MentHlth12  +     0.02015186996142 *
        MentHlth13  +     0.00033629697673 * MentHlth14
          +     0.09548513684917 * MentHlth15  +     0.05719076143141 *
        MentHlth16  +     0.14220916824361 * MentHlth17
          +     0.05731977808873 * MentHlth18  +     0.14312303308841 *
        MentHlth19  +     0.07773799856932 * MentHlth20
          +     0.00748103345795 * MentHlth21  +     0.19944478075945 *
        MentHlth22  +     0.07236171373073 * MentHlth23
          +      0.1838342192246 * MentHlth24  +     0.02335929728192 *
        MentHlth25  +     0.10508902642703 * MentHlth26
          +      0.0130213715273 * MentHlth27  +     0.06434535636113 *
        MentHlth28  +     0.18770215652496 * MentHlth29
          +     0.03641330678165 * PhysHlth0  +      0.2975649745081 *
        PhysHlth1  +     0.26863124647965 * PhysHlth2
          +     0.08485251182868 * PhysHlth3  +     0.06362882973044 *
        PhysHlth4  +     0.09821772777835 * PhysHlth5
          +     0.00958858617569 * PhysHlth6  +     0.08501467136832 *
        PhysHlth7  +     0.04574519273815 * PhysHlth8
          +     0.04922166209748 * PhysHlth9  +     0.07449768115858 *
        PhysHlth10  +      0.0961258526793 * PhysHlth11
          +     0.03780833765327 * PhysHlth12  +     0.07965378256349 *
        PhysHlth13  +     0.05694250377731 * PhysHlth14
          +     0.04061630941366 * PhysHlth15  +     0.03464368749358 *
        PhysHlth16  +      0.1208958242366 * PhysHlth17
          +     0.10754441020261 * PhysHlth18  +      0.0588875025026 *
        PhysHlth19  +     0.04823520884954 * PhysHlth20
          +     0.21519442173113 * PhysHlth21  +     0.14032663702294 *
        PhysHlth22  +     0.01354654125028 * PhysHlth23
          +     0.09411319330811 * PhysHlth24  +     0.06014745759162 *
        PhysHlth25  +     0.02145043601047 * PhysHlth26
          +     0.05166539939872 * PhysHlth27  +      0.0341513455526 *
        PhysHlth28  +     0.04087806858683 * PhysHlth29 ;
   H11  =     0.32483794505318 + H11 ;
   H12  =      0.5174516923615 + H12 ;
   H13  =    -1.21925060605038 + H13 ;
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
   P_Diabetes_Predictionprediabetes  =     0.00107114193697 * H11
          +     0.00064521723628 * H12  +      0.0005982560896 * H13 ;
   P_Diabetes_Predictionno_diabetes  =    -0.01396421456109 * H11
          +    -0.00521139297108 * H12  +    -0.00783930509046 * H13 ;
   P_Diabetes_Predictionprediabetes  =    -2.01823485905096 +
        P_Diabetes_Predictionprediabetes ;
   P_Diabetes_Predictionno_diabetes  =     1.82240749718223 +
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
