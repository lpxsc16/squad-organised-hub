%% 23/3/20 lpxsc16
    % 5 figure sublot displaying rendered treshold activation at specific slice  
figure()
slice = 13;
%allows all to change at once
hold on
 
%%
subplot(2,3,1)
    zs = niftiread('rendered_thresh_zstat1.nii');
    rsz = returnSlice(zs,slice,3);
    imagesc(rsz) 
    colormap(gray())
    view(-90,90)
    axis('off')
     axis('image')
        title('(A) Face Response')
    %%
 subplot(2,3,2)
    zs = niftiread('rendered_thresh_zstat2 2.nii');
    rsz = returnSlice(zs,slice,3);
    imagesc(rsz) 
    colormap(gray())
    view(-90,90)
    axis('off')
     axis('image')
     title('(B) Object Response')
        
    %%
subplot(2,3,3) 
    zs = niftiread('rendered_thresh_zstat3.nii');
    rsz = returnSlice(zs,slice,3);
    imagesc(rsz) 
    colormap(gray())
    view(-90,90)
    axis('off')
     axis('image')
        title('(C) Scene Response')
    %%
    
 subplot(2,3,[4,5])
   
        zs = niftiread('rendered_thresh_zstat4.nii');
        rsz = returnSlice(zs,slice,3);
        imagesc(rsz) 
        colormap(gray())
        view(-90,90)
        axis('off')
        axis('image')
        title('(D) Face vs Object & Scene')
        %% 
 subplot(2,3,6)
         zs = niftiread('rendered_thresh_zstat5.nii');
        rsz = returnSlice(zs,slice,3);
        imagesc(rsz) 
        colormap(gray())
        view(-90,90)
        axis('off')
         axis('image')
         title('(E) Object vs Face & Scene')
        
    
    
    
   
    
    