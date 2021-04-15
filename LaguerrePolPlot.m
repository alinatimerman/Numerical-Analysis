tic

n=4;  %degree of polynomial
clf  %clear figure

t=(-1 : 0.01 : 1)';  %the values interval transposed
ls={'-','--','--','-.'}  %line style
lw=[1.5,0.5,0.5,0.5] %line width
colorstring='kbgry'  %black, blue, green, red, yellow

for k = 1 : n
  y=LaguerrePol(t,k);
  if n~=4
    plot(t,y);
  else
    plot(t,y,'LineStyle',ls{k}, 'LineWidth', lw(k),'Color',colorstring(k));
    
  endif

hold on  
endfor

legend('n=1','n=2','n=3','n=4','Location','southeast');
xlabel('nodes','FontSize',13,'FontAngle','italic');
ylabel('poynomial','FontSize',13,'FontAngle','italic');
title('Laguerre Polynomial','FontSize',13)

toc