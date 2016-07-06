function [ yRed, yGreen, yBlue, x ] = colour_histogram( image, normalise, do_plot)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    if (nargin < 3) do_plot = 0; end;

    red = image(:,:,1);
    green = image(:,:,2);
    blue = image(:,:,3);

    [yRed, x] = imhist(red);
    [yGreen, x] = imhist(green);
    [yBlue, x] = imhist(blue);
    
    if (normalise)
       assert( sum(yRed(:)) == sum(yGreen(:)) );
       assert( sum(yRed(:)) == sum(yGreen(:)) );
        
       yRed = yRed / sum(yRed);
       yGreen = yGreen / sum(yGreen);
       yBlue = yBlue / sum(yBlue);
    end

    if (do_plot)
        plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');
    end
end

