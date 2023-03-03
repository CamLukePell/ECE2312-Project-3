function [LP,HP] = LPandHP(sample,fs,FS)
    LP = LPFSandDS(sample,fs,FS);
    HP = HPFSandDS(sample,fs,FS);
end

