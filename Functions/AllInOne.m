function [fullSample] = AllInOne()
    sample = audioread("crazy.wav");
    Spec(sample,"Crazy Original");
    FSandDSsample = LPFSandDS(sample);
    Spec(FSandDSsample,'Fox Filtered and Down Sampled');
    [LP, HP] = LPandHP(FSandDSsample);
    Spec(LP,"Lowpass Filter");
    Spec(HP,"Highpass Filter")
    [LPLP, LPHP] = LPandHP(LP);
    [HPLP, HPHP] = LPandHP(HP);
    Spec(LPLP,"LPLP Filter");
    Spec(LPHP,"LPHP Filter");
    Spec(HPLP,"HPLP Filter");
    Spec(HPHP,"HPHP Filter");
    LPnew = UpSampleandFilter(LPLP,LPHP);
    HPnew = UpSampleandFilter(HPLP,HPHP);
    fullSample = UpSampleandFilter(LPnew,HPnew);
    Spec(fullSample,"Recombined Sample");
end

