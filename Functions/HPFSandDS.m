function [dsFiltered] = HPFSandDS(sample,fs)
    filtered = HPFilterSample(sample,fs);
    dsFiltered = downsample(filtered,2);
end

