%%20/3/20 lpxsc16
%montage of anatomy , before and after BET
%2 figure subplot

fig2 = figure();
%%
subplot(2,2,[1,2])
    makeMontage('mprage.nii.gz',18);
    colorbar
    title('Slice Montage (Unstripped Skull)')
    axis('image')
   %%
subplot(2,2,[3,4])
    makeMontage('mprage_brain.nii',18);
    colorbar
    title('Slice Montage (Stripped Skull)')
    axis('image')
    
    %%
    fig2.paperSize = [15, 10]
    fig2.PaperUnits = 'centimeters'
    fig2.PaperPosition = [0, 0, 15, 10]