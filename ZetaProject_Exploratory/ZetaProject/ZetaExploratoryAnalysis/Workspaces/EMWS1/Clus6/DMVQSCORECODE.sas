*****************************************;
*** Begin Scoring Code from PROC DMVQ ***;
*****************************************;


*** Begin Class Look-up, Standardization, Replacement ;
drop _dm_bad; _dm_bad = 0;

*** Standardize Age ;
drop T_Age ;
if missing( Age ) then T_Age = .;
else T_Age = (Age - 8.04916893781826) * 0.32668431645045;

*** Standardize BMI ;
drop T_BMI ;
if missing( BMI ) then T_BMI = .;
else T_BMI = (BMI - 27.8285967869181) * 0.18842113768423;

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
      AnyHealthcare0 = -0.1593113516288;
      AnyHealthcare1 = 0.1593113516288;
   end;
   else if _dm12 = '0'  then do;
      AnyHealthcare0 = 3.13849423547027;
      AnyHealthcare1 = -3.13849423547027;
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
      CholCheck0 = -0.14003274976362;
      CholCheck1 = 0.14003274976362;
   end;
   else if _dm12 = '0'  then do;
      CholCheck0 = 3.57057730835098;
      CholCheck1 = -3.57057730835098;
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
      DiffWalk0 = 0.30942347688694;
      DiffWalk1 = -0.30942347688694;
   end;
   else if _dm12 = '1'  then do;
      DiffWalk0 = -1.61590117130857;
      DiffWalk1 = 1.61590117130857;
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
      Fruits0 = -0.53450104825433;
      Fruits1 = 0.53450104825433;
   end;
   else if _dm12 = '0'  then do;
      Fruits0 = 0.93544766724959;
      Fruits1 = -0.93544766724959;
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
      HeartDiseaseorAttack0 = 0.22663308855856;
      HeartDiseaseorAttack1 = -0.22663308855856;
   end;
   else if _dm12 = '1'  then do;
      HeartDiseaseorAttack0 = -2.2061992885155;
      HeartDiseaseorAttack1 = 2.2061992885155;
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
      HighBP0 = 0.60657808494059;
      HighBP1 = -0.60657808494059;
   end;
   else if _dm12 = '1'  then do;
      HighBP0 = -0.82429248788463;
      HighBP1 = 0.82429248788463;
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
      HighChol0 = 0.60510965964047;
      HighChol1 = -0.60510965964047;
   end;
   else if _dm12 = '1'  then do;
      HighChol0 = -0.82629280621474;
      HighChol1 = 0.82629280621474;
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
      HvyAlcoholConsump0 = 0.17343267916064;
      HvyAlcoholConsump1 = -0.17343267916064;
   end;
   else if _dm12 = '1'  then do;
      HvyAlcoholConsump0 = -2.88295009424872;
      HvyAlcoholConsump1 = 2.88295009424872;
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
      NoDocbcCost0 = 0.21187343092214;
      NoDocbcCost1 = -0.21187343092214;
   end;
   else if _dm12 = '1'  then do;
      NoDocbcCost0 = -2.359888904219;
      NoDocbcCost1 = 2.359888904219;
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
      PhysActivity0 = -0.39511195909239;
      PhysActivity1 = 0.39511195909239;
   end;
   else if _dm12 = '0'  then do;
      PhysActivity0 = 1.26545842824024;
      PhysActivity1 = -1.26545842824024;
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
      Sex0 = 0.63000517059661;
      Sex1 = -0.63000517059661;
   end;
   else if _dm12 = '1'  then do;
      Sex0 = -0.79364072243801;
      Sex1 = 0.79364072243801;
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
      Smoker0 = 0.63116790023475;
      Smoker1 = -0.63116790023475;
   end;
   else if _dm12 = '1'  then do;
      Smoker0 = -0.79217868739207;
      Smoker1 = 0.79217868739207;
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
      Stroke0 = 0.1448627995183;
      Stroke1 = -0.1448627995183;
   end;
   else if _dm12 = '1'  then do;
      Stroke0 = -3.45152627447887;
      Stroke1 = 3.45152627447887;
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
      Veggies0 = -0.33906253229067;
      Veggies1 = 0.33906253229067;
   end;
   else if _dm12 = '0'  then do;
      Veggies0 = 1.47464762725045;
      Veggies1 = -1.47464762725045;
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
            T_Education = -1.8105774638073;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '3'  then do;
               T_Education = -1.7140774293823;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '4'  then do;
            T_Education = -1.19358083252604;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '5'  then do;
         T_Education = -0.23583674994353;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '6'  then do;
            T_Education = 1.05424411700749;
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
            T_GenHlth = -1.47650999922401;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               T_GenHlth = -0.50699892966105;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            T_GenHlth = 0.67078862696307;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm12 = '4'  then do;
         T_GenHlth = 1.42413548078415;
         _dm_find = 1;
      end;
      else do;
         if _dm12 = '5'  then do;
            T_GenHlth = 1.72285792338403;
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
            T_Income = -1.71665306975879;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '2'  then do;
               T_Income = -1.56969637576835;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '3'  then do;
            T_Income = -1.37887010298008;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '4'  then do;
               T_Income = -1.12844259485713;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '6'  then do;
         if _dm12 = '5'  then do;
            T_Income = -0.80709473267178;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '6'  then do;
               T_Income = -0.36854283179585;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '7'  then do;
            T_Income = 0.19354414027939;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '8'  then do;
               T_Income = 1.14091281040462;
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
      T_MentHlth = -0.64692713100466;
   end;
   else if _dm12 = '2'  then do;
      T_MentHlth = 1.08857747257817;
   end;
   else if _dm12 = '30'  then do;
      T_MentHlth = 2.02987457207006;
   end;
   else if _dm12 = '5'  then do;
      T_MentHlth = 1.45990715933354;
   end;
   else if _dm12 = '1'  then do;
      T_MentHlth = 0.90623216092549;
   end;
   else if _dm12 = '3'  then do;
      T_MentHlth = 1.2601056894718;
   end;
   else if _dm12 = '10'  then do;
      T_MentHlth = 1.66746374210456;
   end;
   else if _dm12 = '15'  then do;
      T_MentHlth = 1.79265205922791;
   end;
   else if _dm12 = '4'  then do;
      T_MentHlth = 1.35305257777185;
   end;
   else if _dm12 = '20'  then do;
      T_MentHlth = 1.86923022212536;
   end;
   else if _dm12 = '7'  then do;
      T_MentHlth = 1.57690157487132;
   end;
   else if _dm12 = '14'  then do;
      T_MentHlth = 1.73787024688111;
   end;
   else if _dm12 = '25'  then do;
      T_MentHlth = 1.91192626810556;
   end;
   else if _dm12 = '6'  then do;
      T_MentHlth = 1.54314346344954;
   end;
   else if _dm12 = '8'  then do;
      T_MentHlth = 1.60787433208707;
   end;
   else if _dm12 = '12'  then do;
      T_MentHlth = 1.72422010349468;
   end;
   else if _dm12 = '28'  then do;
      T_MentHlth = 1.92628228892776;
   end;
   else if _dm12 = '21'  then do;
      T_MentHlth = 1.89843828575167;
   end;
   else if _dm12 = '29'  then do;
      T_MentHlth = 1.93039354804695;
   end;
   else if _dm12 = '9'  then do;
      T_MentHlth = 1.61396014024958;
   end;
   else if _dm12 = '18'  then do;
      T_MentHlth = 1.8408234247775;
   end;
   else if _dm12 = '16'  then do;
      T_MentHlth = 1.83848639813203;
   end;
   else if _dm12 = '27'  then do;
      T_MentHlth = 1.92284829059155;
   end;
   else if _dm12 = '22'  then do;
      T_MentHlth = 1.90076577351288;
   end;
   else if _dm12 = '17'  then do;
      T_MentHlth = 1.83959290870703;
   end;
   else if _dm12 = '26'  then do;
      T_MentHlth = 1.92180855220642;
   end;
   else if _dm12 = '11'  then do;
      T_MentHlth = 1.72050947751472;
   end;
   else if _dm12 = '13'  then do;
      T_MentHlth = 1.72792119059037;
   end;
   else if _dm12 = '23'  then do;
      T_MentHlth = 1.90153842313853;
   end;
   else if _dm12 = '24'  then do;
      T_MentHlth = 1.90213937284736;
   end;
   else if _dm12 = '19'  then do;
      T_MentHlth = 1.84175823543569;
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
      T_PhysHlth = -0.73159346519283;
   end;
   else if _dm12 = '30'  then do;
      T_PhysHlth = 1.86253869535975;
   end;
   else if _dm12 = '2'  then do;
      T_PhysHlth = 0.84666504855354;
   end;
   else if _dm12 = '1'  then do;
      T_PhysHlth = 0.63888889830955;
   end;
   else if _dm12 = '3'  then do;
      T_PhysHlth = 1.03058665401748;
   end;
   else if _dm12 = '5'  then do;
      T_PhysHlth = 1.22889671506304;
   end;
   else if _dm12 = '10'  then do;
      T_PhysHlth = 1.43999951951104;
   end;
   else if _dm12 = '15'  then do;
      T_PhysHlth = 1.57312879493313;
   end;
   else if _dm12 = '7'  then do;
      T_PhysHlth = 1.34490589202054;
   end;
   else if _dm12 = '4'  then do;
      T_PhysHlth = 1.13322610689758;
   end;
   else if _dm12 = '20'  then do;
      T_PhysHlth = 1.64152805088406;
   end;
   else if _dm12 = '14'  then do;
      T_PhysHlth = 1.51490783870127;
   end;
   else if _dm12 = '25'  then do;
      T_PhysHlth = 1.68970593724254;
   end;
   else if _dm12 = '6'  then do;
      T_PhysHlth = 1.29906297433101;
   end;
   else if _dm12 = '8'  then do;
      T_PhysHlth = 1.38709760387639;
   end;
   else if _dm12 = '21'  then do;
      T_PhysHlth = 1.67131467822845;
   end;
   else if _dm12 = '12'  then do;
      T_PhysHlth = 1.48904287688194;
   end;
   else if _dm12 = '28'  then do;
      T_PhysHlth = 1.70658262198488;
   end;
   else if _dm12 = '29'  then do;
      T_PhysHlth = 1.71220818356566;
   end;
   else if _dm12 = '9'  then do;
      T_PhysHlth = 1.39495896557261;
   end;
   else if _dm12 = '18'  then do;
      T_PhysHlth = 1.61537459872726;
   end;
   else if _dm12 = '16'  then do;
      T_PhysHlth = 1.61191271467755;
   end;
   else if _dm12 = '27'  then do;
      T_PhysHlth = 1.70182253141653;
   end;
   else if _dm12 = '17'  then do;
      T_PhysHlth = 1.61347236556453;
   end;
   else if _dm12 = '24'  then do;
      T_PhysHlth = 1.67887853426414;
   end;
   else if _dm12 = '13'  then do;
      T_PhysHlth = 1.49408244246473;
   end;
   else if _dm12 = '26'  then do;
      T_PhysHlth = 1.70049727892875;
   end;
   else if _dm12 = '22'  then do;
      T_PhysHlth = 1.67694925513227;
   end;
   else if _dm12 = '11'  then do;
      T_PhysHlth = 1.48410247985267;
   end;
   else if _dm12 = '23'  then do;
      T_PhysHlth = 1.67788684872907;
   end;
   else if _dm12 = '19'  then do;
      T_PhysHlth = 1.61670886653808;
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
   goto CLUS6vlex ;
