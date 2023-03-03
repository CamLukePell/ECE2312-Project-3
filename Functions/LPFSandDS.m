function [dsFiltered] = LPFSandDS(sample,fs,FS)
    filtered = LPFilterSample(sample,fs,FS);
    dsFiltered = downsample(filtered,2);
end

