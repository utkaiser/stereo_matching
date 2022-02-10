function main()

I_1 = imread("data/tsukuba2.png");
I_2 = imread("data/tsukuba1.png");

small_ws = stereo_matching(I_1, I_2, 10, 25, "ssd");
% medium_ws = stereo_matching(I_1, I_2, 20, 10, "ssd");
% big_ws = stereo_matching(I_1, I_2, 40, 10, "ssd");
% 
% figure;
% subplot(1,3,1)
imshow(small_ws)
% title('ws = 3')
% subplot(1,3,2)
% imshow(medium_ws)
% title('ws = 20')
% subplot(1,3,3)
% imshow(big_ws)
% title('ws = 40')
% sgtitle('window sizes ssd')
% 
% small_dr = stereo_matching(I_1, I_2, 6, 3, "ssd");
% medium_dr = stereo_matching(I_1, I_2, 6, 10, "ssd");
% big_dr = stereo_matching(I_1, I_2, 6, 20, "ssd");
% 
% figure;
% subplot(1,3,1)
% imshow(small_dr)
% title('dr = 3')
% subplot(1,3,2)
% imshow(medium_dr)
% title('dr = 10')
% subplot(1,3,3)
% imshow(big_dr)
% title('dr = 20')
% sgtitle('disparity range ssd')

% small_ws = stereo_matching(I_1, I_2, 3, 10, "nor");
% medium_ws = stereo_matching(I_1, I_2, 20, 10, "nor");
% big_ws = stereo_matching(I_1, I_2, 40, 10, "nor");
% 
% figure;
% subplot(1,3,1)
% imshow(small_ws)
% title('ws = 3')
% subplot(1,3,2)
% imshow(medium_ws)
% title('ws = 20')
% subplot(1,3,3)
% imshow(big_ws)
% title('ws = 40')
% sgtitle('window sizes nor')
% 
% small_dr = stereo_matching(I_1, I_2, 6, 3, "nor");
% medium_dr = stereo_matching(I_1, I_2, 6, 10, "nor");
% big_dr = stereo_matching(I_1, I_2, 6, 20, "nor");
% 
% figure;
% subplot(1,3,1)
% imshow(small_dr)
% title('dr = 3')
% subplot(1,3,2)
% imshow(medium_dr)
% title('dr = 10')
% subplot(1,3,3)
% imshow(big_dr)
% title('dr = 20')
% sgtitle('disparity range nor'

% big_ssd = stereo_matching(I_1, I_2, 10, 25, "ssd");
% big_dr = stereo_matching(I_1, I_2, 10, 25, "nor");
% figure;
% subplot(1,2,1);
% imshow(big_ssd);
% title("ws=10, dr=25, ssd");
% subplot(1,2,2);
% imshow(big_dr);
% title("ws=10, dr=25, nor");

end 