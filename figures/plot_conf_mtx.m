function plot_conf_mtx(CONFUSION)

CONF_ORIG = CONFUSION;
N = size(CONFUSION,1);
%normalise
for k = 1:N
CONFUSION(k,:) = CONFUSION(k,:)./sum(CONFUSION(k,:));      
end

figure(100)
clf
imagesc(1-CONFUSION, [0,1]);
axis equal;
axis([1-0.5 N+0.5 1-0.5 N+0.5])
set(gca,'YTick',[]);
set(gca,'XTick',[]);
offset = 0.3;
if N<7
    for i = 1:N
        %text(0,i,params.classes{i});
        %text(i,0,params.classes{i});

        for j = 1:N
        if CONFUSION(i,j) < 0.5 && CONFUSION(i,j) >= 1e-2
                text(j-offset,i,sprintf('%0.2f', CONFUSION(i,j)),'color',[0 0 0], 'FontSize',18);
                %text(j,i,num2str(CONFUSION(i,j),2),'color',[0 0 0]);
        elseif CONFUSION(i,j) < 1e-2 
                text(j,i,sprintf('%0.0f', CONFUSION(i,j)),'color', [0 0 0], 'FontSize',18);
        else
                text(j-offset,i,sprintf('%0.2f', CONFUSION(i,j)),'color', [1 1 1], 'FontSize',18);
        end

        end
    end

elseif N>=7 && N<=15
   
    for i = 1:N
        for j = 1:N

            if CONFUSION(i,j) < 0.5 && CONFUSION(i,j) >= 1e-1
                    text(j-offset,i,sprintf('%0.0f', CONF_ORIG(i,j)),'color',[0 0 0], 'FontSize',16);
                    %text(j,i,num2str(CONFUSION(i,j),2),'color',[0 0 0]);
            elseif CONFUSION(i,j) < 1e-1 
                    text(j,i,sprintf('%0.0f', CONF_ORIG(i,j)),'color', [0 0 0], 'FontSize',14);
            else
                    text(j-offset,i,sprintf('%0.0f', CONF_ORIG(i,j)),'color', [1 1 1], 'FontSize',16);
            end

        end
    end  
    
    
end
    colormap(gray);
%title(sprintf('%s confusion matrix',confusion));
%title('Confusion matrix');