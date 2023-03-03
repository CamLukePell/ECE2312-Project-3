function [dsFiltered] = HPFSandDS(sample,fs,FS)
    filtered = HPFilterSample(sample,fs,FS);
    dsFiltered = downsample(filtered,2);
end

