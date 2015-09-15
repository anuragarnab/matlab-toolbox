function [diff] = compare_mat (mat1, mat2)

    if (size(mat1) ~= size(mat2) )
       diff = -1; 
    end
    
    diff = sum(abs(mat1(:) ~= mat2(:)));
end