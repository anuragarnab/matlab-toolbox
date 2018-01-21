function [output] = superimpose_image_label(image_name, label_name, alpha, colour_map, label_adjustment)

    if (nargin < 4) colour_map = -1; end;
    if (nargin < 5) label_adjustment = 0; end;

    im = imread(image_name);
    [label, map] = imread(label_name);
    
    if (numel(colour_map) > 1 )
       map = colour_map; 
    end
    
    label = label + label_adjustment;
    label_im = ind2rgb(label, map) .* 255;
    
    output = blend_images(im, label_im, alpha);

end
