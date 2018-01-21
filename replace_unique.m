function [result] = replace_unique(a)

    uniques = unique(a);
    result = zeros(size(a));
    
    for i = 1:numel(uniques)
        u = uniques(i);
        result(a == u) = i;
    end

end