end; *** omitted;

*** Compute Distances and Cluster Membership;
label _SEGMENT_ = 'Segment Id' ;
label Distance = 'Distance' ;
array CLUS6vads [5] _temporary_;
drop _vqclus _vqmvar _vqnvar;
_vqmvar = 0;
do _vqclus = 1 to 5; CLUS6vads [_vqclus] = 0; end;
if not missing( T_Age ) then do;
   CLUS6vads [1] + ( T_Age - 0.44494797701987 )**2;
   CLUS6vads [2] + ( T_Age - -0.45796732412027 )**2;
   CLUS6vads [3] + ( T_Age - -0.4499693722382 )**2;
   CLUS6vads [4] + ( T_Age - -0.1322177594848 )**2;
   CLUS6vads [5] + ( T_Age - 0.40828965571909 )**2;
end;
else _vqmvar + 1;
if not missing( T_BMI ) then do;
   CLUS6vads [1] + ( T_BMI - 0.40297606305076 )**2;
   CLUS6vads [2] + ( T_BMI - -0.1954421656231 )**2;
   CLUS6vads [3] + ( T_BMI - -0.30607832344147 )**2;
   CLUS6vads [4] + ( T_BMI - -0.2010914611039 )**2;
   CLUS6vads [5] + ( T_BMI - 0.2345800776716 )**2;
