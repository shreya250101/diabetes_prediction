*------------------------------------------------------------*;
* Smpl2: Create random sample;
*------------------------------------------------------------*;
data EMWS1.Smpl2_DATA(label="Sample of EMWS1.Ids3_DATA.");
set EMWS1.Ids3_DATA;
retain _seed_ 12345;
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
drop _sample_count_ _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
if _sample_count_ < 50143 then do;
if _genvalue_*(250716+1 - _N_) <= (50143 - _sample_count_) then do;
_dataobs_ = _N_;
_sample_count_ + 1;
output;
end;
end;
run;
quit;
