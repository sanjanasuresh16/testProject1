array=[];
for a = 66:85
   filename = ['/Users/saivignesh/Documents/MATLAB/HWCR1/training_set/training_set/' num2str(a,'%2d') '.jpg'];
   img = imread(filename);
   if size(img,3)==3 % RGB image
    imagen=rgb2gray(img);
   end
%% Convert to binary image
threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);
imshow(imagen);

%% Convert to binary image
z=imresize(imagen,[50 50]);
f=feature_extract(z);
array=[array f];
   % do something with img
end
array=transpose(array);
save('test.mat','array');
csvwrite('/Users/saivignesh/Documents/MATLAB/HWCR1/training_set/csv.dat',array)