end;
else _vqmvar + 1;
if not missing( AnyHealthcare0 ) then do;
   CLUS6vads [1] + ( AnyHealthcare0 - 0.01362179390293 )**2;
   CLUS6vads [2] + ( AnyHealthcare0 - 0.42283906923397 )**2;
   CLUS6vads [3] + ( AnyHealthcare0 - -0.04410275680139 )**2;
   CLUS6vads [4] + ( AnyHealthcare0 - 0.00189110717805 )**2;
   CLUS6vads [5] + ( AnyHealthcare0 - -0.00021015062712 )**2;
end;
else _vqmvar + 0.5;
if not missing( AnyHealthcare1 ) then do;
   CLUS6vads [1] + ( AnyHealthcare1 - -0.01362179390293 )**2;
   CLUS6vads [2] + ( AnyHealthcare1 - -0.42283906923397 )**2;
   CLUS6vads [3] + ( AnyHealthcare1 - 0.04410275680139 )**2;
   CLUS6vads [4] + ( AnyHealthcare1 - -0.00189110717805 )**2;
   CLUS6vads [5] + ( AnyHealthcare1 - 0.00021015062712 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( CholCheck0 ) then do;
   CLUS6vads [1] + ( CholCheck0 - -0.13816577614951 )**2;
   CLUS6vads [2] + ( CholCheck0 - 3.57057730835078 )**2;
   CLUS6vads [3] + ( CholCheck0 - -0.14003274976355 )**2;
   CLUS6vads [4] + ( CholCheck0 - -0.14003274976359 )**2;
   CLUS6vads [5] + ( CholCheck0 - -0.14003274976365 )**2;
end;
else _vqmvar + 0.5;
if not missing( CholCheck1 ) then do;
   CLUS6vads [1] + ( CholCheck1 - 0.13816577614951 )**2;
   CLUS6vads [2] + ( CholCheck1 - -3.57057730835078 )**2;
   CLUS6vads [3] + ( CholCheck1 - 0.14003274976355 )**2;
   CLUS6vads [4] + ( CholCheck1 - 0.14003274976359 )**2;
   CLUS6vads [5] + ( CholCheck1 - 0.14003274976365 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( DiffWalk0 ) then do;
   CLUS6vads [1] + ( DiffWalk0 - -1.34417610775257 )**2;
   CLUS6vads [2] + ( DiffWalk0 - 0.14395693766576 )**2;
   CLUS6vads [3] + ( DiffWalk0 - 0.27681077492598 )**2;
   CLUS6vads [4] + ( DiffWalk0 - 0.11972908804828 )**2;
   CLUS6vads [5] + ( DiffWalk0 - 0.26630127315902 )**2;
end;
else _vqmvar + 0.5;
if not missing( DiffWalk1 ) then do;
   CLUS6vads [1] + ( DiffWalk1 - 1.34417610775257 )**2;
   CLUS6vads [2] + ( DiffWalk1 - -0.14395693766576 )**2;
   CLUS6vads [3] + ( DiffWalk1 - -0.27681077492598 )**2;
   CLUS6vads [4] + ( DiffWalk1 - -0.11972908804828 )**2;
   CLUS6vads [5] + ( DiffWalk1 - -0.26630127315902 )**2;
end;
else _vqmvar + 0.5;
if not missing( Fruits0 ) then do;
   CLUS6vads [1] + ( Fruits0 - 0.09674485296965 )**2;
   CLUS6vads [2] + ( Fruits0 - 0.08262895050561 )**2;
   CLUS6vads [3] + ( Fruits0 - -0.13635455448314 )**2;
   CLUS6vads [4] + ( Fruits0 - 0.09549476263471 )**2;
   CLUS6vads [5] + ( Fruits0 - 0.09589213214276 )**2;
end;
else _vqmvar + 0.5;
if not missing( Fruits1 ) then do;
   CLUS6vads [1] + ( Fruits1 - -0.09674485296965 )**2;
   CLUS6vads [2] + ( Fruits1 - -0.08262895050561 )**2;
   CLUS6vads [3] + ( Fruits1 - 0.13635455448314 )**2;
   CLUS6vads [4] + ( Fruits1 - -0.09549476263471 )**2;
   CLUS6vads [5] + ( Fruits1 - -0.09589213214276 )**2;
end;
else _vqmvar + 0.5;
if not missing( HeartDiseaseorAttack0 ) then do;
   CLUS6vads [1] + ( HeartDiseaseorAttack0 - -0.47611715000729 )**2;
   CLUS6vads [2] + ( HeartDiseaseorAttack0 - 0.16263404614297 )**2;
   CLUS6vads [3] + ( HeartDiseaseorAttack0 - 0.20276671176922 )**2;
   CLUS6vads [4] + ( HeartDiseaseorAttack0 - 0.09678859537347 )**2;
   CLUS6vads [5] + ( HeartDiseaseorAttack0 - -0.05410813670761 )**2;
end;
else _vqmvar + 0.5;
if not missing( HeartDiseaseorAttack1 ) then do;
   CLUS6vads [1] + ( HeartDiseaseorAttack1 - 0.47611715000729 )**2;
   CLUS6vads [2] + ( HeartDiseaseorAttack1 - -0.16263404614297 )**2;
   CLUS6vads [3] + ( HeartDiseaseorAttack1 - -0.20276671176922 )**2;
   CLUS6vads [4] + ( HeartDiseaseorAttack1 - -0.09678859537347 )**2;
   CLUS6vads [5] + ( HeartDiseaseorAttack1 - 0.05410813670761 )**2;
end;
else _vqmvar + 0.5;
if not missing( HighBP0 ) then do;
   CLUS6vads [1] + ( HighBP0 - -0.38113257322648 )**2;
   CLUS6vads [2] + ( HighBP0 - 0.34990364698711 )**2;
   CLUS6vads [3] + ( HighBP0 - 0.43368889242517 )**2;
   CLUS6vads [4] + ( HighBP0 - -0.0040026567843 )**2;
   CLUS6vads [5] + ( HighBP0 - -0.38538282168752 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HighBP1 ) then do;
   CLUS6vads [1] + ( HighBP1 - 0.38113257322648 )**2;
   CLUS6vads [2] + ( HighBP1 - -0.34990364698711 )**2;
   CLUS6vads [3] + ( HighBP1 - -0.43368889242517 )**2;
   CLUS6vads [4] + ( HighBP1 - 0.0040026567843 )**2;
   CLUS6vads [5] + ( HighBP1 - 0.38538282168752 )**2;
end;
else _vqmvar + 0.5;
if not missing( HighChol0 ) then do;
   CLUS6vads [1] + ( HighChol0 - -0.26845595984293 )**2;
   CLUS6vads [2] + ( HighChol0 - 0.30949208098808 )**2;
   CLUS6vads [3] + ( HighChol0 - 0.29936351588021 )**2;
   CLUS6vads [4] + ( HighChol0 - 0.0227990326465 )**2;
   CLUS6vads [5] + ( HighChol0 - -0.27504920606341 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HighChol1 ) then do;
   CLUS6vads [1] + ( HighChol1 - 0.26845595984293 )**2;
   CLUS6vads [2] + ( HighChol1 - -0.30949208098808 )**2;
   CLUS6vads [3] + ( HighChol1 - -0.29936351588021 )**2;
   CLUS6vads [4] + ( HighChol1 - -0.0227990326465 )**2;
   CLUS6vads [5] + ( HighChol1 - 0.27504920606341 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HvyAlcoholConsump0 ) then do;
   CLUS6vads [1] + ( HvyAlcoholConsump0 - 0.16104482445349 )**2;
   CLUS6vads [2] + ( HvyAlcoholConsump0 - -0.08487368545315 )**2;
   CLUS6vads [3] + ( HvyAlcoholConsump0 - 0.17343267916077 )**2;
   CLUS6vads [4] + ( HvyAlcoholConsump0 - -2.88295009424855 )**2;
   CLUS6vads [5] + ( HvyAlcoholConsump0 - 0.17343267916069 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( HvyAlcoholConsump1 ) then do;
   CLUS6vads [1] + ( HvyAlcoholConsump1 - -0.16104482445349 )**2;
   CLUS6vads [2] + ( HvyAlcoholConsump1 - 0.08487368545315 )**2;
   CLUS6vads [3] + ( HvyAlcoholConsump1 - -0.17343267916077 )**2;
   CLUS6vads [4] + ( HvyAlcoholConsump1 - 2.88295009424855 )**2;
   CLUS6vads [5] + ( HvyAlcoholConsump1 - -0.17343267916069 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( NoDocbcCost0 ) then do;
   CLUS6vads [1] + ( NoDocbcCost0 - -0.27818118371524 )**2;
   CLUS6vads [2] + ( NoDocbcCost0 - -0.20568207736641 )**2;
   CLUS6vads [3] + ( NoDocbcCost0 - 0.08639973063131 )**2;
   CLUS6vads [4] + ( NoDocbcCost0 - 0.00445918633942 )**2;
   CLUS6vads [5] + ( NoDocbcCost0 - 0.04910366287516 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( NoDocbcCost1 ) then do;
   CLUS6vads [1] + ( NoDocbcCost1 - 0.27818118371524 )**2;
   CLUS6vads [2] + ( NoDocbcCost1 - 0.20568207736641 )**2;
   CLUS6vads [3] + ( NoDocbcCost1 - -0.08639973063131 )**2;
   CLUS6vads [4] + ( NoDocbcCost1 - -0.00445918633942 )**2;
   CLUS6vads [5] + ( NoDocbcCost1 - -0.04910366287516 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( PhysActivity0 ) then do;
   CLUS6vads [1] + ( PhysActivity0 - 0.46973073711398 )**2;
   CLUS6vads [2] + ( PhysActivity0 - 0.01563262665659 )**2;
   CLUS6vads [3] + ( PhysActivity0 - -0.23564709989617 )**2;
   CLUS6vads [4] + ( PhysActivity0 - -0.05016799181523 )**2;
   CLUS6vads [5] + ( PhysActivity0 - 0.06999140722939 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( PhysActivity1 ) then do;
   CLUS6vads [1] + ( PhysActivity1 - -0.46973073711398 )**2;
   CLUS6vads [2] + ( PhysActivity1 - -0.01563262665659 )**2;
   CLUS6vads [3] + ( PhysActivity1 - 0.23564709989617 )**2;
   CLUS6vads [4] + ( PhysActivity1 - 0.05016799181523 )**2;
   CLUS6vads [5] + ( PhysActivity1 - -0.06999140722939 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Sex0 ) then do;
   CLUS6vads [1] + ( Sex0 - 0.12298428106053 )**2;
   CLUS6vads [2] + ( Sex0 - -0.07919112298151 )**2;
   CLUS6vads [3] + ( Sex0 - 0.03607193489207 )**2;
   CLUS6vads [4] + ( Sex0 - -0.00474985609274 )**2;
   CLUS6vads [5] + ( Sex0 - -0.09271716928478 )**2;
end;
else _vqmvar + 0.5;
if not missing( Sex1 ) then do;
   CLUS6vads [1] + ( Sex1 - -0.12298428106053 )**2;
   CLUS6vads [2] + ( Sex1 - 0.07919112298151 )**2;
   CLUS6vads [3] + ( Sex1 - -0.03607193489207 )**2;
   CLUS6vads [4] + ( Sex1 - 0.00474985609274 )**2;
   CLUS6vads [5] + ( Sex1 - 0.09271716928478 )**2;
end;
else _vqmvar + 0.5;
if not missing( Smoker0 ) then do;
   CLUS6vads [1] + ( Smoker0 - -0.22164647029727 )**2;
   CLUS6vads [2] + ( Smoker0 - -0.03772536579913 )**2;
   CLUS6vads [3] + ( Smoker0 - 0.23672300428967 )**2;
   CLUS6vads [4] + ( Smoker0 - -0.28477082219949 )**2;
   CLUS6vads [5] + ( Smoker0 - -0.13414104239717 )**2;
end;
else _vqmvar + 0.5;
if not missing( Smoker1 ) then do;
   CLUS6vads [1] + ( Smoker1 - 0.22164647029727 )**2;
   CLUS6vads [2] + ( Smoker1 - 0.03772536579913 )**2;
   CLUS6vads [3] + ( Smoker1 - -0.23672300428967 )**2;
   CLUS6vads [4] + ( Smoker1 - 0.28477082219949 )**2;
   CLUS6vads [5] + ( Smoker1 - 0.13414104239717 )**2;
end;
else _vqmvar + 0.5;
if not missing( Stroke0 ) then do;
   CLUS6vads [1] + ( Stroke0 - -0.44764921172264 )**2;
   CLUS6vads [2] + ( Stroke0 - 0.09220765654701 )**2;
   CLUS6vads [3] + ( Stroke0 - 0.123262982861 )**2;
   CLUS6vads [4] + ( Stroke0 - 0.06260042659561 )**2;
   CLUS6vads [5] + ( Stroke0 - 0.04236241829932 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Stroke1 ) then do;
   CLUS6vads [1] + ( Stroke1 - 0.44764921172264 )**2;
   CLUS6vads [2] + ( Stroke1 - -0.09220765654701 )**2;
   CLUS6vads [3] + ( Stroke1 - -0.123262982861 )**2;
   CLUS6vads [4] + ( Stroke1 - -0.06260042659561 )**2;
   CLUS6vads [5] + ( Stroke1 - -0.04236241829932 )**2;
end;
else _vqmvar + 0.49999999999999;
if not missing( Veggies0 ) then do;
   CLUS6vads [1] + ( Veggies0 - 0.1657851481763 )**2;
   CLUS6vads [2] + ( Veggies0 - 0.02406810553198 )**2;
   CLUS6vads [3] + ( Veggies0 - -0.15344498865802 )**2;
   CLUS6vads [4] + ( Veggies0 - -0.07017124296526 )**2;
   CLUS6vads [5] + ( Veggies0 - 0.1163985307811 )**2;
end;
else _vqmvar + 0.5;
if not missing( Veggies1 ) then do;
   CLUS6vads [1] + ( Veggies1 - -0.1657851481763 )**2;
   CLUS6vads [2] + ( Veggies1 - -0.02406810553198 )**2;
   CLUS6vads [3] + ( Veggies1 - 0.15344498865802 )**2;
   CLUS6vads [4] + ( Veggies1 - 0.07017124296526 )**2;
   CLUS6vads [5] + ( Veggies1 - -0.1163985307811 )**2;
end;
else _vqmvar + 0.5;
if not missing( T_Education ) then do;
   CLUS6vads [1] + ( T_Education - -0.51288342908314 )**2;
   CLUS6vads [2] + ( T_Education - -0.02757319364583 )**2;
   CLUS6vads [3] + ( T_Education - 0.45923644179602 )**2;
   CLUS6vads [4] + ( T_Education - 0.10561869038922 )**2;
   CLUS6vads [5] + ( T_Education - -0.32903359060151 )**2;
end;
else _vqmvar + 1;
if not missing( T_GenHlth ) then do;
   CLUS6vads [1] + ( T_GenHlth - 1.09398594365798 )**2;
   CLUS6vads [2] + ( T_GenHlth - -0.24023617727595 )**2;
   CLUS6vads [3] + ( T_GenHlth - -0.58540538832925 )**2;
   CLUS6vads [4] + ( T_GenHlth - -0.15720936432772 )**2;
   CLUS6vads [5] + ( T_GenHlth - 0.24471031318626 )**2;
end;
else _vqmvar + 1;
if not missing( T_Income ) then do;
   CLUS6vads [1] + ( T_Income - -0.79589913318431 )**2;
   CLUS6vads [2] + ( T_Income - -0.07913020284505 )**2;
   CLUS6vads [3] + ( T_Income - 0.49270148557043 )**2;
   CLUS6vads [4] + ( T_Income - 0.25581865863627 )**2;
   CLUS6vads [5] + ( T_Income - -0.2532048776894 )**2;
end;
else _vqmvar + 1;
if not missing( T_MentHlth ) then do;
   CLUS6vads [1] + ( T_MentHlth - 0.57748736275181 )**2;
   CLUS6vads [2] + ( T_MentHlth - 0.07220436475207 )**2;
   CLUS6vads [3] + ( T_MentHlth - -0.10688572366587 )**2;
   CLUS6vads [4] + ( T_MentHlth - 0.12507853429501 )**2;
   CLUS6vads [5] + ( T_MentHlth - -0.17165188850421 )**2;
end;
else _vqmvar + 1;
if not missing( T_PhysHlth ) then do;
   CLUS6vads [1] + ( T_PhysHlth - 1.12361987913298 )**2;
   CLUS6vads [2] + ( T_PhysHlth - -0.15384091933651 )**2;
   CLUS6vads [3] + ( T_PhysHlth - -0.31257581964818 )**2;
   CLUS6vads [4] + ( T_PhysHlth - -0.11067022688545 )**2;
   CLUS6vads [5] + ( T_PhysHlth - -0.11838762052226 )**2;
end;
else _vqmvar + 1;
_vqnvar = 21 - _vqmvar;
if _vqnvar <= 8.3559825725387E-11 then do;
   _SEGMENT_ = .; Distance = .;
end;
else do;
   _SEGMENT_ = 1; Distance = CLUS6vads [1];
   _vqfzdst = Distance * 0.99999999999988; drop _vqfzdst;
   do _vqclus = 2 to 5;
      if CLUS6vads [_vqclus] < _vqfzdst then do;
         _SEGMENT_ = _vqclus; Distance = CLUS6vads [_vqclus];
         _vqfzdst = Distance * 0.99999999999988;
      end;
   end;
   Distance = sqrt(Distance * (21 / _vqnvar));
end;
CLUS6vlex :;

***************************************;
*** End Scoring Code from PROC DMVQ ***;
***************************************;
