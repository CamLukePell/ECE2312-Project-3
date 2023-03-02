function [filteredSample] = HPFilterSample(sample)
passbandSt = (4000/(44100/2));
stopbandEnd =((4000-500)/(44100/2));

F = [0 stopbandEnd passbandSt 1];
A = [0 0 1 1];
filter = firls(250,F, A);
filteredSample = conv(sample,filter);
end

