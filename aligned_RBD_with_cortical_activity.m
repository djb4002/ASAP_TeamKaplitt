clearvars -except unnamed;
clc;
i = length (unnamed(:,7));

%create matrix of 10*5
analyses(1,5)=0;
analyses (11,5)=0;
a=0;

k=0;
for a =5:(i-5);
    if unnamed(a,7)==1
        matrix  = unnamed (a-5:a+5,1:5);
        analyses = analyses+matrix;
        k=k+1;
    end
end

F_matrix = analyses ./k;