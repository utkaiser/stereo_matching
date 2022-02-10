function sol_mat = stereo_matching(img1, img2, win_size, disp_range, modus)
% simple window-based stereo matching algorithm for rectified stereo pairs

row = win_size;
while row<=size(img1,1)-win_size
    
    column = win_size;
    while column<=size(img1,2)-win_size
        term = min([column+disp_range,size(img2,2)-win_size]);
        %formula of lecture, gives window for image 1
        w_1 = img1(1-win_size+row:-1+win_size+row,1-win_size+column:-1+win_size+column,:);
        
        iter = column;
        while iter<=term
            
            %formula of lecture, gives window for image 2
            w_2 = img2(1-win_size+row:-1+win_size+row,1-win_size+iter:-1+win_size+iter,:);
            idx = 1+iter-column;
            if modus ~= 'ssd'
                res = calculate_normalized_corr(rgb2gray(w_1),rgb2gray(w_2));
            else
                res = calculate_ssd(w_1,w_2);
            end
            
            %save results
            mat(idx) = res;
            entry = save_entry(mat,modus);
            iter = iter + 1;
        end
        
        %save results
        sol_mat(row,column) = entry;
        column = column + 1;
        
    end
    row = row + 1;
    
end
%modify result
sol = sol_mat/disp_range;
end