array=[];
for a = 304:304
   filename = ['/Users/sanjanas/Documents/MATLAB/HWCR1/training_set/training_set/new/' num2str(a,'%2d') '.jpg'];
   img = imread(filename);
   if size(img,3)==3 % RGB image
    imagen=rgb2gray(img);
   end
%% Convert to binary image
threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);
%% Edge detection
Iedge = edge(uint8(imagen));
%% Morphology
% * *Image Dilation*
se = strel('square',3);
Iedge2 = imdilate(Iedge, se); 
% * *Image Filling*

Ifill= imfill(Iedge2,'holes');
Ifill=Ifill & imagen;

re=Ifill;


    %Fcn 'lines' separate lines in text
    imgn=re;
    
    % Label and count connected components
    [L Ne] = bwlabel(imgn);    
    %Uncomment line below to see lines one by one
    %imshow(fl);pause(0.5)    

%rotation
%figure(7);
%Irot=imrotate(Ifill,45);
%imshow(Irot);
%title('rotation');
%% Label connected components
%[L Ne]=bwlabel(Ifill);
%disp(Ne);


%% Measure properties of image regions
%propied=regionprops(L,'BoundingBox');
%hold on
%% Plot Bounding Box
%for n=1:size(propied,1)
 %   rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',2)
%end
%hold off
%pause (1)
%% Objects extraction

    [r,c] = find(L==1);
    n1=imgn(min(r):max(r),min(c):max(c));
    BW2 = bwmorph(n1,'thin',Inf);
        
    imrotate(BW2,0);
    pause(0.5);


    z=imresize(n1,[50 50]);
     
    f=feature_extract(z);
array=[array f];
   % do something with img
end
array=transpose(array);
save('test.mat','array');
csvwrite('/Users/sanjanas/Documents/MATLAB/HWCR1/training_set/csv.dat',array)


