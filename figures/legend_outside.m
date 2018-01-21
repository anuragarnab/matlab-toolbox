function [] = legend_outside(l_handle, axis_handle, xaxis_factor, lhandle_factor)

    if (nargin < 2) axis_handle = gca; end;
    if (nargin < 3) xaxis_factor = 0.9; end;
    if (nargin < 4) lhandle_factor = 1.15; end;

    % Reduce the length of the X-axis
    pos = get(axis_handle,'Position');
    pos(3)=xaxis_factor*pos(3);
    set(gca,'Position',pos);

    y = pos(2);

    % Move the location of the legend
    pos = get(l_handle,'Position');
    pos(1) = lhandle_factor*pos(1);
    pos(2) = y;
    set(l_handle,'Position',pos);

end