function [ filenames ] = get_filenames( root_dir, mask, append_root_dir)
%GET_FILENAMES Returns only the filenames of all files with specified "mask"
% By default, search begins recursively from the current directory
if (nargin > 0)
   current_dir = pwd;
   addpath(current_dir);
   cd(root_dir); 
end

if (nargin < 3)
   append_root_dir = 0; 
end

files = rdir(mask);
filenames = {};

for i = 1:length(files)
    if (~ append_root_dir)
        filenames{i} = files(i).name;
    else
        filenames{i} = [root_dir '\\' files(i).name];
    end
end

if (nargin > 0)
   cd(current_dir); 
   rmpath(current_dir);
end

end

