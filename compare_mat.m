% Returns how many elements are different in mat1 and mat2
% Returns -1 if the size of the matrices being compared are not the same
function [diff] = compare_mat (mat1, mat2)

    if (size(mat1) ~= size(mat2) )
       diff = -1; 
       return;
    end
    
    diff = sum( mat1(:) ~= mat2(:) );
end