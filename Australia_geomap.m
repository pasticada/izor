addpath C:\Australia;
addpath C:\Australia\geo_map\m_map;
%rehash toolboxcache
load('C:\Australia\Australia.mat');


month_90perc_range=zeros(length(code),1);
month_99perc_range=zeros(length(code),1);
month_9999perc_range=zeros(length(code),1);
month_median_range=zeros(length(code),1);

% months_of_highest_range=zeros(length(code),1);
% months_of_highest_90perc_range=zeros(length(code),1); %na ovaj način se zapravo sortira maximume
% months_of_highest_99perc_range=zeros(length(code),1);
% months_of_highest_9999perc_range=zeros(length(code),1);
% months_of_highest_median_range=zeros(length(code),1);


%mu=zeros(14,12);
vel=[];
for i=1:14 %ili duljina pojedine postaje
    
    s=sprintf([code{i},'_5.mat']);
    load(s,'Number_filt','Date_total'); 
    clear s;
    
    e=sprintf(['envelope_' code{i}]);
    load(e,'lower_envelope_filt','upper_envelope_filt'); 
    clear e;
    
    m=sprintf(['mask_' code{i}]);
    load(m); clear m;
    
    range=upper_envelope_filt.*mask-lower_envelope_filt.*mask;
    d=datevec(Date_total);
    
    month=d(:,2);
    
%     for j=1:12    %necu koristit find 
%         index=find(month==j);
%         mu(i,j)=nanmean(range(index)); %ovo je range upper and lower
%         envelope
%     end
    monthly_90perc_range=[prctile(range(d(:,2)==1),90) prctile(range(d(:,2)==2),90)  prctile(range(d(:,2)==3),90) ...
        prctile(range(d(:,2)==4),90) prctile(range(d(:,2)==5),90) prctile(range(d(:,2)==6),90) ...
        prctile(range(d(:,2)==7),90) prctile(range(d(:,2)==8),90) prctile(range(d(:,2)==9),90) ...
        prctile(range(d(:,2)==10),90) prctile(range(d(:,2)==11),90) prctile(range(d(:,2)==12),90)];
    monthly_99perc_range=[prctile(range(d(:,2)==1),99) prctile(range(d(:,2)==2),99)  prctile(range(d(:,2)==3),99) ...
        prctile(range(d(:,2)==4),99) prctile(range(d(:,2)==5),99) prctile(range(d(:,2)==6),99) ...
        prctile(range(d(:,2)==7),99) prctile(range(d(:,2)==8),99) prctile(range(d(:,2)==9),99) ...
        prctile(range(d(:,2)==10),99) prctile(range(d(:,2)==11),99) prctile(range(d(:,2)==12),99)];
    monthly_9999perc_range=[prctile(range(d(:,2)==1),99.99) prctile(range(d(:,2)==2),99.99)  prctile(range(d(:,2)==3),99.99) ...
        prctile(range(d(:,2)==4),99.99) prctile(range(d(:,2)==5),99.99) prctile(range(d(:,2)==6),99.99) ...
        prctile(range(d(:,2)==7),99.99) prctile(range(d(:,2)==8),99.99) prctile(range(d(:,2)==9),99.99) ...
        prctile(range(d(:,2)==10),99.99) prctile(range(d(:,2)==11),99.99) prctile(range(d(:,2)==12),99.99)]; 
    monthly_median_range=[median(range(d(:,2)==1),'omitnan') median(range(d(:,2)==2),'omitnan')  median(range(d(:,2)==3),'omitnan') ...
         median(range(d(:,2)==4),'omitnan') median(range(d(:,2)==5),'omitnan') median(range(d(:,2)==6),'omitnan') ...
         median(range(d(:,2)==7),'omitnan') median(range(d(:,2)==8),'omitnan') median(range(d(:,2)==9),'omitnan') ...
         median(range(d(:,2)==10),'omitnan') median(range(d(:,2)==11),'omitnan') median(range(d(:,2)==12),'omitnan')];

[~,month_90perc_range(i)]=max(monthly_90perc_range);
[~,month_99perc_range(i)]=max(monthly_99perc_range);
[~,month_9999perc_range(i)]=max(monthly_9999perc_range);
[~,month_median_range(i)]=max(monthly_median_range);
vel_90perc(i)=max(monthly_90perc_range)*100;
vel_99perc(i)=max(monthly_99perc_range)*100;
vel_9999perc(i)=max(monthly_9999perc_range)*100;
vel_median(i)=max(monthly_median_range)*100;
%clearvars -except monthly_90perc_range monthly_99perc_range monthly_9999perc_range monthly_median_range months_of_highest_90perc_range -Australia.mat
end

