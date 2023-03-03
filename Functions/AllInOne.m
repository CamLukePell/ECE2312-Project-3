function [] = AllInOne()
FS = 44100;
fs = 8000;
sample = audioread("Buckles.wav");
Spec(sample,"Buckles Original",FS);
FSandDSsample = LPFSandDS(sample,fs,FS);
Spec(FSandDSsample,'Buckles Filtered and Down Sampled',FS/2);
[LP, HP] = LPandHP(FSandDSsample,fs/2,FS/2);
Spec(LP,"Lowpass Filter",FS/4);
Spec(HP,"Highpass Filter",FS/4)
[LPLP, LPHP] = LPandHP(LP,fs/4,FS/4);
[HPLP, HPHP] = LPandHP(HP,fs/4,FS/4);
Spec(LPLP,"LPLP Filter",FS/4);
Spec(LPHP,"LPHP Filter",FS/4);
Spec(HPLP,"HPLP Filter",FS/4);
Spec(HPHP,"HPHP Filter",FS/4);
LPnew = UpSampleandFilter(LPLP,LPHP,fs/2,FS/2);
HPnew = UpSampleandFilter(HPLP,HPHP,fs/2,FS/2);
fullSample = UpSampleandFilter(LPnew,HPnew,fs,FS);
Spec(fullSample,"Recombined Sample",FS/2);
audiowrite("team9-synthesized.wav",fullSample,22050)
end

