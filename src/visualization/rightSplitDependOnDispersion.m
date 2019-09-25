function rightSplitDependOnDispersion()
    stepDisp = 0.01;
    endDisp = 3;
    startDisp = 0;

    dispersion = startDisp:stepDisp:endDisp;
    percentCorrectSplit = zeros(1, length(dispersion));
    
    for i = 1: 1: length(dispersion)
        outputMain = main(dispersion(i));
        percentCorrectSplit(i)= outputMain;
    end
    
    plot(dispersion,percentCorrectSplit);
    ylim([30 105]);
    grid on;
    xlabel('Dispersion');    
    ylabel('Percent correct splitting');
   
    
end 