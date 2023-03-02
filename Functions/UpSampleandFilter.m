function [combinedSample] = UpSampleandFilter(LP,HP)
usLP = upsample(LP,2);
filterusLP = LPFilterSample(usLP);
usHP = upsample(HP,2);
filterusHP = HPFilterSample(usHP);
combinedSample = filterusLP + filterusHP;
end
