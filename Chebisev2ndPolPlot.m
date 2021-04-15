tic

n=6; % degree of polynomial 
clf %clear figure
t=(-1:0.01:1)'; %the values in the interval transposed
ls={'-.','--','--','-.'}; %line style
lw=[1.5,0.5,0.5,0.5]; %line width
colorstring='kbgry'; %black, blue, green, red, yellow

for k=1:n
    y=Chebisev2ndPol(t, k); %calling the .m script that was done in prev lab
    if n~=4
        plot(t,y);
        hold on
    else
    plot(t,y,'LineStyle',ls{k},'LineWidth',lw(k),'Colour', colorstring(k));
    hold on
endif
endfor


legend('n=1','n=2','n=3','n=4','Location','southeast');

xlabel('nodes','FontSize',13,'FontAngle','italic');
ylabel('polynomial','FontSize',13,'FontAngle','italic');
title('Cebisev Second Polynomial','FontSize',13);

toc