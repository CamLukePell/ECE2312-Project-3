function [filteredSample] = LPFilterSample(sample)
stopbandSt = (4000/(44100/2));
passbandEnd =((4000-500)/(44100/2));

F = [0 passbandEnd stopbandSt 1];
A = [1 1 0 0 ];
filter = firls(250,F, A);
filteredSample = conv(sample,filter);
end

