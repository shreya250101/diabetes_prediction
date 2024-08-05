*------------------------------------------------------------*;
* Clus3: Preliminary Clustering;
*------------------------------------------------------------*;
*------------------------------------------------------------* ;
* Clus3: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    AnyHealthcare(ASC) CholCheck(ASC) DiffWalk(ASC) Education(ASC) Fruits(ASC)
   GenHlth(ASC) HeartDiseaseorAttack(ASC) HighBP(ASC) HighChol(ASC)
   HvyAlcoholConsump(ASC) Income(ASC) MentHlth(ASC) NoDocbcCost(ASC)
   PhysActivity(ASC) PhysHlth(ASC) Sex(ASC) Smoker(ASC) Stroke(ASC) Veggies(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Clus3: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age BMI
%mend DMDBVar;
*------------------------------------------------------------*;
* Clus3: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS2.Varsel_TRAIN
dmdbcat=WORK.Clus3_DMDB
maxlevel = 513
out=WORK.Clus3_DMDB
;
class %DMDBClass;
var %DMDBVar;
run;
quit;
*------------------------------------------------------------* ;
* Clus3: Interval Inputs Macro ;
*------------------------------------------------------------* ;
%macro DMVQINTERVAL;
    Age BMI
%mend DMVQINTERVAL;
*------------------------------------------------------------* ;
* Clus3: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro DMVQNOMINAL;
    AnyHealthcare CholCheck DiffWalk Fruits HeartDiseaseorAttack HighBP HighChol
   HvyAlcoholConsump NoDocbcCost PhysActivity Sex Smoker Stroke Veggies
%mend DMVQNOMINAL;
*------------------------------------------------------------* ;
* Clus3: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro DMVQORDINAL;
    Education GenHlth Income MentHlth PhysHlth
%mend DMVQORDINAL;
*------------------------------------------------------------*;
* Clus3: Run DMVQ procedure;
*------------------------------------------------------------*;
title;
options nodate;
proc dmvq data=WORK.Clus3_DMDB dmdbcat=WORK.Clus3_DMDB std=STD nominal=GLM ordinal=RANK
;
input %DMVQINTERVAL / level=interval;
input %DMVQNOMINAL / level=nominal;
input %DMVQORDINAL / level=ordinal;
VQ maxc = 50 clusname=_SEGMENT_ CLUSLABEL="Segment Id" DISTLABEL="Distance";
MAKE outvar=EMWS2.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=WORK.Clus3_OUTSTAT outmean=EMWS2.Clus3_OUTMEAN;
code file="\\uisnutvdiprof1a\redirected$\bkris2\Documents\ZetaProject\ZetaExploratoryAnalysis\Workspaces\EMWS2\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;
*------------------------------------------------------------* ;
* Clus3: DMVQ Variables;
*------------------------------------------------------------* ;
%macro dmvqvars;
    Age BMI AnyHealthcare0 AnyHealthcare1 CholCheck0 CholCheck1 DiffWalk0
   DiffWalk1 Fruits0 Fruits1 HeartDiseaseorAttack0 HeartDiseaseorAttack1 HighBP0
   HighBP1 HighChol0 HighChol1 HvyAlcoholConsump0 HvyAlcoholConsump1 NoDocbcCost0
   NoDocbcCost1 PhysActivity0 PhysActivity1 Sex0 Sex1 Smoker0 Smoker1 Stroke0
   Stroke1 Veggies0 Veggies1 T_Education T_GenHlth T_Income T_MentHlth T_PhysHlth
%mend ;
*------------------------------------------------------------*;
* Clus3: Determining the number of clusters;
*------------------------------------------------------------*;
proc cluster data=EMWS2.Clus3_OUTMEAN method=AVERAGE pseudo outtree=EMWS2.Clus3_CLUSSEED
;
var %dmvqvars;
copy _SEGMENT_;
run;
quit;
proc sort data =EMWS2.Clus3_CLUSSEED out=WORK._SEED_;
by _ncl_;
where (_ccc_ > -99999.0);
run;
data WORK._SEED2_;
retain oJump occc oncl;
set WORK._SEED_;
_lccc_=lag(_ccc_);
if _lccc_ > . then jump = _ccc_ - _lccc_;
if jump<0 and ojump>0 then do;
* Have a local Max;
numclus = oncl;
cccvalue = occc;
output;
end;
ojump = jump;
occc = _ccc_;
oncl = _ncl_;
run;
proc print data=WORK._SEED2_ label;
var numclus cccvalue;
label numclus="%sysfunc(sasmsg(sashelp.dmine, rpt_numclus_vlabel ,  NOQUOTE))";
label cccvalue="%sysfunc(sasmsg(sashelp.dmine, rpt_ccc_vlabel ,     NOQUOTE))";
title10 "%sysfunc(sasmsg(sashelp.dmine, rpt_OptClus_title, NOQUOTE))";
run;
title10;
data WORK._SEED2_;
length msg $200;
set WORK._SEED2_ end=eof;
retain select cccSelect 0 numSel;
if _N_=1 then numSel = numClus;
if cccvalue>=3 then do;
if 20>= numclus >= 2 and cccSelect<1 then do;
cccSelect = 1;
select =1;
numSel = numClus;
end;
end;
else if 20>= numclus >= 2 and select<1 then do;
select = 1;
numSel = numClus;
end;
if eof then do;
if ^(select=1 and cccselect=1) then do;
put "*------------------------------------------------------------*";
put '*;';
put "WARNING: The number of clusters selected based on the CCC values may not be valid.  Please refer to the documentation on the Cubic Clustering Criterion.";
put '*;';
put "*------------------------------------------------------------*";
end;
if select<1 then do;
msg = sasmsg('sashelp.dmine', 'rpt_noCCCclusternum_note', 'NOQUOTE');
put msg;
end;
if cccselect<1 then do;
msg = sasmsg('sashelp.dmine', 'rpt_noValidclusterNum_note', 'NOQUOTE');
put msg;
end;
call symput('em_maxC', strip(put(numSel,best.)));
end;
run;
*------------------------------------------------------------*;
* Clus3: Training;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Clus3: Run DMVQ procedure;
*------------------------------------------------------------*;
title;
options nodate;
proc dmvq data=WORK.Clus3_DMDB dmdbcat=WORK.Clus3_DMDB std=STD nominal=GLM ordinal=RANK
;
input %DMVQINTERVAL / level=interval;
input %DMVQNOMINAL / level=nominal;
input %DMVQORDINAL / level=ordinal;
VQ maxc = 4 clusname=_SEGMENT_ CLUSLABEL="Segment Id" DISTLABEL="Distance";
MAKE outvar=EMWS2.Clus3_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=EMWS2.Clus3_OUTSTAT outmean=EMWS2.Clus3_OUTMEAN;
code file="\\uisnutvdiprof1a\redirected$\bkris2\Documents\ZetaProject\ZetaExploratoryAnalysis\Workspaces\EMWS2\Clus3\DMVQSCORECODE.sas"
group=Clus3
;
run;
quit;
