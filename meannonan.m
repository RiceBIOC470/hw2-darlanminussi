function mm=meannonan_modified(x)
notin=isnan(x) | isinf(x);
x(notin)=[];

mm=mean(x);