if upcase(NAME) = "AGE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "ANYHEALTHCARE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CHOLCHECK" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DIFFWALK" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "EDUCATION" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "FRUITS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "HEARTDISEASEORATTACK" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "INCOME" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "MENTHLTH" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NODOCBCCOST" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PHYSACTIVITY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PHYSHLTH" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_DIABETES_PREDICTIONDIABETES" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_DIABETES_PREDICTIONNO_DIABETES" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_DIABETES_PREDICTIONPREDIABETES" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "SEX" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "SMOKER" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "STROKE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "VEGGIES" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
