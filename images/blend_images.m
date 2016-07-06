function [ output ] = blend_images( im1, im2, alpha, channel_mask )
%BLEND_IMAGES Assume images either have 1 or 3 channels
%   Detailed explanation goes here

    if (nargin < 4) channel_mask = [1,1,1]; end;

    im1 = uint8(im1);
    im2 = uint8(im2);

    channels1 = size(im1,3);
    channels2 = size(im2,3);
    
    if (channels1 == channels2)
       output = im1 .* alpha + im2 .* (1-alpha); 
       return;
    end
       
    % This swapping is inefficient, but whatever   
    if (channels1 == 1)
        temp = im2;
        im2 = im1;
        im1 = temp;
    end
    
    % For blending when im1 has 3 channels, and im2 has 1 channel
    output = im1;
    if (channel_mask(1) ) output(:,:,1) = im1(:,:,1) .* alpha + im2 .* (1-alpha); end;
    if (channel_mask(2) ) output(:,:,2) = im1(:,:,2) .* alpha + im2 .* (1-alpha); end;
    if (channel_mask(3) ) output(:,:,3) = im1(:,:,3) .* alpha + im2 .* (1-alpha); end;

end
