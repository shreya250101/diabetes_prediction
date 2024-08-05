

length _FILTERFMT1  $200;
drop _FILTERFMT1 ;
_FILTERFMT1= put(Education,BEST12.0);
length _FILTERNORM1  $32;
drop _FILTERNORM1 ;
%dmnormcp(_FILTERFMT1,_FILTERNORM1);
if
_FILTERNORM1 not in ( '1')
and
( Age eq . or (-1.125623293<=Age) and (Age<=17.214313285))
and ( BMI eq . or (11.198028339<=BMI) and (BMI<=44.847234029))
then do;
if M_FILTER eq . then M_FILTER = 0;
else M_FILTER = M_FILTER + 0;
end;
else M_FILTER = 1;
label M_FILTER = 'Filtered Indicator';
length M_FILTER 8;
