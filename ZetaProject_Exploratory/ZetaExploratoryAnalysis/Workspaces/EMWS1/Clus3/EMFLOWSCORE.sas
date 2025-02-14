*****************************************;
*** Begin Scoring Code from PROC DMVQ ***;
*****************************************;


*** Begin Class Look-up, Standardization, Replacement ;
drop _dm_bad; _dm_bad = 0;

*** Standardize Age ;
drop T_Age ;
if missing( Age ) then T_Age = .;
else T_Age = (Age - 8.05176802824004) * 0.32679747529256;

*** Standardize BMI ;
drop T_BMI ;
if missing( BMI ) then T_BMI = .;
else T_BMI = (BMI - 27.8250408472012) * 0.18851519374223;

*** Generate dummy variables for AnyHealthcare ;
drop AnyHealthcare0 AnyHealthcare1 ;
if missing( AnyHealthcare ) then do;
   AnyHealthcare0 = .;
   AnyHealthcare1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( AnyHealthcare , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      AnyHealthcare0 = -0.15940630304357;
      AnyHealthcare1 = 0.15940630304357;
   end;
   else if _dm12 = '0'  then do;
      AnyHealthcare0 = 3.13662617667999;
      AnyHealthcare1 = -3.13662617667999;
   end;
   else do;
      AnyHealthcare0 = .;
      AnyHealthcare1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for CholCheck ;
drop CholCheck0 CholCheck1 ;
if missing( CholCheck ) then do;
   CholCheck0 = .;
   CholCheck1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( CholCheck , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      CholCheck0 = -0.13978817572022;
      CholCheck1 = 0.13978817572022;
   end;
   else if _dm12 = '0'  then do;
      CholCheck0 = 3.57682601034125;
      CholCheck1 = -3.57682601034125;
   end;
   else do;
      CholCheck0 = .;
      CholCheck1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for DiffWalk ;
drop DiffWalk0 DiffWalk1 ;
if missing( DiffWalk ) then do;
   DiffWalk0 = .;
   DiffWalk1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( DiffWalk , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      DiffWalk0 = 0.3095643103152;
      DiffWalk1 = -0.3095643103152;
   end;
   else if _dm12 = '1'  then do;
      DiffWalk0 = -1.6151667559647;
      DiffWalk1 = 1.6151667559647;
   end;
   else do;
      DiffWalk0 = .;
      DiffWalk1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Fruits ;
drop Fruits0 Fruits1 ;
if missing( Fruits ) then do;
   Fruits0 = .;
   Fruits1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Fruits , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Fruits0 = -0.5342681311123;
      Fruits1 = 0.5342681311123;
   end;
   else if _dm12 = '0'  then do;
      Fruits0 = 0.93585590031975;
      Fruits1 = -0.93585590031975;
   end;
   else do;
      Fruits0 = .;
      Fruits1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HeartDiseaseorAttack ;
drop HeartDiseaseorAttack0 HeartDiseaseorAttack1 ;
if missing( HeartDiseaseorAttack ) then do;
   HeartDiseaseorAttack0 = .;
   HeartDiseaseorAttack1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HeartDiseaseorAttack , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HeartDiseaseorAttack0 = 0.22710871668592;
      HeartDiseaseorAttack1 = -0.22710871668592;
   end;
   else if _dm12 = '1'  then do;
      HeartDiseaseorAttack0 = -2.20157988715912;
      HeartDiseaseorAttack1 = 2.20157988715912;
   end;
   else do;
      HeartDiseaseorAttack0 = .;
      HeartDiseaseorAttack1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighBP ;
drop HighBP0 HighBP1 ;
if missing( HighBP ) then do;
   HighBP0 = .;
   HighBP1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighBP , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HighBP0 = 0.60662950455921;
      HighBP1 = -0.60662950455921;
   end;
   else if _dm12 = '1'  then do;
      HighBP0 = -0.82422298799588;
      HighBP1 = 0.82422298799588;
   end;
   else do;
      HighBP0 = .;
      HighBP1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HighChol ;
drop HighChol0 HighChol1 ;
if missing( HighChol ) then do;
   HighChol0 = .;
   HighChol1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HighChol , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HighChol0 = 0.60519767235518;
      HighChol1 = -0.60519767235518;
   end;
   else if _dm12 = '1'  then do;
      HighChol0 = -0.82617301039587;
      HighChol1 = 0.82617301039587;
   end;
   else do;
      HighChol0 = .;
      HighChol1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HvyAlcoholConsump ;
drop HvyAlcoholConsump0 HvyAlcoholConsump1 ;
if missing( HvyAlcoholConsump ) then do;
   HvyAlcoholConsump0 = .;
   HvyAlcoholConsump1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( HvyAlcoholConsump , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      HvyAlcoholConsump0 = 0.17357304228491;
      HvyAlcoholConsump1 = -0.17357304228491;
   end;
   else if _dm12 = '1'  then do;
      HvyAlcoholConsump0 = -2.88062003334322;
      HvyAlcoholConsump1 = 2.88062003334322;
   end;
   else do;
      HvyAlcoholConsump0 = .;
      HvyAlcoholConsump1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for NoDocbcCost ;
drop NoDocbcCost0 NoDocbcCost1 ;
if missing( NoDocbcCost ) then do;
   NoDocbcCost0 = .;
   NoDocbcCost1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( NoDocbcCost , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      NoDocbcCost0 = 0.21203136396168;
      NoDocbcCost1 = -0.21203136396168;
   end;
   else if _dm12 = '1'  then do;
      NoDocbcCost0 = -2.35813218154186;
      NoDocbcCost1 = 2.35813218154186;
   end;
   else do;
      NoDocbcCost0 = .;
      NoDocbcCost1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for PhysActivity ;
drop PhysActivity0 PhysActivity1 ;
if missing( PhysActivity ) then do;
   PhysActivity0 = .;
   PhysActivity1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( PhysActivity , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      PhysActivity0 = -0.39540760740426;
      PhysActivity1 = 0.39540760740426;
   end;
   else if _dm12 = '0'  then do;
      PhysActivity0 = 1.26451280524572;
      PhysActivity1 = -1.26451280524572;
   end;
   else do;
      PhysActivity0 = .;
      PhysActivity1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Sex ;
drop Sex0 Sex1 ;
if missing( Sex ) then do;
   Sex0 = .;
   Sex1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Sex , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Sex0 = 0.63067022233455;
      Sex1 = -0.63067022233455;
   end;
   else if _dm12 = '1'  then do;
      Sex0 = -0.79280417109819;
      Sex1 = 0.79280417109819;
   end;
   else do;
      Sex0 = .;
      Sex1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Smoker ;
drop Smoker0 Smoker1 ;
if missing( Smoker ) then do;
   Smoker0 = .;
   Smoker1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Smoker , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Smoker0 = 0.63114466603367;
      Smoker1 = -0.63114466603367;
   end;
   else if _dm12 = '1'  then do;
      Smoker0 = -0.7922082048105;
      Smoker1 = 0.7922082048105;
   end;
   else do;
      Smoker0 = .;
      Smoker1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Stroke ;
drop Stroke0 Stroke1 ;
if missing( Stroke ) then do;
   Stroke0 = .;
   Stroke1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Stroke , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      Stroke0 = 0.14489743273379;
      Stroke1 = -0.14489743273378;
   end;
   else if _dm12 = '1'  then do;
      Stroke0 = -3.45070284145663;
      Stroke1 = 3.45070284145663;
   end;
   else do;
      Stroke0 = .;
      Stroke1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Veggies ;
drop Veggies0 Veggies1 ;
if missing( Veggies ) then do;
   Veggies0 = .;
   Veggies1 = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Veggies , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Veggies0 = -0.33925255015504;
      Veggies1 = 0.33925255015504;
   end;
   else if _dm12 = '0'  then do;
      Veggies0 = 1.47382232683513;
      Veggies1 = -1.47382232683513;
   end;
   else do;
      Veggies0 = .;
      Veggies1 = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Education ;
drop T_Education ;
if missing( Education ) then do;
   T_Education = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Education , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '3'  then do;
         if _dm12 = '2'  then do;
            T_Education = -1.81032358932347;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '3'  then do;
               T_Education = -1.71362805228958;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '4'  then do;
            T_Education = -1.19282563753062;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '5'  then do;
         T_Education = -0.23450021957985;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '6'  then do;
            T_Education = 1.05502095498466;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      T_Education = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GenHlth ;
drop T_GenHlth ;
if missing( GenHlth ) then do;
   T_GenHlth = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GenHlth , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '3'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 = '1'  then do;
            T_GenHlth = -1.4767070194314;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               T_GenHlth = -0.50697937184535;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            T_GenHlth = 0.67028858758655;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '4'  then do;
         T_GenHlth = 1.42327294300141;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '5'  then do;
            T_GenHlth = 1.72271200300089;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      T_GenHlth = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Income ;
drop T_Income ;
if missing( Income ) then do;
   T_Income = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Income , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '4'  then do;
      if _dm12 <= '2'  then do;
         if _dm12 = '1'  then do;
            T_Income = -1.71654961353095;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               T_Income = -1.56939520629206;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            T_Income = -1.37834052561171;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               T_Income = -1.12755068098766;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            T_Income = -0.8060973677071;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               T_Income = -0.36823854405569;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            T_Income = 0.19328494694827;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               T_Income = 1.14079558485619;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      T_Income = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for MentHlth ;
drop T_MentHlth ;
if missing( MentHlth ) then do;
   T_MentHlth = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( MentHlth , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      T_MentHlth = -0.64642594988229;
   end;
   else if _dm12 = '2'  then do;
      T_MentHlth = 1.08940309912206;
   end;
   else if _dm12 = '30'  then do;
      T_MentHlth = 2.0307349089589;
   end;
   else if _dm12 = '5'  then do;
      T_MentHlth = 1.46046162551661;
   end;
   else if _dm12 = '1'  then do;
      T_MentHlth = 0.90779440570373;
   end;
   else if _dm12 = '3'  then do;
      T_MentHlth = 1.26081745228278;
   end;
   else if _dm12 = '10'  then do;
      T_MentHlth = 1.66859965091116;
   end;
   else if _dm12 = '15'  then do;
      T_MentHlth = 1.79355117273767;
   end;
   else if _dm12 = '4'  then do;
      T_MentHlth = 1.35391488142563;
   end;
   else if _dm12 = '20'  then do;
      T_MentHlth = 1.87030502183819;
   end;
   else if _dm12 = '7'  then do;
      T_MentHlth = 1.57788118743921;
   end;
   else if _dm12 = '14'  then do;
      T_MentHlth = 1.73878343236461;
   end;
   else if _dm12 = '25'  then do;
      T_MentHlth = 1.91314358056186;
   end;
   else if _dm12 = '6'  then do;
      T_MentHlth = 1.54375977729304;
   end;
   else if _dm12 = '8'  then do;
      T_MentHlth = 1.60909115584375;
   end;
   else if _dm12 = '12'  then do;
      T_MentHlth = 1.72520529256066;
   end;
   else if _dm12 = '28'  then do;
      T_MentHlth = 1.92738302129238;
   end;
   else if _dm12 = '21'  then do;
      T_MentHlth = 1.89955685243419;
   end;
   else if _dm12 = '29'  then do;
      T_MentHlth = 1.93136800349923;
   end;
   else if _dm12 = '18'  then do;
      T_MentHlth = 1.84186049367204;
   end;
   else if _dm12 = '9'  then do;
      T_MentHlth = 1.61517168903869;
   end;
   else if _dm12 = '16'  then do;
      T_MentHlth = 1.83945576302997;
   end;
   else if _dm12 = '27'  then do;
      T_MentHlth = 1.92402498671721;
   end;
   else if _dm12 = '22'  then do;
      T_MentHlth = 1.90191864145764;
   end;
   else if _dm12 = '17'  then do;
      T_MentHlth = 1.84062377505612;
   end;
   else if _dm12 = '26'  then do;
      T_MentHlth = 1.9230287411655;
   end;
   else if _dm12 = '13'  then do;
      T_MentHlth = 1.72885533014237;
   end;
   else if _dm12 = '23'  then do;
      T_MentHlth = 1.9027345322112;
   end;
   else if _dm12 = '11'  then do;
      T_MentHlth = 1.72158101995012;
   end;
   else if _dm12 = '24'  then do;
      T_MentHlth = 1.90333571487172;
   end;
   else if _dm12 = '19'  then do;
      T_MentHlth = 1.84278803263398;
   end;
   else do;
      T_MentHlth = .;
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for PhysHlth ;
drop T_PhysHlth ;
if missing( PhysHlth ) then do;
   T_PhysHlth = .;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( PhysHlth , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      T_PhysHlth = -0.73130504087574;
   end;
   else if _dm12 = '30'  then do;
      T_PhysHlth = 1.86306848927175;
   end;
   else if _dm12 = '2'  then do;
      T_PhysHlth = 0.84738417559862;
   end;
   else if _dm12 = '1'  then do;
      T_PhysHlth = 0.63962005317307;
   end;
   else if _dm12 = '3'  then do;
      T_PhysHlth = 1.03135467225463;
   end;
   else if _dm12 = '5'  then do;
      T_PhysHlth = 1.22952668497363;
   end;
   else if _dm12 = '10'  then do;
      T_PhysHlth = 1.44021226213214;
   end;
   else if _dm12 = '15'  then do;
      T_PhysHlth = 1.57306541611342;
   end;
   else if _dm12 = '4'  then do;
      T_PhysHlth = 1.13397888490182;
   end;
   else if _dm12 = '7'  then do;
      T_PhysHlth = 1.34557335908836;
   end;
   else if _dm12 = '20'  then do;
      T_PhysHlth = 1.64186567507459;
   end;
   else if _dm12 = '14'  then do;
      T_PhysHlth = 1.51486354571126;
   end;
   else if _dm12 = '6'  then do;
      T_PhysHlth = 1.29966594402074;
   end;
   else if _dm12 = '25'  then do;
      T_PhysHlth = 1.69046732061816;
   end;
   else if _dm12 = '8'  then do;
      T_PhysHlth = 1.38749623450632;
   end;
   else if _dm12 = '21'  then do;
      T_PhysHlth = 1.67194042851999;
   end;
   else if _dm12 = '12'  then do;
      T_PhysHlth = 1.48915474406123;
   end;
   else if _dm12 = '28'  then do;
      T_PhysHlth = 1.70734683685303;
   end;
   else if _dm12 = '29'  then do;
      T_PhysHlth = 1.71297875236601;
   end;
   else if _dm12 = '9'  then do;
      T_PhysHlth = 1.39522997439662;
   end;
   else if _dm12 = '18'  then do;
      T_PhysHlth = 1.61545085519742;
   end;
   else if _dm12 = '16'  then do;
      T_PhysHlth = 1.61191264890973;
   end;
   else if _dm12 = '27'  then do;
      T_PhysHlth = 1.7025588971518;
   end;
   else if _dm12 = '17'  then do;
      T_PhysHlth = 1.61351133386082;
   end;
   else if _dm12 = '24'  then do;
      T_PhysHlth = 1.67964982295418;
   end;
   else if _dm12 = '22'  then do;
      T_PhysHlth = 1.67765349555333;
   end;
   else if _dm12 = '26'  then do;
      T_PhysHlth = 1.701252357674;
   end;
   else if _dm12 = '13'  then do;
      T_PhysHlth = 1.49412933225929;
   end;
   else if _dm12 = '11'  then do;
      T_PhysHlth = 1.48425319223149;
   end;
   else if _dm12 = '23'  then do;
      T_PhysHlth = 1.67863542894968;
   end;
   else if _dm12 = '19'  then do;
      T_PhysHlth = 1.61680608558743;
   end;
   else do;
      T_PhysHlth = .;
      _DM_BAD = 1;
   end;
end;

*** End Class Look-up, Standardization, Replacement ;


*** Omitted Cases;
if _dm_bad then do;
   _SEGMENT_ = .; Distance = .;
   goto CLUS3vlex ;
end; *** omitted;

*** Compute Distances and Cluster Membership;
label _SEGMENT_ = 'Segment Id' ;
label Distance = 'Distance' ;
array CLUS3vads [2] _temporary_;
drop _vqclus _vqmvar _vqnvar;
_vqmvar = 0;
do _vqclus = 1 to 2; CLUS3vads [_vqclus] = 0; end;
if not missing( T_Age ) then do;
   CLUS3vads [1] + ( T_Age - 0.42184681145588 )**2;
   CLUS3vads [2] + ( T_Age - -0.19528322070761 )**2;
end;
else _vqmvar + 1;
if not missing( T_BMI ) then do;
   CLUS3vads [1] + ( T_BMI - 0.35557592040749 )**2;
   CLUS3vads [2] + ( T_BMI - -0.1646048021643 )**2;
end;
else _vqmvar + 1;
if not missing( AnyHealthcare0 ) then do;
   CLUS3vads [1] + ( AnyHealthcare0 - 0.05876880098551 )**2;
   CLUS3vads [2] + ( AnyHealthcare0 - -0.02720551731536 )**2;
end;
else _vqmvar + 0.5;
if not missing( AnyHealthcare1 ) then do;
   CLUS3vads [1] + ( AnyHealthcare1 - -0.05876880098551 )**2;
   CLUS3vads [2] + ( AnyHealthcare1 - 0.02720551731536 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( CholCheck0 ) then do;
   CLUS3vads [1] + ( CholCheck0 - -0.06160551438692 )**2;
   CLUS3vads [2] + ( CholCheck0 - 0.02851870142449 )**2;
end;
else _vqmvar + 0.5;
if not missing( CholCheck1 ) then do;
   CLUS3vads [1] + ( CholCheck1 - 0.06160551438692 )**2;
   CLUS3vads [2] + ( CholCheck1 - -0.02851870142449 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( DiffWalk0 ) then do;
   CLUS3vads [1] + ( DiffWalk0 - -0.60277936734095 )**2;
   CLUS3vads [2] + ( DiffWalk0 - 0.2790413321456 )**2;
end;
else _vqmvar + 0.5;
if not missing( DiffWalk1 ) then do;
   CLUS3vads [1] + ( DiffWalk1 - 0.60277936734095 )**2;
   CLUS3vads [2] + ( DiffWalk1 - -0.2790413321456 )**2;
end;
else _vqmvar + 0.5;
if not missing( Fruits0 ) then do;
   CLUS3vads [1] + ( Fruits0 - 0.13930833715652 )**2;
   CLUS3vads [2] + ( Fruits0 - -0.06448924114748 )**2;
end;
else _vqmvar + 0.5;
if not missing( Fruits1 ) then do;
   CLUS3vads [1] + ( Fruits1 - -0.13930833715652 )**2;
   CLUS3vads [2] + ( Fruits1 - 0.06448924114748 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HeartDiseaseorAttack0 ) then do;
   CLUS3vads [1] + ( HeartDiseaseorAttack0 - -0.36364500761233 )**2;
   CLUS3vads [2] + ( HeartDiseaseorAttack0 - 0.16834018025464 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HeartDiseaseorAttack1 ) then do;
   CLUS3vads [1] + ( HeartDiseaseorAttack1 - 0.36364500761233 )**2;
   CLUS3vads [2] + ( HeartDiseaseorAttack1 - -0.16834018025464 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HighBP0 ) then do;
   CLUS3vads [1] + ( HighBP0 - -0.41693250517112 )**2;
   CLUS3vads [2] + ( HighBP0 - 0.19300826796957 )**2;
end;
else _vqmvar + 0.5;
if not missing( HighBP1 ) then do;
   CLUS3vads [1] + ( HighBP1 - 0.41693250517112 )**2;
   CLUS3vads [2] + ( HighBP1 - -0.19300826796957 )**2;
end;
else _vqmvar + 0.5;
if not missing( HighChol0 ) then do;
   CLUS3vads [1] + ( HighChol0 - -0.29878653804832 )**2;
   CLUS3vads [2] + ( HighChol0 - 0.13831560620938 )**2;
end;
else _vqmvar + 0.5;
if not missing( HighChol1 ) then do;
   CLUS3vads [1] + ( HighChol1 - 0.29878653804832 )**2;
   CLUS3vads [2] + ( HighChol1 - -0.13831560620938 )**2;
end;
else _vqmvar + 0.5;
if not missing( HvyAlcoholConsump0 ) then do;
   CLUS3vads [1] + ( HvyAlcoholConsump0 - 0.04994435920007 )**2;
   CLUS3vads [2] + ( HvyAlcoholConsump0 - -0.02312046708884 )**2;
end;
else _vqmvar + 0.5;
if not missing( HvyAlcoholConsump1 ) then do;
   CLUS3vads [1] + ( HvyAlcoholConsump1 - -0.04994435920007 )**2;
   CLUS3vads [2] + ( HvyAlcoholConsump1 - 0.02312046708884 )**2;
end;
else _vqmvar + 0.5;
if not missing( NoDocbcCost0 ) then do;
   CLUS3vads [1] + ( NoDocbcCost0 - -0.2101089136713 )**2;
   CLUS3vads [2] + ( NoDocbcCost0 - 0.09726456203285 )**2;
end;
else _vqmvar + 0.5;
if not missing( NoDocbcCost1 ) then do;
   CLUS3vads [1] + ( NoDocbcCost1 - 0.2101089136713 )**2;
   CLUS3vads [2] + ( NoDocbcCost1 - -0.09726456203285 )**2;
end;
else _vqmvar + 0.5;
if not missing( PhysActivity0 ) then do;
   CLUS3vads [1] + ( PhysActivity0 - 0.38493719538107 )**2;
   CLUS3vads [2] + ( PhysActivity0 - -0.17819685545195 )**2;
end;
else _vqmvar + 0.5;
if not missing( PhysActivity1 ) then do;
   CLUS3vads [1] + ( PhysActivity1 - -0.38493719538107 )**2;
   CLUS3vads [2] + ( PhysActivity1 - 0.17819685545195 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Sex0 ) then do;
   CLUS3vads [1] + ( Sex0 - 0.04590548241346 )**2;
   CLUS3vads [2] + ( Sex0 - -0.02125077210582 )**2;
end;
else _vqmvar + 0.5;
if not missing( Sex1 ) then do;
   CLUS3vads [1] + ( Sex1 - -0.04590548241346 )**2;
   CLUS3vads [2] + ( Sex1 - 0.02125077210582 )**2;
end;
else _vqmvar + 0.5;
if not missing( Smoker0 ) then do;
   CLUS3vads [1] + ( Smoker0 - -0.22841623999465 )**2;
   CLUS3vads [2] + ( Smoker0 - 0.10573947176221 )**2;
end;
else _vqmvar + 0.5;
if not missing( Smoker1 ) then do;
   CLUS3vads [1] + ( Smoker1 - 0.22841623999465 )**2;
   CLUS3vads [2] + ( Smoker1 - -0.10573947176221 )**2;
end;
else _vqmvar + 0.5;
if not missing( Stroke0 ) then do;
   CLUS3vads [1] + ( Stroke0 - -0.25492440634086 )**2;
   CLUS3vads [2] + ( Stroke0 - 0.11801075118998 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Stroke1 ) then do;
   CLUS3vads [1] + ( Stroke1 - 0.25492440634086 )**2;
   CLUS3vads [2] + ( Stroke1 - -0.11801075118998 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Veggies0 ) then do;
   CLUS3vads [1] + ( Veggies0 - 0.20122345955718 )**2;
   CLUS3vads [2] + ( Veggies0 - -0.09315126770411 )**2;
end;
else _vqmvar + 0.5;
if not missing( Veggies1 ) then do;
   CLUS3vads [1] + ( Veggies1 - -0.20122345955718 )**2;
   CLUS3vads [2] + ( Veggies1 - 0.09315126770411 )**2;
end;
else _vqmvar + 0.5;
if not missing( T_Education ) then do;
   CLUS3vads [1] + ( T_Education - -0.55448800541977 )**2;
   CLUS3vads [2] + ( T_Education - 0.25668607798119 )**2;
end;
else _vqmvar + 1;
if not missing( T_GenHlth ) then do;
   CLUS3vads [1] + ( T_GenHlth - 0.89094562531727 )**2;
   CLUS3vads [2] + ( T_GenHlth - -0.4124405506023 )**2;
end;
else _vqmvar + 1;
if not missing( T_Income ) then do;
   CLUS3vads [1] + ( T_Income - -0.70970556764715 )**2;
   CLUS3vads [2] + ( T_Income - 0.3285400890559 )**2;
end;
else _vqmvar + 1;
if not missing( T_MentHlth ) then do;
   CLUS3vads [1] + ( T_MentHlth - 0.35787613830386 )**2;
   CLUS3vads [2] + ( T_MentHlth - -0.16566962936395 )**2;
end;
else _vqmvar + 1;
if not missing( T_PhysHlth ) then do;
   CLUS3vads [1] + ( T_PhysHlth - 0.72892570699831 )**2;
   CLUS3vads [2] + ( T_PhysHlth - -0.33743756229428 )**2;
end;
else _vqmvar + 1;
_vqnvar = 21 - _vqmvar;
if _vqnvar <= 8.3559825725387E-11 then do;
   _SEGMENT_ = .; Distance = .;
end;
else do;
   _SEGMENT_ = 1; Distance = CLUS3vads [1];
   _vqfzdst = Distance * 0.99999999999988; drop _vqfzdst;
   do _vqclus = 2 to 2;
      if CLUS3vads [_vqclus] < _vqfzdst then do;
         _SEGMENT_ = _vqclus; Distance = CLUS3vads [_vqclus];
         _vqfzdst = Distance * 0.99999999999988;
      end;
   end;
   Distance = sqrt(Distance * (21 / _vqnvar));
end;
CLUS3vlex :;

***************************************;
*** End Scoring Code from PROC DMVQ ***;
***************************************;
*------------------------------------------------------------*;
* Clus3: Creating Segment Label;
*------------------------------------------------------------*;
length _SEGMENT_LABEL_ $80;
label _SEGMENT_LABEL_='Segment Description';
if _SEGMENT_ = 1 then _SEGMENT_LABEL_="Cluster1";
else
if _SEGMENT_ = 2 then _SEGMENT_LABEL_="Cluster2";
