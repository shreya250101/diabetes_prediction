drop _temp_;
if (P_Diabetes_Predictionprediabetes ge 0.0373457819273) then do;
b_Diabetes_Prediction = 1;
end;
else
if (P_Diabetes_Predictionprediabetes ge 0.02791535344439) then do;
b_Diabetes_Prediction = 2;
end;
else
if (P_Diabetes_Predictionprediabetes ge 0.02725232446296) then do;
b_Diabetes_Prediction = 3;
end;
else
if (P_Diabetes_Predictionprediabetes ge 0.02345942775753) then do;
_temp_ = dmran(1234);
b_Diabetes_Prediction = floor(4 + 6*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_Diabetes_Prediction = floor(10 + 11*_temp_);
end;
