disp('testing')
  load ('/Users/sanjanas/Documents/MATLAB/HWCR1/training_set/featureout.mat');
  p=featureout;
  disp(p);
 % p=p';
 % save('D:\final\project demo april 7\New folder (2)\test code(segmentation)\featureout.mat','featureout','-append');
  %end
  %p=premnmx(p);
  %p;
 % p=p';
  %p;

  net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
load /Users/sanjanas/Documents/MATLAB/HWCR1/training_set/net.mat;
load net;

%load net;
  y5=sim(net,p);
 % y5=abs(y5);
  %y5=round(y5);

 % y5=y5'
 disp(y5);
 [C I]=max(y5);
 disp(I)
 disp(C)
 
  %disp('1.A   2.B   3.C  4.D  5.E 6.F 7.G ')   
 
 %%
 % 
 %  PREFORMATTED
 % 
 %  PREFORMATTED
 % 
 %  PREFORMATTED
 %  TEXT
 % 
 %  TEXT
 % 
 %  TEXT
 % 
  fid = fopen('/Users/sanjanas/Documents/MATLAB/HWCR1/training_set/output.txt','a','ieee-le','UTF-8');
  
if (I==1)
    fprintf(fid,char(hex2dec('0B95'))); %ka
fclose(fid);
elseif (I==2)
    fprintf(fid,strcat(char(hex2dec('0BB5')),char(hex2dec('0BBF')))); %vi
fclose(fid);     
elseif (I==3)
    fprintf(fid,strcat(char(hex2dec('0BA4')),char(hex2dec('0BC8'))));%thai
fclose(fid);     
elseif (I==4)
    fprintf(fid,strcat(char(hex2dec('0BAE')),char(hex2dec('0BCA'))));%mo
fclose(fid);  
elseif (I==5)
    fprintf(fid,strcat(char(hex2dec('0BB4')),char(hex2dec('0BBF'))));%zhi
fclose(fid); 
elseif (I==6)
    fprintf(fid,strcat(char(hex2dec('0BB5')),char(hex2dec('0BC1'))));%vu
fclose(fid);
elseif(I==7)
    fprintf(fid,char(hex2dec('0B85'))); %a
fclose(fid);
elseif(I==8)
    fprintf(fid,char(hex2dec('0BA4'))); %tha
fclose(fid);
elseif(I==9)
    fprintf(fid,char(hex2dec('0BCD'))); %ith
fclose(fid);

%elseif (I==11)
%    fprintf(fid,'கோ');
%fclose(fid);  
%elseif (I==12)
%    fprintf(fid,'கௌ');
%fclose(fid); 
%elseif(I==13)
%    fprintf(fid,'ங');
%fclose(fid);
%elseif (I==14)
%    fprintf(fid,'ஙா');
%fclose(fid);     
%elseif (I==15)
%    fprintf(fid,'ஙெ');
%fclose(fid);     
%elseif (I==16)
%    fprintf(fid,'ஙீ');
%fclose(fid);  
%elseif (I==17)
%    fprintf(fid,'ஙு');
%fclose(fid);  
%elseif (I==18)
%    fprintf(fid,'ஙூ');
%fclose(fid);  
%elseif (I==19)
%    fprintf(fid,'ஙி');
%fclose(fid);  
%elseif (I==20)
%    fprintf(fid,'ஙே');
%fclose(fid);  
%elseif (I==21)
%    fprintf(fid,'ஙை');
%fclose(fid);  
%elseif (I==22)
%    fprintf(fid,'ஙொ');
%fclose(fid);  
%elseif (I==23)
%    fprintf(fid,'ஙோ');
%fclose(fid);  
%elseif (I==24)
%    fprintf(fid,'ஙௌ');
%fclose(fid);  
%elseif (I==25)
%    fprintf(fid,'ச');
%fclose(fid);  
%elseif (I==26)
%    fprintf(fid,'சா');
%fclose(fid);  
%elseif (I==27)
%    fprintf(fid,'சி');
%fclose(fid);  
%elseif (I==28)
%    fprintf(fid,'சீ');
%fclose(fid); 
%elseif (I==29)
%    fprintf(fid,'சு');
%fclose(fid);  
%elseif (I==30)
%    fprintf(fid,'சூ');
%fclose(fid);  
%elseif (I==31)
%    fprintf(fid,'செ');
%fclose(fid);  
%elseif (I==32)
%    fprintf(fid,'சே');
%fclose(fid);  
%elseif (I==33)
%    fprintf(fid,'சை');
%fclose(fid);  
%elseif (I==34)
%    fprintf(fid,'சொ');
%fclose(fid);  
%elseif (I==35)
%    fprintf(fid,'சோ');
%fclose(fid);  
%elseif (I==36)
%    fprintf(fid,'சௌ');
%fclose(fid);  



%elseif(I==7)
 %   fprintf(fid,'பறவை');
%fclose(fid);
else
     disp(' not Found');
     
   clear
end
 
 
 