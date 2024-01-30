vid = VideoReader( "C:\Users\User\Desktop\1.avi" ) ;
numFrames = vid.NumberOfFrames ;
n = numFrames ;

for i = 1:1:n
  frames = read( vid, i ) ;
  imwrite( frames, [ 'Image' int2str(i), '.jpg' ] ) ;
  im( i ) = image( frames ) ;
end
