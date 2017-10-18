function indcs=indc(number_of_patients)
c=rand(1,number_of_patients);
[~,s2]=sort(c);
indcs=mod(s2,10)+1;