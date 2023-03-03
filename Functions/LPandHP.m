function [LP,HP] = LPandHP(sample,fs)
    LP = LPFSandDS(sample,fs);
    HP = HPFSandDS(sample,fs);
end

