clearvars -except unnamed;
clc;
i = length (unnamed(:,6));

%create matrix of 10*5
analyses(1,5)=0;
analyses (51,5)=0;
a=0;

k=0;
for a =26:(i-26);
    if unnamed(a,1)>=0.05
        matrix  = unnamed (a-25:a+25,2:6);
        analyses = analyses+matrix;
        k=k+1;
    end
end

F_matrix = analyses ./k;