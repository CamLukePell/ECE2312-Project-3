function [combinedSample] = UpSampleandFilter(LP,HP,fs)
usLP = upsample(LP,2);
filterusLP = LPFilterSample(usLP,fs);
usHP = upsample(HP,2);
filterusHP = HPFilterSample(usHP,fs);
combinedSample = filterusLP + filterusHP;
end
