function dataTTB = datawav2db(filename)
%% merubah file wav menjadi ttb pada octave band
% filename = nama file wav, contoh 'fena16000.wav'
% dataTTB  = TTB keluaran

% membaca data wav
[data, fs] = audioread(filename);

% memfilter data ke filterbank dgn octave band
% info tambahan baca keterangan pada fungsi filtbank.m
[ttb, freq] = filtbank(data, fs, 0.2, 'extended'); 

% data TTB, baris pertama frekuensi, baris kedua ttb
dataTTB = [freq; ttb];

end