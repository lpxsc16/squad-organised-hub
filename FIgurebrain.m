%%24/3/20 lpxsc16
%2 figure subplot showing brainanatomy image pre and post BET

 
 figure()
 slice = 133
 %%
subplot(1,2,2);
brain = niftiread('mprage_brain.nii');
rsb = returnSlice(brain,slice,2);
 imagesc(rsb)
 colormap(gray())
 axis('off')
 axis('image')
 view(-90,90)
 title('(B) Brain Extracted Image')
 %%
 subplot(1,2,1);
 skull = niftiread('mprage.nii');
 rss = returnSlice(skull,slice,2);
 imagesc(rss)
 colormap(gray())
 axis('off')
 axis('image')
 view(-90,90)
 title('(A) Raw Image')