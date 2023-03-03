function [] = AllInOne()
fs = 4000;
sample = audioread("Buckles.wav");
Spec(sample,"Buckles Original");
FSandDSsample = LPFSandDS(sample,fs);
Spec(FSandDSsample,'Buckles Filtered and Down Sampled');
[LP, HP] = LPandHP(FSandDSsample,fs);
Spec(LP,"Lowpass Filter");
Spec(HP,"Highpass Filter")
[LPLP, LPHP] = LPandHP(LP,fs);
[HPLP, HPHP] = LPandHP(HP,fs);
Spec(LPLP,"LPLP Filter");
Spec(LPHP,"LPHP Filter");
Spec(HPLP,"HPLP Filter");
Spec(HPHP,"HPHP Filter");
LPnew = UpSampleandFilter(LPLP,LPHP,fs);
HPnew = UpSampleandFilter(HPLP,HPHP,fs);
fullSample = UpSampleandFilter(LPnew,HPnew,fs);
Spec(fullSample,"Recombined Sample");
audiowrite("team9-synthesized.wav",fullSample,22050)
end

