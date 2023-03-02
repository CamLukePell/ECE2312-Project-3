function [filteredSample] = HPFilterSample(sample)
fs = 4000;
passbandSt = ((fs-1000)/(44100/2));
stopbandEnd =((fs-2000)/(44100/2));

F = [0 stopbandEnd passbandSt 1];
A = [0 0 1 1];
filter = firls(250,F, A);
filteredSample = conv(sample,filter);
end

