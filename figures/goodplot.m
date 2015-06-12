function goodplot(fontSize, font, titleFontSize)
% function which produces a nice-looking plot
% and sets up the page for nice printing

if (nargin < 1) fontSize = 16; end;
if (nargin < 2) font = 'Times'; end;
if (nargin < 3) titleFontSize = fontSize + 2; end;


%set(findall(gcf,'type','axes'),'fontsize',14,'FontWeight', 'Bold', 'FontName', 'Calibri')
set(get(gca,'title'),'FontSize', titleFontSize, 'FontWeight', 'Bold', 'FontName', font);
set(get(gca,'xlabel'),'FontSize', fontSize, 'FontWeight', 'Bold','FontName', font);
set(get(gca,'ylabel'),'FontSize', fontSize, 'FontWeight', 'Bold','FontName', font);
set(get(gca,'zlabel'),'FontSize', fontSize, 'FontWeight', 'Bold','FontName', font);

% set(get(gca,'xlabel'),'FontSize', 16, 'FontWeight', 'Bold');
% set(get(gca,'ylabel'),'FontSize', 16, 'FontWeight', 'Bold');
% set(get(gca,'zlabel'),'FontSize', 16, 'FontWeight', 'Bold');
% set(get(gca,'title'),'FontSize', 18, 'FontWeight', 'Bold');
%colorbar;
% box off; axis square;
set(gca,'linewidth',2);
set(gca,'FontSize',14);
set(gca,'FontWeight','Bold');
set(gca,'FontName',font);
set(gcf,'color','w');
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [12 12]);
set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','Manual');
end