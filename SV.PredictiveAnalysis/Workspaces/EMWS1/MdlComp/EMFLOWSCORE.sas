drop _temp_;
if (P_Diabetes_Predictionprediabetes ge 0.03548046462513) then do;
b_Diabetes_Prediction = 1;
end;
else
if (P_Diabetes_Predictionprediabetes ge 0.02655255650647) then do;
_temp_ = dmran(1234);
b_Diabetes_Prediction = floor(2 + 2*_temp_);
end;
else
if (P_Diabetes_Predictionprediabetes ge 0.02276436372766) then do;
_temp_ = dmran(1234);
b_Diabetes_Prediction = floor(4 + 6*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_Diabetes_Prediction = floor(10 + 11*_temp_);
end;
