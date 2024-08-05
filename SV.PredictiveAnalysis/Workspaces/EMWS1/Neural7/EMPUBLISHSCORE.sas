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

      label H14 = 'Hidden: H1=4' ;

      label H15 = 'Hidden: H1=5' ;

      label I_Diabetes_Prediction = 'Into: Diabetes_Prediction' ;

      label U_Diabetes_Prediction = 'Unnormalized Into: Diabetes_Prediction' ;

      label P_Diabetes_Predictionprediabetes =
'Predicted: Diabetes_Prediction=prediabetes' ;

      label P_Diabetes_Predictionno_diabetes =
'Predicted: Diabetes_Prediction=no diabetes' ;

      label P_Diabetes_Predictiondiabetes =
'Predicted: Diabetes_Prediction=diabetes' ;

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
   H11  =    -0.00006858026337 * S_Age  +    -0.00562818495564 * S_BMI ;
   H12  =    -0.01972884238481 * S_Age  +    -0.01609383180176 * S_BMI ;
   H13  =     0.01143085915876 * S_Age  +     0.05665145040909 * S_BMI ;
   H14  =    -0.15002795907555 * S_Age  +     0.09118202367349 * S_BMI ;
   H15  =     0.05981310110273 * S_Age  +       0.018560309431 * S_BMI ;
   H11  = H11  +    -0.15038166012699 * AnyHealthcare0
          +     0.04649472320556 * CholCheck0  +    -0.07006156451625 *
        DiffWalk0  +     0.17784270555168 * Fruits0  +     0.00119157710599 *
        HeartDiseaseorAttack0  +     0.09478614399721 * HighBP0
          +     0.05859754498513 * HighChol0  +     0.03205104361349 *
        HvyAlcoholConsump0  +     0.08833375929041 * NoDocbcCost0
          +     0.07790071168519 * PhysActivity0  +     0.01805585995643 *
        Sex0  +     0.06331977956078 * Smoker0  +    -0.10836405158109 *
        Stroke0  +     0.05213839943083 * Veggies0 ;
   H12  = H12  +     0.15137012659374 * AnyHealthcare0
          +     0.18912071023447 * CholCheck0  +    -0.12116856672317 *
        DiffWalk0  +    -0.16179324009505 * Fruits0  +    -0.14499393485677 *
        HeartDiseaseorAttack0  +    -0.12337893854856 * HighBP0
          +     0.03217449742285 * HighChol0  +    -0.11335704024935 *
        HvyAlcoholConsump0  +     0.05408812185221 * NoDocbcCost0
          +    -0.00193602384772 * PhysActivity0  +    -0.04810959326132 *
        Sex0  +    -0.08218841647813 * Smoker0  +    -0.08139817774354 *
        Stroke0  +    -0.05404663577532 * Veggies0 ;
   H13  = H13  +    -0.05531421385772 * AnyHealthcare0
          +    -0.05854392868016 * CholCheck0  +    -0.11093299478864 *
        DiffWalk0  +     0.06057460809183 * Fruits0  +    -0.08236569567209 *
        HeartDiseaseorAttack0  +     0.16343250164156 * HighBP0
          +     0.03793367201595 * HighChol0  +    -0.14779749097256 *
        HvyAlcoholConsump0  +    -0.03713956752151 * NoDocbcCost0
          +     0.21476578265161 * PhysActivity0  +     0.03019248682283 *
        Sex0  +    -0.15829068469607 * Smoker0  +    -0.17623209568947 *
        Stroke0  +     0.06384097824405 * Veggies0 ;
   H14  = H14  +    -0.05024671398608 * AnyHealthcare0
          +    -0.25423824916642 * CholCheck0  +     0.02696673593444 *
        DiffWalk0  +     0.02122961024503 * Fruits0  +    -0.11090079063654 *
        HeartDiseaseorAttack0  +    -0.13347781674357 * HighBP0
          +    -0.02763620345437 * HighChol0  +     0.14892671816266 *
        HvyAlcoholConsump0  +    -0.02336249477318 * NoDocbcCost0
          +     0.04476921579339 * PhysActivity0  +     0.13390928006377 *
        Sex0  +     0.08080039359591 * Smoker0  +    -0.08939623625419 *
        Stroke0  +      0.0267284748388 * Veggies0 ;
   H15  = H15  +      0.1084047487468 * AnyHealthcare0
          +    -0.08328388181841 * CholCheck0  +     0.16011246831601 *
        DiffWalk0  +    -0.05726081015376 * Fruits0  +    -0.00744618626263 *
        HeartDiseaseorAttack0  +    -0.04956735810834 * HighBP0
          +     -0.0088152090124 * HighChol0  +     0.11018843301468 *
        HvyAlcoholConsump0  +     0.03442558838878 * NoDocbcCost0
          +     0.07278240393178 * PhysActivity0  +     -0.1830887183079 *
        Sex0  +    -0.09441361259181 * Smoker0  +     0.07714751934248 *
        Stroke0  +      0.0070375093083 * Veggies0 ;
   H11  = H11  +      0.0415974603294 * Education1  +     0.06667530490895 *
        Education2  +     0.06057572780795 * Education3
          +      0.0041892833986 * Education4  +     0.05867982085184 *
        Education5  +     0.18426623664796 * GenHlth1
          +     0.11731671029003 * GenHlth2  +     0.04076684657804 * GenHlth3
          +     0.06765749131794 * GenHlth4  +     0.11059359077203 * Income1
          +     0.06502980143143 * Income2  +     0.02034139841396 * Income3
          +     0.13219233108512 * Income4  +     0.03578899987748 * Income5
          +     0.02290078626746 * Income6  +     0.00798917993957 * Income7
          +     0.10532046044495 * MentHlth0  +     0.04087120555212 *
        MentHlth1  +     0.19733111430941 * MentHlth2
          +     0.15092799024193 * MentHlth3  +     0.05277458742322 *
        MentHlth4  +     0.03302168322273 * MentHlth5
          +     0.06209270788283 * MentHlth6  +     0.04822902174968 *
        MentHlth7  +     0.06739273929834 * MentHlth8
          +      0.2394254566139 * MentHlth9  +     0.10995004782859 *
        MentHlth10  +     0.06736669438969 * MentHlth11
          +      0.0798069889299 * MentHlth12  +     0.12743571416427 *
        MentHlth13  +     0.17317135383769 * MentHlth14
          +     0.17153023098887 * MentHlth15  +     0.08768115090253 *
        MentHlth16  +     0.09604960099484 * MentHlth17
          +     0.07417921136065 * MentHlth18  +     0.08072937527752 *
        MentHlth19  +     0.06612656273022 * MentHlth20
          +     0.17704045972105 * MentHlth21  +     0.03689984351798 *
        MentHlth22  +     0.03486163336516 * MentHlth23
          +     0.02959365135008 * MentHlth24  +     0.12687370088968 *
        MentHlth25  +     0.09819327102386 * MentHlth26
          +     0.00468285824483 * MentHlth27  +     0.07105539290175 *
        MentHlth28  +     0.06804817548622 * MentHlth29
          +     0.01128219358783 * PhysHlth0  +     0.13722335848164 *
        PhysHlth1  +     0.03733928805799 * PhysHlth2
          +     0.10704141861092 * PhysHlth3  +     0.04551584680918 *
        PhysHlth4  +     0.07531532253025 * PhysHlth5
          +     0.06918106424878 * PhysHlth6  +     0.15874047268358 *
        PhysHlth7  +     0.02496859984511 * PhysHlth8
          +     0.00771065726545 * PhysHlth9  +     0.01308489117437 *
        PhysHlth10  +     0.03910230160545 * PhysHlth11
          +     0.10620786168661 * PhysHlth12  +     0.12875596336273 *
        PhysHlth13  +     0.08833734581755 * PhysHlth14
          +     0.00496799217969 * PhysHlth15  +      0.0466266272127 *
        PhysHlth16  +     0.10467793038557 * PhysHlth17
          +     0.01134756355895 * PhysHlth18  +     0.00989741567693 *
        PhysHlth19  +     0.03606701252109 * PhysHlth20
          +     0.07155698298639 * PhysHlth21  +      0.1252308392798 *
        PhysHlth22  +     0.13039946054031 * PhysHlth23
          +     0.19177394533653 * PhysHlth24  +     0.30547008817694 *
        PhysHlth25  +      0.2035263078136 * PhysHlth26
          +     0.07444265501505 * PhysHlth27  +      0.0742855961149 *
        PhysHlth28  +     0.05465265463065 * PhysHlth29 ;
   H12  = H12  +     0.03384253161317 * Education1  +     0.14569645458383 *
        Education2  +     0.21116560854186 * Education3
          +     0.11325172589147 * Education4  +     0.12606006319974 *
        Education5  +     0.14366898331304 * GenHlth1
          +     0.30702443373165 * GenHlth2  +     0.05260897092473 * GenHlth3
          +     0.16485054807932 * GenHlth4  +     0.05788600756801 * Income1
          +     0.05738587705675 * Income2  +     0.04290784601018 * Income3
          +     0.00623428282618 * Income4  +     0.22593844780958 * Income5
          +     0.11476770213149 * Income6  +     0.01650757571449 * Income7
          +     0.03645543987928 * MentHlth0  +     0.09699630122819 *
        MentHlth1  +     0.08429753614572 * MentHlth2
          +     0.01756390597812 * MentHlth3  +      0.1022971097777 *
        MentHlth4  +     0.06623323837903 * MentHlth5
          +     0.04981181856892 * MentHlth6  +     0.11231870566276 *
        MentHlth7  +     0.10766069071316 * MentHlth8
          +     0.11524670761912 * MentHlth9  +     0.02778669137275 *
        MentHlth10  +     0.07942335145768 * MentHlth11
          +     0.00151378399572 * MentHlth12  +     0.03787535849286 *
        MentHlth13  +     0.03883457867005 * MentHlth14
          +     0.09517768905503 * MentHlth15  +      0.0965639759463 *
        MentHlth16  +     0.04941006623599 * MentHlth17
          +     0.04742907522376 * MentHlth18  +      0.1669160443519 *
        MentHlth19  +     0.18268846881309 * MentHlth20
          +     0.10842046137104 * MentHlth21  +      0.0772369030082 *
        MentHlth22  +     0.05598496688784 * MentHlth23
          +     0.06511213913337 * MentHlth24  +     0.14162701389674 *
        MentHlth25  +     0.00316612266473 * MentHlth26
          +     0.01374714198878 * MentHlth27  +     0.02649384003688 *
        MentHlth28  +     0.01090424615129 * MentHlth29
          +      0.0990649003712 * PhysHlth0  +      0.0551855081654 *
        PhysHlth1  +     0.08343831936021 * PhysHlth2
          +     0.08341673754037 * PhysHlth3  +      0.0214877567343 *
        PhysHlth4  +     0.04524599476208 * PhysHlth5
          +     0.03317430919359 * PhysHlth6  +     0.12980603944759 *
        PhysHlth7  +     0.09404004873482 * PhysHlth8
          +     0.12110186957305 * PhysHlth9  +     0.04006982039837 *
        PhysHlth10  +     0.04941392209323 * PhysHlth11
          +     0.22111871348057 * PhysHlth12  +     0.10027928056492 *
        PhysHlth13  +     0.00792973574434 * PhysHlth14
          +     0.00533956840722 * PhysHlth15  +     0.05099438384803 *
        PhysHlth16  +     0.04633743056686 * PhysHlth17
          +     0.02363332152829 * PhysHlth18  +     0.17989662797698 *
        PhysHlth19  +      0.0608984168778 * PhysHlth20
          +     0.01616373412549 * PhysHlth21  +     0.02333303983345 *
        PhysHlth22  +      0.0382171217944 * PhysHlth23
          +     0.17054966704592 * PhysHlth24  +      0.1175666776794 *
        PhysHlth25  +     0.01592217798812 * PhysHlth26
          +     0.02011137974297 * PhysHlth27  +     0.00028790540881 *
        PhysHlth28  +     0.09543124672591 * PhysHlth29 ;
   H13  = H13  +     0.05763481114324 * Education1  +     0.14250259090985 *
        Education2  +     0.05735131744253 * Education3
          +     0.14240667769463 * Education4  +     0.07660893061021 *
        Education5  +     0.00890678179667 * GenHlth1
          +     0.20207610330622 * GenHlth2  +     0.07419016561977 * GenHlth3
          +     0.18408447021761 * GenHlth4  +     0.02350937930855 * Income1
          +     0.10494600426955 * Income2  +     0.01255695752706 * Income3
          +     0.06356348703123 * Income4  +      0.1866529641843 * Income5
          +     0.03513639149655 * Income6  +     0.29623942751882 * Income7
          +      0.2685863298686 * MentHlth0  +     0.08483025483386 *
        MentHlth1  +     0.06360907429045 * MentHlth2
          +     0.09819600359267 * MentHlth3  +     0.00956409998474 *
        MentHlth4  +     0.08497677549197 * MentHlth5
          +     0.04569852219707 * MentHlth6  +     0.04917222321728 *
        MentHlth7  +     0.07444764331385 * MentHlth8
          +     0.09607562993134 * MentHlth9  +     0.03773262679564 *
        MentHlth10  +     0.07957814693514 * MentHlth11
          +     0.05686674789424 * MentHlth12  +     0.04054069472482 *
        MentHlth13  +     0.03455809333121 * MentHlth14
          +     0.12079419073583 * MentHlth15  +     0.10744293645819 *
        MentHlth16  +     0.05878603173197 * MentHlth17
          +      0.0481341211768 * MentHlth18  +     0.21509298883763 *
        MentHlth19  +     0.14020920809755 * MentHlth20
          +     0.01342700275858 * MentHlth21  +     0.09399320497072 *
        MentHlth22  +      0.0600272970895 * MentHlth23
          +     0.02132963080659 * MentHlth24  +     0.05153439592868 *
        MentHlth25  +     0.03402093118578 * MentHlth26
          +     0.04074807901988 * MentHlth27  +     0.03374354189164 *
        MentHlth28  +      0.0538244486694 * MentHlth29
          +     0.12760519930475 * PhysHlth0  +     0.08332265042153 *
        PhysHlth1  +     0.03655951635146 * PhysHlth2
          +     0.26923425322544 * PhysHlth3  +     0.02453315447472 *
        PhysHlth4  +     0.05100723484941 * PhysHlth5
          +      0.0217886469431 * PhysHlth6  +     0.16065952260949 *
        PhysHlth7  +     0.02722635719029 * PhysHlth8
          +     0.01018893913795 * PhysHlth9  +     0.03079555558327 *
        PhysHlth10  +     0.11511833897093 * PhysHlth11
          +     0.11024447174044 * PhysHlth12  +     0.07600562436147 *
        PhysHlth13  +     0.02905290969691 * PhysHlth14
          +     0.03704545096483 * PhysHlth15  +     0.12972207512156 *
        PhysHlth16  +     0.02920933284935 * PhysHlth17
          +     0.05531140436087 * PhysHlth18  +     0.16145892025476 *
        PhysHlth19  +      0.0172635470495 * PhysHlth20
          +     0.19151300720605 * PhysHlth21  +     0.00650564604163 *
        PhysHlth22  +      0.1360574964843 * PhysHlth23
          +     0.02209498353832 * PhysHlth24  +     0.12121199393567 *
        PhysHlth25  +     0.07089803724495 * PhysHlth26
          +     0.02175885354078 * PhysHlth27  +     0.01946921870115 *
        PhysHlth28  +     0.13558550942819 * PhysHlth29 ;
   H14  = H14  +      0.0180285962119 * Education1  +     0.13968238019035 *
        Education2  +     0.17863166742261 * Education3
          +     0.04684422095478 * Education4  +     0.01796493495912 *
        Education5  +      0.0388470441684 * GenHlth1
          +     0.06577542688984 * GenHlth2  +     0.11169378859226 * GenHlth3
          +     0.17560383572282 * GenHlth4  +     0.04276749079069 * Income1
          +     0.07616263498336 * Income2  +     0.09813012160623 * Income3
          +     0.00338975379894 * Income4  +     0.07971422947934 * Income5
          +     0.02876242968261 * Income6  +     0.03256092097462 * Income7
          +     0.17164732312363 * MentHlth0  +      0.2181427900618 *
        MentHlth1  +     0.04659863075795 * MentHlth2
          +     0.12820295759547 * MentHlth3  +     0.05682672112971 *
        MentHlth4  +     0.17469828975351 * MentHlth5
          +     0.12072865112838 * MentHlth6  +     0.02855507789269 *
        MentHlth7  +     0.07704291102364 * MentHlth8
          +     0.11731601186383 * MentHlth9  +      0.0410572710316 *
        MentHlth10  +     0.08624876670056 * MentHlth11
          +     0.06326784484938 * MentHlth12  +      0.0306618670598 *
        MentHlth13  +     0.07952898768441 * MentHlth14
          +     0.09665149904953 * MentHlth15  +     0.04508250872991 *
        MentHlth16  +      0.1588129296022 * MentHlth17
          +      0.0197307448175 * MentHlth18  +     0.05053753287663 *
        MentHlth19  +      0.1161926248567 * MentHlth20
          +      0.1413279985867 * MentHlth21  +     0.11311079994032 *
        MentHlth22  +     0.04711170533576 * MentHlth23
          +     0.16631027077959 * MentHlth24  +     0.11951216707148 *
        MentHlth25  +     0.00453163160581 * MentHlth26
          +     0.24261966453613 * MentHlth27  +     0.23840454999666 *
        MentHlth28  +     0.17132978498786 * MentHlth29
          +     0.13307148359642 * PhysHlth0  +      0.0278765569539 *
        PhysHlth1  +     0.03916934686112 * PhysHlth2
          +     0.14391658944357 * PhysHlth3  +     0.07901257318624 *
        PhysHlth4  +     0.17360608568457 * PhysHlth5
          +     0.09427500257755 * PhysHlth6  +     0.07091876196459 *
        PhysHlth7  +     0.08131419607651 * PhysHlth8
          +     0.01384287182402 * PhysHlth9  +     0.08282845338853 *
        PhysHlth10  +     0.11422587739968 * PhysHlth11
          +     0.04021355092524 * PhysHlth12  +     0.04687333145085 *
        PhysHlth13  +     0.03752471710985 * PhysHlth14
          +     0.05936776209202 * PhysHlth15  +     0.11251262875598 *
        PhysHlth16  +     0.04047949969932 * PhysHlth17
          +     0.17147623355288 * PhysHlth18  +     0.11948894979645 *
        PhysHlth19  +     0.01923219434567 * PhysHlth20
          +     0.19590193851693 * PhysHlth21  +     0.14679347718993 *
        PhysHlth22  +     0.13584165163146 * PhysHlth23
          +       0.077277193659 * PhysHlth24  +      0.1671134373551 *
        PhysHlth25  +     0.16270026561451 * PhysHlth26
          +     0.00458966455733 * PhysHlth27  +     0.06089591598278 *
        PhysHlth28  +      0.0129439490925 * PhysHlth29 ;
   H15  = H15  +     0.04210801821929 * Education1  +     0.01502192167239 *
        Education2  +     0.12910152614039 * Education3
          +     0.00897248111631 * Education4  +     0.11467512062017 *
        Education5  +       0.066124967223 * GenHlth1
          +     0.02368283763201 * GenHlth2  +     0.05795895369834 * GenHlth3
          +     0.02828883835917 * GenHlth4  +     0.11793444427287 * Income1
          +     0.01308411606587 * Income2  +     0.01735341679421 * Income3
          +     0.12811946201414 * Income4  +      0.0130037981393 * Income5
          +     0.01053792868501 * Income6  +     0.05764446228129 * Income7
          +     0.17201022677137 * MentHlth0  +     0.06740265023562 *
        MentHlth1  +     0.08876501532624 * MentHlth2
          +     0.08191890451432 * MentHlth3  +      0.0786817012028 *
        MentHlth4  +     0.00324939285938 * MentHlth5
          +     0.18328472401022 * MentHlth6  +     0.09100299074301 *
        MentHlth7  +     0.00175750914049 * MentHlth8
          +     0.12371977024163 * MentHlth9  +     0.02885631740046 *
        MentHlth10  +     0.10982448810619 * MentHlth11
          +     0.08615825696868 * MentHlth12  +     0.11581486479021 *
        MentHlth13  +     0.07701958525549 * MentHlth14
          +     0.04894496454899 * MentHlth15  +      0.0876831024397 *
        MentHlth16  +     0.08227463676614 * MentHlth17
          +     0.04083810532813 * MentHlth18  +     0.11144631873591 *
        MentHlth19  +     0.05963152813043 * MentHlth20
          +     0.13290574130005 * MentHlth21  +     0.00028311154156 *
        MentHlth22  +      0.0950425749826 * MentHlth23
          +     0.03661444498499 * MentHlth24  +     0.09649671503059 *
        MentHlth25  +     0.04962177535569 * MentHlth26
          +     0.01512979247074 * MentHlth27  +     0.13568790221849 *
        MentHlth28  +     0.12375410418357 * MentHlth29
          +     0.03461884071521 * PhysHlth0  +     0.08057957860152 *
        PhysHlth1  +     0.03064007767448 * PhysHlth2
          +     0.00252351350125 * PhysHlth3  +     0.05744635932273 *
        PhysHlth4  +     0.07145149588972 * PhysHlth5
          +     0.05414039538772 * PhysHlth6  +     0.05490582246441 *
        PhysHlth7  +      0.1104657158471 * PhysHlth8
          +     0.04179891396232 * PhysHlth9  +     0.03413170141694 *
        PhysHlth10  +     0.02080904741893 * PhysHlth11
          +     0.05689846992738 * PhysHlth12  +     0.14574752097125 *
        PhysHlth13  +     0.04628524621267 * PhysHlth14
          +     0.03718194420291 * PhysHlth15  +     0.09647421696716 *
        PhysHlth16  +     0.19310169938379 * PhysHlth17
          +     0.19144214081184 * PhysHlth18  +     0.04240008641554 *
        PhysHlth19  +     0.13488569373483 * PhysHlth20
          +     0.03531989432861 * PhysHlth21  +     0.11050776957005 *
        PhysHlth22  +     0.03779581725165 * PhysHlth23
          +     0.10966767059865 * PhysHlth24  +     0.13708336315498 *
        PhysHlth25  +     0.06491895883628 * PhysHlth26
          +     0.10212315034728 * PhysHlth27  +     0.18795234477221 *
        PhysHlth28  +      0.0069690821311 * PhysHlth29 ;
   H11  =     0.83985418472982 + H11 ;
   H12  =     0.32961844711656 + H12 ;
   H13  =     0.36699300761304 + H13 ;
   H14  =     0.48818198633713 + H14 ;
   H15  =    -1.44466104053378 + H15 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
   H14  = TANH(H14 );
   H15  = TANH(H15 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
   H14  = .;
   H15  = .;
END;
*** *************************;
*** Writing the Node Diabetes_Prediction ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   P_Diabetes_Predictionprediabetes  =     0.00305150972951 * H11
          +     0.00476046756602 * H12  +     0.00354390093888 * H13
          +     0.00665082895125 * H14  +    -0.00068798743614 * H15 ;
   P_Diabetes_Predictionno_diabetes  =    -0.04637228985254 * H11
          +    -0.08186846907814 * H12  +    -0.05747238345579 * H13
          +    -0.09223635724077 * H14  +    -0.00443207843996 * H15 ;
   P_Diabetes_Predictionprediabetes  =    -2.01604850541487 +
        P_Diabetes_Predictionprediabetes ;
   P_Diabetes_Predictionno_diabetes  =     1.80458085260516 +
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
H14
H15
;
