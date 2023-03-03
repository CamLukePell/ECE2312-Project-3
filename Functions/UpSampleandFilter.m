function [combinedSample] = UpSampleandFilter(LP,HP,fs,FS)
usLP = upsample(LP,2);
filterusLP = LPFilterSample(usLP,fs,FS);
usHP = upsample(HP,2);
filterusHP = HPFilterSample(usHP,fs,FS);
combinedSample = filterusLP + filterusHP;
end
