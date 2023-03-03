function [filteredSample] = HPFilterSample(sample,fs)
passbandSt = ((fs-500)/(44100/2));
stopbandEnd =((fs-1500)/(44100/2));

F = [0 stopbandEnd passbandSt 1];
A = [0 0 1 1];
filter = firls(250,F, A);

filteredSample = conv(sample,filter);
end

