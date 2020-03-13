%% outline script of image display

%session 5 DAFNI module
%6/3/20

%%prelims

% niftiread('__'), niftiinfo()
% ~ loads in nifti data
% volumeViewer(V) ~ visualise the volume - displays 3d information

%displaying images
    %image() %axis/image orientation
    %imagesc() %display images with weird range (not between 0-255size(D))
    
    %returnSlice() - returns 2D slice from 3d cube, squeezes so no weird
                      %extra variables ~ from previous work

                      
%% makeMontage plan

% montage()
% - for 3d data how to display montage()
% - change which img/slice displayed
% - change range of colours displayed
    % colourmap() ?

% 1. make random data, 3d array or see if matlab has any sample data sets

% load MRI (matlab dset)
 % convert 4d in 3d = squeeze

% need to create robust range (currently using colourmap in wrong place,
% want to focus it at the latter, more interresting end of the histogram)
% so take the median? 

%take 5% of tendencies of images at each end of data in order to reach
%correct points

%montage(__,name,Value)
    

%customise number of images in montage
    %'DisplayRange', [low, high] 
    %adjust automatically to data set? 
        %calculate 5 and 95 centile value and include in adapted montage
        %script
%% use actual data

% fname = '~/subject-C/mprage.nii.gz
% data = niftiread('fname')

% take specific slices - if 250 slices? in certain number of steps


fname = 'CogNeuro03-601-WIP_sMPRAGEs3.nii';

data = niftiread(fname);

montage(data) % doesnt specify any slices

%% specify slice

nSlices = size(data,3);
nDisplay = 10;
idx = round(linspace(1, nSlices, nDisplay)); %gives round numbers- can't index into decimals

montage(data, 'Indices', idx);

%% fix display range

%find 5th and 95th percentile - gives better representation of low and high
%points for colourmap

%percentile [5,95] lists between 5,95
    %intensity shited to some negative values 'scale and shift' in nifti
    %file
    
robustRange = prctile(data(:), [5, 95]);

montage(data, 'Indices', idx, 'DisplayRange', robustRange);

%% switch x and y values so that orientation of output is fixed - 
    % permuting the dimensions
    
    dataP = permute(data, [2, 1, 3]);
    
    
montage(dataP, 'Indices', idx, 'DisplayRange', robustRange);

