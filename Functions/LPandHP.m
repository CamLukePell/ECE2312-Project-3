function [LP,HP] = LPandHP(sample)
    LP = LPFSandDS(sample);
    HP = HPFSandDS(sample);
end

