function [filteredSample] = HPFilterSample(sample,fs,FS)
passbandSt = ((fs)/(FS/2));
stopbandEnd =((fs)/(FS/2));

F = [0 stopbandEnd passbandSt 1];
A = [0 0 1 1];
filter = firls(250,F, A);

filteredSample = conv(sample,filter);
end

