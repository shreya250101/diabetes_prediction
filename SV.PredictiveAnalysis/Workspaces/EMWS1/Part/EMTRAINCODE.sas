*------------------------------------------------------------*;
* Part: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS1.Ids5_DATA noprint;
table
Diabetes_Prediction
/out=WORK.Part_FREQ(drop=percent);
run;
proc sort data=WORK.Part_FREQ;
by descending count;
run;
* Part: Retrieving levels that meet minimum requirement;
data WORK.Part_FREQ2(keep = count);
set WORK.Part_FREQ;
where (.01 * 40 * count) >= 3;
run;
*------------------------------------------------------------*;
* Part: Create stratified partitioning;
*------------------------------------------------------------*;
data
EMWS1.Part_TRAIN(label="")
EMWS1.Part_VALIDATE(label="")
EMWS1.Part_TEST(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS1.Ids5_DATA;
if
strip(Diabetes_Prediction) = 'no diabetes'
then do;
if (169538+1-_C000004)*_genvalue_ <= (67815 - _C000001) then do;
_C000001 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
if (169538+1-_C000004)*_genvalue_ <= (67815 - _C000001 + 50861 - _C000002) then do;
_C000002 + 1;
output EMWS1.Part_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS1.Part_TEST;
end;
end;
_C000004+1;
end;
else if
strip(Diabetes_Prediction) = 'diabetes'
then do;
if (27394+1-_C000008)*_genvalue_ <= (10958 - _C000005) then do;
_C000005 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
if (27394+1-_C000008)*_genvalue_ <= (10958 - _C000005 + 8218 - _C000006) then do;
_C000006 + 1;
output EMWS1.Part_VALIDATE;
end;
else do;
_C000007 + 1;
output EMWS1.Part_TEST;
end;
end;
_C000008+1;
end;
else if
strip(Diabetes_Prediction) = 'prediabetes'
then do;
if (3641+1-_C0000012)*_genvalue_ <= (1456 - _C000009) then do;
_C000009 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
if (3641+1-_C0000012)*_genvalue_ <= (1456 - _C000009 + 1092 - _C0000010) then do;
_C0000010 + 1;
output EMWS1.Part_VALIDATE;
end;
else do;
_C0000011 + 1;
output EMWS1.Part_TEST;
end;
end;
_C0000012+1;
end;
run;
