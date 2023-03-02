function [] = Spec(speech_data,Name)
    window = hamming(512);
    N_overlap = 256;
    N_fft = 1024;
    [S,F,T,P] = spectrogram(speech_data,window,N_overlap,N_fft,44100,'yaxis');
    figure;
    surf(T,F,10*log10(P),'EdgeColor','none');
    axis tight;
    view(0,90);
    colormap("jet");
    set(gca,'clim',[-80,20]);
    ylim([0 8000])
    xlabel('Time (s)');ylabel('Frequency (Hz)')
    title(Name)
end

