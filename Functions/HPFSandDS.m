function [dsFiltered] = HPFSandDS(sample)
    filtered = HPFilterSample(sample);
    dsFiltered = downsample(filtered,2);
end

