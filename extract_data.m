close all
clear all
clc

load_folder = './data';

list = dir(load_folder);

figure(1);
h1 = imshow(zeros(480,640,3));

figure(2);
h2 = imagesc(zeros(480,640));

for k=1:length(list) - 2,
    
    load_file = strcat(load_folder,'/',list(k+2).name);
    [pathstr,name,ext] = fileparts(load_file);

    % load the saved raw sequence
    load(load_file);
     
    for j=1:length(sequence.time),
        colour(:,:,1:3) = sequence.colour(:,:,:,j);
        depth(:,:) = sequence.depth(:,:,j);
        
        set(h1,'cdata',colour./255);
        set(h2,'cdata',depth./1000);

%         figure(1),imagesc(F.energy);
        pause(0.2);

    end

end

