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
   H11  =     0.11331019126113 * S_Age  +     0.09141599563174 * S_BMI ;
   H12  =     0.12856706581806 * S_Age  +     0.17450315244205 * S_BMI ;
   H13  =    -0.00902024883263 * S_Age  +     0.06226536636351 * S_BMI ;
   H14  =     0.15627653590545 * S_Age  +     0.33535308208735 * S_BMI ;
   H15  =      0.0477465609783 * S_Age  +     0.01228082961112 * S_BMI ;
   H11  = H11  +    -0.15307655446736 * AnyHealthcare0
          +     0.03024136912012 * CholCheck0  +    -0.11238420185017 * 
        DiffWalk0  +     0.19616694000896 * Fruits0  +    -0.00940038777893 * 
        HeartDiseaseorAttack0  +     0.02415366383902 * HighBP0
          +    -0.01199195048395 * HighChol0  +     0.05510793835955 * 
        HvyAlcoholConsump0  +     0.08363406007956 * NoDocbcCost0
          +     0.10963869052065 * PhysActivity0  +    -0.00605439416504 * 
        Sex0  +     0.03517105221799 * Smoker0  +    -0.11567821437915 * 
        Stroke0  +     0.06796238221448 * Veggies0 ;
   H12  = H12  +     0.19873577167438 * AnyHealthcare0
          +     0.20683020141906 * CholCheck0  +    -0.09054885783063 * 
        DiffWalk0  +    -0.15078505915363 * Fruits0  +    -0.19597130371784 * 
        HeartDiseaseorAttack0  +    -0.22892958514318 * HighBP0
          +    -0.11199832102929 * HighChol0  +    -0.10687226382224 * 
        HvyAlcoholConsump0  +     0.03116057039186 * NoDocbcCost0
          +    -0.02071707249471 * PhysActivity0  +    -0.13391575900644 * 
        Sex0  +    -0.08327496686027 * Smoker0  +    -0.12580154532024 * 
        Stroke0  +    -0.02496687331514 * Veggies0 ;
   H13  = H13  +     0.00767715278727 * AnyHealthcare0
          +     0.00564653134065 * CholCheck0  +    -0.13142778852357 * 
        DiffWalk0  +     0.08098922348056 * Fruits0  +     -0.1310333599263 * 
        HeartDiseaseorAttack0  +     0.18778080262136 * HighBP0
          +     0.03779944996427 * HighChol0  +     -0.2015065996734 * 
        HvyAlcoholConsump0  +     -0.0901172275903 * NoDocbcCost0
          +     0.23952172800745 * PhysActivity0  +     0.02301094836618 * 
        Sex0  +    -0.14783623560424 * Smoker0  +    -0.24160763852628 * 
        Stroke0  +     0.09820811611419 * Veggies0 ;
   H14  = H14  +    -0.03330255135009 * AnyHealthcare0
          +    -0.26692185399586 * CholCheck0  +    -0.00849752297359 * 
        DiffWalk0  +     0.03234465599597 * Fruits0  +    -0.16006267129423 * 
        HeartDiseaseorAttack0  +    -0.32733015755384 * HighBP0
          +    -0.21549290450825 * HighChol0  +     0.20121355872445 * 
        HvyAlcoholConsump0  +    -0.03096643468071 * NoDocbcCost0
          +     0.07170417437101 * PhysActivity0  +     0.04584441724067 * 
        Sex0  +     0.04558392051323 * Smoker0  +    -0.11946519005378 * 
        Stroke0  +     0.05577167327439 * Veggies0 ;
   H15  = H15  +      0.0279589406039 * AnyHealthcare0
          +    -0.16944212089402 * CholCheck0  +     0.14397941244967 * 
        DiffWalk0  +    -0.07748608274447 * Fruits0  +     0.04287530993946 * 
        HeartDiseaseorAttack0  +    -0.05814156277128 * HighBP0
          +     0.00324998562112 * HighChol0  +     0.18796073141889 * 
        HvyAlcoholConsump0  +     0.09126245469055 * NoDocbcCost0
          +     0.07241435979287 * PhysActivity0  +    -0.15621587563979 * 
        Sex0  +    -0.11604241825296 * Smoker0  +     0.14982348207428 * 
        Stroke0  +    -0.03990550840415 * Veggies0 ;
   H11  = H11  +     0.03848467866714 * Education1  +     0.05589204277895 * 
        Education2  +      0.0405064464977 * Education3
          +   1.000000000341E-10 * Education4  +     0.02176886520713 * 
        Education5  +     0.21429353703128 * GenHlth1
          +     0.18766043334033 * GenHlth2  +     0.08181816604726 * GenHlth3
          +     0.07464429640496 * GenHlth4  +     0.10115259787786 * Income1
          +     0.04806318156801 * Income2  +  1.0000000000699E-10 * Income3
          +     0.09879121455599 * Income4  +  9.9999999993443E-11 * Income5
          +   1.000000000341E-10 * Income6  +  1.0000000000021E-10 * Income7
          +     0.09302667464203 * MentHlth0  +     0.02979803185234 * 
        MentHlth1  +     0.18733454566291 * MentHlth2
          +     0.14154819558336 * MentHlth3  +     0.04362196174376 * 
        MentHlth4  +     0.02482747969282 * MentHlth5
          +      0.0535972004446 * MentHlth6  +     0.04025545886512 * 
        MentHlth7  +     0.05948309186963 * MentHlth8
          +      0.2315271648538 * MentHlth9  +     0.10344723431942 * 
        MentHlth10  +     0.06088049545508 * MentHlth11
          +     0.07336330125846 * MentHlth12  +     0.12094435585727 * 
        MentHlth13  +     0.16679512519636 * MentHlth14
          +     0.16683871704136 * MentHlth15  +      0.0830455135919 * 
        MentHlth16  +     0.09141955923002 * MentHlth17
          +     0.06956213593684 * MentHlth18  +     0.07611310756967 * 
        MentHlth19  +     0.06234083887615 * MentHlth20
          +     0.17339383485322 * MentHlth21  +     0.03328070085103 * 
        MentHlth22  +     0.03122806151525 * MentHlth23
          +     0.02597666229416 * MentHlth24  +     0.12363931637273 * 
        MentHlth25  +     0.09499396421876 * MentHlth26
          +     0.00154606610164 * MentHlth27  +     0.06811235347014 * 
        MentHlth28  +     0.06521386287043 * MentHlth29
          +     0.00974566583987 * PhysHlth0  +     0.13597471100877 * 
        PhysHlth1  +     0.03521448596107 * PhysHlth2
          +     0.10505168465405 * PhysHlth3  +     0.04313757590542 * 
        PhysHlth4  +     0.07306042912976 * PhysHlth5
          +     0.06653219490812 * PhysHlth6  +     0.15618358499879 * 
        PhysHlth7  +     0.02248722169367 * PhysHlth8
          +     0.00525236179599 * PhysHlth9  +     0.00996239196546 * 
        PhysHlth10  +     0.03596019803677 * PhysHlth11
          +     0.10314282772756 * PhysHlth12  +     0.12565740865661 * 
        PhysHlth13  +     0.08571636755057 * PhysHlth14
          +     0.00214671845941 * PhysHlth15  +      0.0437353520311 * 
        PhysHlth16  +     0.10174648977933 * PhysHlth17
          +     0.00839242564891 * PhysHlth18  +     0.00691157942185 * 
        PhysHlth19  +     0.03386412586527 * PhysHlth20
          +     0.06944664049301 * PhysHlth21  +     0.12307406942125 * 
        PhysHlth22  +     0.12823588628206 * PhysHlth23
          +     0.18969166789223 * PhysHlth24  +     0.30368791620352 * 
        PhysHlth25  +     0.20174144834447 * PhysHlth26
          +     0.07272424677496 * PhysHlth27  +     0.07270536846485 * 
        PhysHlth28  +     0.05305640386144 * PhysHlth29 ;
   H12  = H12  +  1.0000000000699E-10 * Education1  +     0.09230052146207 * 
        Education2  +     0.14763502014708 * Education3
          +     0.06309812542297 * Education4  +     0.08946136362001 * 
        Education5  +     0.12862382664687 * GenHlth1
          +     0.33200230356928 * GenHlth2  +     0.07436681598384 * GenHlth3
          +     0.16757376139657 * GenHlth4  +     0.02237307857752 * Income1
          +     0.01735082830586 * Income2  +   1.000000000341E-10 * Income3
          +   1.000000000341E-10 * Income4  +     0.16998728541083 * Income5
          +      0.0675094814374 * Income6  +   1.000000000341E-10 * Income7
          +   1.000000000341E-10 * MentHlth0  +     0.05125273958485 * 
        MentHlth1  +     0.03951076437723 * MentHlth2
          +   1.000000000341E-10 * MentHlth3  +      0.0593537180158 * 
        MentHlth4  +     0.02518838929878 * MentHlth5
          +     0.00813732194844 * MentHlth6  +      0.0716530841133 * 
        MentHlth7  +     0.06729284868444 * MentHlth8
          +     0.07499839034948 * MentHlth9  +   9.999999997989E-11 * 
        MentHlth10  +     0.04341070987598 * MentHlth11
          +   1.000000000341E-10 * MentHlth12  +     0.00208284811951 * 
        MentHlth13  +      0.0028513295386 * MentHlth14
          +     0.06584298057119 * MentHlth15  +     0.06740167980518 * 
        MentHlth16  +      0.0203451671093 * MentHlth17
          +     0.01850489349696 * MentHlth18  +      0.1379686812492 * 
        MentHlth19  +     0.15858628684939 * MentHlth20
          +     0.08454014068009 * MentHlth21  +     0.05339058215422 * 
        MentHlth22  +     0.03207408708896 * MentHlth23
          +     0.04120052734852 * MentHlth24  +     0.11991704845902 * 
        MentHlth25  +   1.000000000341E-10 * MentHlth26
          +  9.9999999993443E-11 * MentHlth27  +     0.00671727944046 * 
        MentHlth28  +  9.9999999993443E-11 * MentHlth29
          +     0.06007790373236 * PhysHlth0  +     0.01533191670417 * 
        PhysHlth1  +     0.04078827349644 * PhysHlth2
          +     0.04132566857013 * PhysHlth3  +   1.000000000341E-10 * 
        PhysHlth4  +        0.00301224469 * PhysHlth5
          +   9.999999997989E-11 * PhysHlth6  +     0.08804915380744 * 
        PhysHlth7  +     0.05264093291363 * PhysHlth8
          +     0.07977336346745 * PhysHlth9  +  1.0000000014252E-10 * 
        PhysHlth10  +     0.00930384891279 * PhysHlth11
          +     0.18129257671051 * PhysHlth12  +     0.06034704978124 * 
        PhysHlth13  +  1.0000000014252E-10 * PhysHlth14
          +   1.000000000341E-10 * PhysHlth15  +      0.0137749921839 * 
        PhysHlth16  +     0.00920652486826 * PhysHlth17
          +   1.000000000341E-10 * PhysHlth18  +     0.14267568876701 * 
        PhysHlth19  +      0.0288804553312 * PhysHlth20
          +   9.999999997989E-11 * PhysHlth21  +  1.0000000000699E-10 * 
        PhysHlth22  +     0.00633752859698 * PhysHlth23
          +     0.13912880103748 * PhysHlth24  +     0.08907518550066 * 
        PhysHlth25  +   9.999999997989E-11 * PhysHlth26
          +   1.000000000341E-10 * PhysHlth27  +   9.999999997989E-11 * 
        PhysHlth28  +     0.06914319590577 * PhysHlth29 ;
   H13  = H13  +     0.01917936821235 * Education1  +     0.10405478565528 * 
        Education2  +     0.02292711434605 * Education3
          +     0.13390094224642 * Education4  +     0.09081247027785 * 
        Education5  +   1.000000000341E-10 * GenHlth1
          +     0.18372872997725 * GenHlth2  +      0.0909344169656 * GenHlth3
          +     0.21812560306959 * GenHlth4  +  1.0000000000021E-10 * Income1
          +      0.0802429265884 * Income2  +   9.999999997989E-11 * Income3
          +      0.0491521943918 * Income4  +     0.18057613621096 * Income5
          +     0.04030842204524 * Income6  +     0.31166753681638 * Income7
          +     0.27088173812077 * MentHlth0  +      0.0877304152631 * 
        MentHlth1  +     0.06756224276793 * MentHlth2
          +     0.10280247777657 * MentHlth3  +     0.01440293686376 * 
        MentHlth4  +     0.09019968528752 * MentHlth5
          +     0.05089866566989 * MentHlth6  +     0.05440629775147 * 
        MentHlth7  +     0.07968213113227 * MentHlth8
          +     0.10134032115313 * MentHlth9  +     0.04355148086435 * 
        MentHlth10  +     0.08538383254415 * MentHlth11
          +     0.06276005074595 * MentHlth12  +     0.04637297765196 * 
        MentHlth13  +     0.04015127761371 * MentHlth14
          +      0.1277458940637 * MentHlth15  +     0.11444548131779 * 
        MentHlth16  +     0.06584787511455 * MentHlth17
          +     0.05528880836551 * MentHlth18  +     0.22222023203257 * 
        MentHlth19  +     0.14825260644239 * MentHlth20
          +      0.0215107394416 * MentHlth21  +     0.10209910758489 * 
        MentHlth22  +     0.06812035116568 * MentHlth23
          +     0.02940669244417 * MentHlth24  +     0.06009679080915 * 
        MentHlth25  +     0.04260498432337 * MentHlth26
          +       0.049394341936 * MentHlth27  +     0.04275060997014 * 
        MentHlth28  +     0.06295583649234 * MentHlth29
          +     0.12726563097813 * PhysHlth0  +     0.08390209143226 * 
        PhysHlth1  +     0.03856249545293 * PhysHlth2
          +     0.27263008590681 * PhysHlth3  +     0.02848887513721 * 
        PhysHlth4  +     0.05512152324159 * PhysHlth5
          +     0.02608718210312 * PhysHlth6  +     0.16525751679981 * 
        PhysHlth7  +     0.03196313634622 * PhysHlth8
          +     0.01498052319346 * PhysHlth9  +     0.03625010062288 * 
        PhysHlth10  +     0.12058195819908 * PhysHlth11
          +      0.1157299708589 * PhysHlth12  +     0.08148492209653 * 
        PhysHlth13  +     0.03500273474453 * PhysHlth14
          +     0.04303672890914 * PhysHlth15  +     0.13568684291278 * 
        PhysHlth16  +     0.03522989269573 * PhysHlth17
          +     0.06128663965639 * PhysHlth18  +      0.1674586251151 * 
        PhysHlth19  +     0.02445394068612 * PhysHlth20
          +     0.19874213191752 * PhysHlth21  +     0.01362750503529 * 
        PhysHlth22  +      0.1431544570639 * PhysHlth23
          +     0.02937707666124 * PhysHlth24  +     0.12925172497092 * 
        PhysHlth25  +     0.07888564497251 * PhysHlth26
          +     0.02987976584374 * PhysHlth27  +     0.02791039376161 * 
        PhysHlth28  +     0.14391205066835 * PhysHlth29 ;
   H14  = H14  +   1.000000000341E-10 * Education1  +     0.09962151324848 * 
        Education2  +     0.11397676144223 * Education3
          +   1.000000000341E-10 * Education4  +   1.000000000341E-10 * 
        Education5  +      0.0904363505678 * GenHlth1
          +     0.19405948658343 * GenHlth2  +     0.17844364930948 * GenHlth3
          +       0.181264592063 * GenHlth4  +     0.01088755410398 * Income1
          +     0.02515578907582 * Income2  +     0.02966742022296 * Income3
          +   1.000000000341E-10 * Income4  +  1.0000000000021E-10 * Income5
          +  9.9999999600419E-11 * Income6  +   1.000000000341E-10 * Income7
          +     0.11282427945083 * MentHlth0  +     0.16167956700886 * 
        MentHlth1  +   1.000000000341E-10 * MentHlth2
          +     0.07505909636611 * MentHlth3  +     0.00483605489118 * 
        MentHlth4  +     0.12629688692982 * MentHlth5
          +      0.0713833280061 * MentHlth6  +  1.0000000000699E-10 * 
        MentHlth7  +     0.02952735570357 * MentHlth8
          +     0.06984608828755 * MentHlth9  +     0.00112100557986 * 
        MentHlth10  +     0.04631248889741 * MentHlth11
          +     0.02379220408711 * MentHlth12  +   1.000000000341E-10 * 
        MentHlth13  +     0.04062069567681 * MentHlth14
          +      0.0666608938968 * MentHlth15  +     0.01530206973502 * 
        MentHlth16  +     0.12908436889401 * MentHlth17
          +   1.000000000341E-10 * MentHlth18  +     0.02091450752695 * 
        MentHlth19  +     0.09169878520691 * MentHlth20
          +     0.11730504814881 * MentHlth21  +     0.08909440897702 * 
        MentHlth22  +     0.02313166749474 * MentHlth23
          +     0.14234842211027 * MentHlth24  +     0.09816585438521 * 
        MentHlth25  +   9.999999992568E-11 * MentHlth26
          +     0.22174894878154 * MentHlth27  +     0.21863142117208 * 
        MentHlth28  +     0.15197028256271 * MentHlth29
          +     0.09707069218506 * PhysHlth0  +   1.000000000341E-10 * 
        PhysHlth1  +     0.00171125930117 * PhysHlth2
          +     0.10759488806901 * PhysHlth3  +     0.04189399367191 * 
        PhysHlth4  +      0.1374031136151 * PhysHlth5
          +     0.05707741394402 * PhysHlth6  +     0.03499932037879 * 
        PhysHlth7  +     0.04615629328198 * PhysHlth8
          +   1.000000000341E-10 * PhysHlth9  +     0.04781855827436 * 
        PhysHlth10  +      0.0791384225682 * PhysHlth11
          +     0.00551225808785 * PhysHlth12  +     0.01203235632184 * 
        PhysHlth13  +     0.00503346711647 * PhysHlth14
          +     0.02914304912685 * PhysHlth15  +     0.08202816842438 * 
        PhysHlth16  +     0.00997736310431 * PhysHlth17
          +     0.14111578929647 * PhysHlth18  +     0.08903314918666 * 
        PhysHlth19  +   1.000000000341E-10 * PhysHlth20
          +     0.17051434120017 * PhysHlth21  +     0.12131640631367 * 
        PhysHlth22  +     0.11040039496166 * PhysHlth23
          +     0.05221072789858 * PhysHlth24  +     0.14439630125061 * 
        PhysHlth25  +     0.13999676298711 * PhysHlth26
          +  9.9999999993443E-11 * PhysHlth27  +     0.03918004459113 * 
        PhysHlth28  +  1.0000000000699E-10 * PhysHlth29 ;
   H15  = H15  +     0.09077077127987 * Education1  +     0.06391088184183 * 
        Education2  +      0.1736724569125 * Education3
          +     0.02631964267847 * Education4  +     0.10306219535897 * 
        Education5  +     0.11334764632244 * GenHlth1
          +     0.05573917936851 * GenHlth2  +     0.06854705772732 * GenHlth3
          +     0.01012632455371 * GenHlth4  +     0.15255612136141 * Income1
          +     0.04095308734256 * Income2  +     0.03807242428208 * Income3
          +     0.14286706938566 * Income4  +     0.01954405975963 * Income5
          +     0.00618094301608 * Income6  +     0.04090675752126 * Income7
          +     0.18702269368984 * MentHlth0  +     0.08185680080618 * 
        MentHlth1  +     0.10207491258264 * MentHlth2
          +     0.09426793113597 * MentHlth3  +     0.09053726209939 * 
        MentHlth4  +     0.01373775275995 * MentHlth5
          +     0.19375758981827 * MentHlth6  +     0.10086801585689 * 
        MentHlth7  +     0.01146566570127 * MentHlth8
          +     0.13338742924634 * MentHlth9  +     0.03602232226111 * 
        MentHlth10  +     0.11697874200267 * MentHlth11
          +     0.09310289459028 * MentHlth12  +     0.12277278641836 * 
        MentHlth13  +     0.08367571024233 * MentHlth14
          +     0.05187192329245 * MentHlth15  +     0.09049284387279 * 
        MentHlth16  +      0.0850205030098 * MentHlth17
          +     0.04349780254589 * MentHlth18  +     0.11410928626174 * 
        MentHlth19  +     0.05952093716186 * MentHlth20
          +     0.13263858199618 * MentHlth21  +                1E-10 * 
        MentHlth22  +     0.09474245401093 * MentHlth23
          +     0.03628676966587 * MentHlth24  +     0.09478779402812 * 
        MentHlth25  +     0.04786274989716 * MentHlth26
          +       0.013209973414 * MentHlth27  +     0.13321718939973 * 
        MentHlth28  +     0.12106319420158 * MentHlth29
          +     0.05373511915496 * PhysHlth0  +     0.09932140118875 * 
        PhysHlth1  +     0.04890568015784 * PhysHlth2
          +     0.02003643491646 * PhysHlth3  +     0.07465034998746 * 
        PhysHlth4  +     0.08797821805318 * PhysHlth5
          +     0.07056911265459 * PhysHlth6  +     0.07062685744152 * 
        PhysHlth7  +     0.12602845433837 * PhysHlth8
          +     0.05730652188393 * PhysHlth9  +     0.04855269969703 * 
        PhysHlth10  +     0.03521738918534 * PhysHlth11
          +     0.07114045283845 * PhysHlth12  +     0.15996632249317 * 
        PhysHlth13  +     0.05952928792089 * PhysHlth14
          +     0.04868725674746 * PhysHlth15  +     0.10800134423602 * 
        PhysHlth16  +     0.20458218863147 * PhysHlth17
          +     0.20289762614931 * PhysHlth18  +     0.05387344039668 * 
        PhysHlth19  +     0.14355428154644 * PhysHlth20
          +     0.04358694135194 * PhysHlth21  +     0.11877280944953 * 
        PhysHlth22  +     0.04603906611729 * PhysHlth23
          +     0.11771734306605 * PhysHlth24  +     0.14337324742996 * 
        PhysHlth25  +     0.07116771102162 * PhysHlth26
          +     0.10816741453661 * PhysHlth27  +     0.19315217063065 * 
        PhysHlth28  +     0.01205821416969 * PhysHlth29 ;
   H11  =       0.833802057002 + H11 ;
   H12  =     0.25594610112067 + H12 ;
   H13  =     0.29105481454068 + H13 ;
   H14  =     0.45180217477765 + H14 ;
   H15  =    -1.34854722632395 + H15 ;
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
   P_Diabetes_Predictionprediabetes  =    -0.02629764031299 * H11
          +    -0.01484589747323 * H12  +      0.0014347522687 * H13
          +     0.00647961958545 * H14  +    -0.04788687949451 * H15 ;
   P_Diabetes_Predictionno_diabetes  =    -0.28814512887044 * H11
          +    -0.74303082563363 * H12  +    -0.27791160166953 * H13
          +    -0.97220838877762 * H14  +     0.29447436808377 * H15 ;
   P_Diabetes_Predictionprediabetes  =    -1.99414698079839 + 
        P_Diabetes_Predictionprediabetes ;
   P_Diabetes_Predictionno_diabetes  =     1.49206332776799 + 
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
