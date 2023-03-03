function [dsFiltered] = LPFSandDS(sample,fs)
    filtered = LPFilterSample(sample,fs);
    dsFiltered = downsample(filtered,2);
end

