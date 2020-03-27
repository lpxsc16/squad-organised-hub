%% function to make 3 panel figure (FSL)

% sc 13-3-2020

%assignment, expain regression plot etc from online feedbacl form in
%-C.feat file

%% Locations
% data - 
    % ~/data/2020-dafni/subject-C/CogNeuro03
%    datadir = (takes to diff directory)
%code -
    % ~/squad-organised-hub
    
%pwd = print working directory

datadir = 'C:\Users\shery\Documents\squad-organised-hub-master\squad-organised-hub-master\subject-C.feat';
%change into data directory
%changeWorkingDir = pwd();
%cd(datadir)

cd (datadir)

fig = figure();
%%
%panel A - slice of anatomy file
    %return slice 
    %cd ('reg')
    %data = niftiread('highres.nii');
    
    %chngDir = cd('~/data/2020-dafni/squad-organised-hub-master/'); put in
    %same folder, causuing too many issues
    
   %return to data directory
  %cd(datadir)
  
       %return to other directoryslice   
   %rs = returnSlice(data,12,1);
   
   
%%Load render map
   
   %%
%cd('~/data/2020-dafni/subject-C');        
cd('C:/Users/shery/Documents/squad-organised-hub-master/squad-organised-hub-master/')
        %data = niftiread('mprage.nii');
        %data = niftiread('rendered_thresh_zstat1.nii');

data = niftiread('mprage_brain.nii.gz');

cd(datadir);

rs = returnSlice(data,133,3);
    %slice 133 of 250+, oritnation 2 as best view

subplot(2,2,1)
   imagesc(rs)
   axis('image') 
   colormap(gray())
  % colorbar 
   axis('off')
   view(-90,90)
   %axis('image')
   
   title('(A) Activation Example: Slice 133')
 %%   ctivation histogram()
%cd('~/data/2020-dafni/subject-C');        
  cd('C:/Users/shery/Documents/squad-organised-hub-master/squad-organised-hub-master/')  
 
%need to scale this better

% pick a specific slice (133) , then calculate intensity(?) of each voxel. then
% plot

subplot(2,2,2)
data(:);
rsind = (data > 0);

     histogram(data(rsind))
     %axis('image')
cd(datadir)     
     %need to reduce ouer limits- like robust range type thing
     
     title('(B) Histogram: Voxel Intensity ')
%%
%panel C - timecourse plot 
    %hint: folder tsplot, load()
    % tsplot_zstat.txt -- info from 'best' voxel highest zstat value
    
    cd('C:/Users/shery/Documents/squad-organised-hub-master/squad-organised-hub-master/subject-C.feat/tsplot/');
    
tsplotZ = load('tsplot_zstat1.txt');
    
    cd(datadir);

subplot(2,2,[3,4])
    %colormap('tsplotZ')
   hold on
   plot(tsplotZ(:,1))
   plot(tsplotZ(:,3))
    %axis('image')
legend(('Data Set'),('Model Fit'))
   
   title('(C) Timeseries plot of z-stat voxel')
   %%
   
    fig.paperSize = [15, 10];
    fig.PaperUnits = 'centimeters';
    fig.PaperPosition = [0, 0, 15, 10];
    %%back to where script is
  cd(datadir)