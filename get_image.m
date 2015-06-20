function [ image ] = get_image( indices, colours )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    image = zeros([size(indices) 3]);
    %Matlab has indexes the other way around
    for x=1:size(indices,2);
        for y=1:size(indices,1);
            image(x,y,:) = colours( indices(x,y),: );
        end
    end

end

