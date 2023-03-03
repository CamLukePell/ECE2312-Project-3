function [filteredSample] = LPFilterSample(sample,fs,FS)
stopbandSt = fs/(FS/2);
passbandEnd =fs/(FS/2);

F = [0 passbandEnd stopbandSt 1];
A = [1 1 0 0 ];
filter = firls(250,F, A);
filteredSample = conv(sample,filter);
end

