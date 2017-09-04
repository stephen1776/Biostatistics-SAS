data corr_population;
   call streaminit(12345);
   do i = 1 to 1000;
      x = ceil(rand('uniform')*100);
      y = ceil(rand('uniform')*100);
      output;
   end;
   drop i;
run;