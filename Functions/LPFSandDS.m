function [dsFiltered] = LPFSandDS(sample)
    filtered = LPFilterSample(sample);
    dsFiltered = downsample(filtered,2);
    
end

