function makeMontage(fname, nDisplay)
%makeMontage from data in a file

%specify a file name 
%specify nDislay ( how many slices from start to end)
%makeMontage('~/data/subject-C/mprage.nii.gz', 20)
%20 = number of slices returned 

fname = 'mprage.nii';

%load data 
data = niftiread(fname);

%robust range - 5th 95th percentiles
robustRange = prctile(data(:), [5, 95]); 

%permute step; make images nicer (whole numbers)
%permute first so not to confuse the indicies
 dataP = permute(data, [2, 1, 3]);
 
%work out indicies
nSlices = size(data, 3);
idx = round(linspace(1, nSlices, nDisplay));

%makeMontage with MATLAB command
montage(dataP, 'Indices', idx, 'DisplayRange', robustRange);

end