addpath C:\Australia\geo_map;
addpath C:\Australia\geo_map\m_map;
z=ncread('gebco_2020_n-0.6_s-50.0_w95.0_e170.0.nc','elevation'); %ucitaj podatke globalne batimetrije - dugo traje naredba
lat=ncread('gebco_2020_n-0.6_s-50.0_w95.0_e170.0.nc','lat');
lon=ncread('gebco_2020_n-0.6_s-50.0_w95.0_e170.0.nc','lon');
lon2=lon(1:50:end); %pregusta je rezolucija pa prorijedi s korakom 50
lat2=lat(1:50:end);
z2=z(1:50:end,1:50:end); %sejvano u world_bathymetrye

load world_bathymetry;
load('colorData.mat');
[LAT,LON] = meshgrid(lat2,lon2);
z2(z2>0)=NaN; %ne zanima nas kopno, samo more tj batimetrija
z2=z2*(-1); %dubine su negativnog predzanaka, pa stavi da su pozitivnog

figure(1)
set(1,'Position', [0 0 1100 1100],'Color','w');
m_proj('miller','long',[105 165],'lat',[-50 0]);
m_pcolor(LON,LAT,double(z2)); %bojanje batimetrije
shading interp;
c=othercolor('Blues7',40);
colormap(c);
hold on;
m_coast('patch',[0.93 0.93 0.93],'edgecolor','k');
m_grid('box','on','linewidth',1.5,'fontsize',14);

color=hsv(12);
color(4,:)=[0.7 1 0];
color(6,:)=[0 0.8 0.6];
for i=1:length(code)
    if (month_median_range(i)==6)
        marker_color=color(1,:);
    elseif (month_median_range(i)==7)
        marker_color=color(2,:);
    elseif(month_median_range(i)==8)
        marker_color=color(3,:);
    elseif(month_median_range(i)==9)
        marker_color=color(4,:);
    elseif(month_median_range(i)==10)
        marker_color=color(5,:);
    elseif(month_median_range(i)==11)
        marker_color=color(6,:);
    elseif (month_median_range(i)==12)
        marker_color=color(7,:);
    elseif (month_median_range(i)==1)
        marker_color=color(8,:);
    elseif (month_median_range(i)==2)
        marker_color=color(9,:);
    elseif (month_median_range(i)==3)
        marker_color=color(10,:);
    elseif (month_median_range(i)==4)
        marker_color=color(11,:);
    elseif (month_median_range(i)==5)
        marker_color=color(12,:);
    end
    
        if (vel_median(i)>0 && vel_median(i)<2)
        marker_size=5;
    elseif(vel_median(i)>2 && vel_median(i)<4)
        marker_size=7;
    elseif(vel_median(i)>4 && vel_median(i)<6)
        marker_size=9;
    elseif(vel_median(i)>6 && vel_median(i)<8)
        marker_size=11;
    elseif(vel_median(i)>8 && vel_median(i)<10)
        marker_size=13;
    elseif(vel_median(i)>10 && vel_median(i)<12)
        marker_size=15;
    elseif(vel_median(i)>12 && vel_median(i)<14)
        marker_size=17;
    elseif(vel_median(i)>14)
        marker_size=19;
        end
  
    m_line(longitude(i),latitude(i),'LineStyle','none','marker','o','markersize',marker_size,'MarkerEdgeColor','k','MarkerFaceColor',marker_color);
   

c1=plot(NaN,NaN,'LineStyle','none','marker','o', 'MarkerSize',5,'MarkerEdgeColor', 'k','MarkerFaceColor', 'w');
c2=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',7,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
c3=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',9,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
c4=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',11,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
c5=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',13,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
c6=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',15,'MarkerEdgeColor','k', 'MarkerFaceColor', 'w');
c7=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',17,'MarkerEdgeColor','k','MarkerFaceColor', 'w');
c8=plot(NaN,NaN,'LineStyle','none','marker','o','MarkerSize',19,'MarkerEdgeColor','k','MarkerFaceColor', 'w');
lgd=legend([c1 c2 c3 c4 c5 c6 c7 c8],'<2','2-4','4-6','6-8','8-10','10-12','12-14','>14','Location','southeastoutside');
set(lgd,'FontSize',15);
legend boxoff;

end
  
  
figure(2)
set(2,'Position', [1 1 1000 60],'Color','w');
C=[[1:13]; [1:13]]; 
[~,h]=contourf(C,'EdgeColor','none');
h.LevelList=0:1:12;
set(gcf,'ColorMap',color);
set(gca,'XTick',1.5:1:12.5,'XTickLabel',{'JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN','FEB','MAR','APR','MAY'},'YTick',[],'LineWidth',1.5,'FontSize',17);
set(gca,'TickLength',[0.005 0]);


