load('C:\Australia\envelope_barn.mat')
le_barn=lower_envelope_filt;
ue_barn=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_barn.mat')
m_barn=mask;
clear mask;

load('C:\Australia\envelope_brom.mat')
le_brom=lower_envelope_filt;
ue_brom=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_brom.mat')
m_brom=mask;
clear mask;

load('C:\Australia\envelope_cuvie.mat')
le_cuvie=lower_envelope_filt;
ue_cuvie=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_cuvie.mat')
m_cuvie=mask;
clear mask;

load('C:\Australia\envelope_espe.mat')
le_espe=lower_envelope_filt;
ue_espe=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_espe.mat')
m_espe=mask;
clear mask;

load('C:\Australia\envelope_ferg.mat')
le_ferg=lower_envelope_filt;
ue_ferg=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_ferg.mat')
m_ferg=mask;
clear mask;

load('C:\Australia\envelope_groo.mat')
le_groo=lower_envelope_filt;
ue_groo=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_groo.mat')
m_groo=mask;
clear mask;

load('C:\Australia\envelope_hill.mat')
le_hill=lower_envelope_filt;
ue_hill=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_hill.mat')
m_hill=mask;
clear mask;

load('C:\Australia\envelope_pkem.mat')
le_pkem=lower_envelope_filt;
ue_pkem=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_pkem.mat')
m_pkem=mask;
clear mask;

load('C:\Australia\envelope_pmur.mat')
le_pmur=lower_envelope_filt;
ue_pmur=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_pmur.mat')
m_pmur=mask;
clear mask;

load('C:\Australia\envelope_porl.mat')
le_porl=lower_envelope_filt;
ue_porl=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_porl.mat')
m_porl=mask;
clear mask;

load('C:\Australia\envelope_pors.mat')
le_pors=lower_envelope_filt;
ue_pors=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_pors.mat')
m_pors=mask;
clear mask;

load('C:\Australia\envelope_ross.mat')
le_ross=lower_envelope_filt;
ue_ross=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_ross.mat')
m_ross=mask;
clear mask;

load('C:\Australia\envelope_sprg.mat')
le_sprg=lower_envelope_filt;
ue_sprg=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_sprg.mat')
m_sprg=mask;
clear mask;

load('C:\Australia\envelope_thev.mat')
le_thev=lower_envelope_filt;
ue_thev=upper_envelope_filt;
clear lower_envelope_filt;
clear upper_envelope_filt;
load('C:\Australia\mask_thev.mat')
m_thev=mask;
clear mask;

clear upper_envelope_nonfilt;
clear lower_envelope_nonfilt;


load('C:\Australia\barn_5.mat');
D_barn=Date_total;
N_barn=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\brom_5.mat');
D_brom=Date_total;
N_brom=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\cuvie_5.mat');
D_cuvie=Date_total;
N_cuvie=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\espe_5.mat');
D_espe=Date_total;
N_espe=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\ferg_5.mat');
D_ferg=Date_total;
N_ferg=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\groo_5.mat');
D_groo=Date_total;
N_groo=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\hill_5.mat');
D_hill=Date_total;
N_hill=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\pkem_5.mat');
D_pkem=Date_total;
N_pkem=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\pmur_5.mat');
D_pmur=Date_total;
N_pmur=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\porl_5.mat');
D_porl=Date_total;
N_porl=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\pors_5.mat');
D_pors=Date_total;
N_pors=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\ross_5.mat');
D_ross=Date_total;
N_ross=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\sprg_5.mat');
D_sprg=Date_total;
N_sprg=Number_filt;
clear Date_total;
clear Number_filt;

load('C:\Australia\thev_5.mat');
D_thev=Date_total;
N_thev=Number_filt;
clear Date_total;
clear Number_filt;

clear xout_total;
clear Number_total;

avr_barn=[];
u_barn=ue_barn.*m_barn;  %..ue=upper envelope, m_barn=maska
l_barn=le_barn.*m_barn;
avr_barn=u_barn-l_barn;

avr_brom=[];
u_brom=ue_brom.*m_brom;
l_brom=le_brom.*m_brom;
avr_brom=u_brom-l_brom;

avr_cuvie=[];
u_cuvie=ue_cuvie.*m_cuvie;
l_cuvie=le_cuvie.*m_cuvie;
avr_cuvie=u_cuvie-l_cuvie;
  
avr_espe=[];
u_espe=ue_espe.*m_espe;
l_espe=le_espe.*m_espe;
avr_espe=u_espe-l_espe;
 
avr_ferg=[];
u_ferg=ue_ferg.*m_ferg;
l_ferg=le_ferg.*m_ferg;
avr_ferg=u_ferg-l_ferg;
  
avr_groo=[];
u_groo=ue_groo.*m_groo;
l_groo=le_groo.*m_groo;
avr_groo=u_groo-l_groo;

avr_hill=[];
u_hill=ue_hill.*m_hill;
l_hill=le_hill.*m_hill;
avr_hill=u_hill-l_hill;
    
avr_pkem=[];
u_pkem=ue_pkem.*m_pkem;
l_pkem=le_pkem.*m_pkem;
avr_pkem=u_pkem-l_pkem;

avr_porl=[];
u_porl=ue_porl.*m_porl;
l_porl=le_porl.*m_porl;
avr_porl=u_porl-l_porl;

avr_pors=[];
u_pors=ue_pors.*m_pors;
l_pors=le_pors.*m_pors;
avr_pors=u_pors-l_pors;
  
avr_ross=[];
u_ross=ue_ross.*m_ross;
l_ross=le_ross.*m_ross;
avr_ross=u_ross-l_ross;
   
avr_sprg=[];
u_sprg=ue_sprg.*m_sprg;
l_sprg=le_sprg.*m_sprg;
avr_sprg=u_sprg-l_sprg;
  
avr_thev=[];
u_thev=ue_thev.*m_thev;
l_thev=le_thev.*m_thev;
avr_thev=u_thev-l_thev;  

avr_pmur=[];
u_pmur=ue_pmur.*m_pmur;
l_pmur=le_pmur.*m_pmur;
avr_pmur=u_pmur-l_pmur;


a_barn=datevec(D_barn); 
a_brom=datevec(D_brom); 
a_cuvie=datevec(D_cuvie); 
a_espe=datevec(D_espe); 
a_ferg=datevec(D_ferg); 
a_groo=datevec(D_groo); 
a_hill=datevec(D_hill); 
a_pkem=datevec(D_pkem); 
a_pmur=datevec(D_pmur); 
a_porl=datevec(D_porl); 
a_pors=datevec(D_pors); 
a_ross=datevec(D_ross); 
a_sprg=datevec(D_sprg); 
a_thev=datevec(D_thev); 


a_barn_month_only = [];
a_barn_month_only = a_barn(:,2);
a_brom_month_only = [];
a_brom_month_only = a_brom(:,2);
a_cuvie_month_only = [];
a_cuvie_month_only = a_cuvie(:,2);
a_espe_month_only = [];
a_espe_month_only = a_espe(:,2);
a_ferg_month_only = [];
a_ferg_month_only = a_ferg(:,2);
a_groo_month_only = [];
a_groo_month_only = a_groo(:,2);
a_hill_month_only = [];
a_hill_month_only = a_hill(:,2);
a_pkem_month_only = [];
a_pkem_month_only = a_pkem(:,2);
a_pmur_month_only = [];
a_pmur_month_only = a_pmur(:,2);
a_porl_month_only = [];
a_porl_month_only = a_porl(:,2);
a_pors_month_only = [];
a_pors_month_only = a_pors(:,2);
a_ross_month_only = [];
a_ross_month_only = a_ross(:,2);
a_sprg_month_only = [];
a_sprg_month_only = a_sprg(:,2);
a_thev_month_only = [];
a_thev_month_only = a_thev(:,2);




for i=1:12

 avr_barn_kojiMiTribaju = [];
 avr_brom_kojiMiTribaju = [];
 avr_cuvie_kojiMiTribaju = [];
 avr_espe_kojiMiTribaju = [];
 avr_ferg_kojiMiTribaju = [];
 avr_groo_kojiMiTribaju = [];
 avr_hill_kojiMiTribaju = [];
 avr_pkem_kojiMiTribaju = [];
 avr_pmur_kojiMiTribaju = [];
 avr_porl_kojiMiTribaju = [];
 avr_pors_kojiMiTribaju = [];
 avr_ross_kojiMiTribaju = [];
 avr_sprg_kojiMiTribaju = [];
 avr_thev_kojiMiTribaju = [];
 
 cond_barn = a_barn_month_only == i;
 cond_brom = a_brom_month_only == i;
 cond_cuvie = a_cuvie_month_only == i;
 cond_espe = a_espe_month_only == i;
 cond_ferg = a_ferg_month_only == i;
 cond_groo = a_groo_month_only == i;
 cond_hill = a_hill_month_only == i;
 cond_pkem = a_pkem_month_only == i;  
 cond_pmur = a_pmur_month_only == i; 
 cond_porl = a_porl_month_only == i; 
 cond_pors = a_pors_month_only == i; 
 cond_ross = a_ross_month_only == i; 
 cond_sprg = a_sprg_month_only == i; 
 cond_thev = a_thev_month_only == i;
 
 avr_barn_kojiMiTribaju = avr_barn(cond_barn);
 avr_brom_kojiMiTribaju = avr_brom(cond_brom);
 avr_cuvie_kojiMiTribaju = avr_cuvie(cond_cuvie);
 avr_espe_kojiMiTribaju = avr_espe(cond_espe);
 avr_ferg_kojiMiTribaju = avr_ferg(cond_ferg);
 avr_groo_kojiMiTribaju = avr_groo(cond_groo);
 avr_hill_kojiMiTribaju = avr_hill(cond_hill);
 avr_pkem_kojiMiTribaju = avr_pkem(cond_pkem);
 avr_pmur_kojiMiTribaju = avr_pmur(cond_pmur);
 avr_porl_kojiMiTribaju = avr_porl(cond_porl);
 avr_pors_kojiMiTribaju = avr_pors(cond_pors);
 avr_ross_kojiMiTribaju = avr_ross(cond_ross);
 avr_sprg_kojiMiTribaju = avr_sprg(cond_sprg);
 avr_thev_kojiMiTribaju = avr_thev(cond_thev);
 
%  i_brom=find(a_brom(:,2)==i);
%  i_cuvie=find(a_cuvie(:,2)==i);
%  i_espe=find(a_espe(:,2)==i);
%  i_ferg=find(a_ferg(:,2)==i);
%  i_groo=find(a_groo(:,2)==i);
%  i_hill=find(a_hill(:,2)==i);
%  i_pkem=find(a_pkem(:,2)==i);
%  i_porl=find(a_porl(:,2)==i);
%  i_pors=find(a_pors(:,2)==i);
%  i_ross=find(a_ross(:,2)==i);
%  i_sprg=find(a_sprg(:,2)==i);
%  i_thev=find(a_thev(:,2)==i);
%  i_pmur=find(a_pmur(:,2)==i);

% for i=1:length(i_barn)
% avr_barn_kojiMiTribaju = vertcat(avr_barn_kojiMiTribaju, avr_barn(i_barn(i))); 
% end

     p_barn(i)=nanmean(avr_barn_kojiMiTribaju,1);
     p_brom(i)=nanmean(avr_brom_kojiMiTribaju,1);
     p_cuvie(i)=nanmean(avr_cuvie_kojiMiTribaju,1);
     p_espe(i)=nanmean(avr_espe_kojiMiTribaju,1);
     p_ferg(i)=nanmean(avr_ferg_kojiMiTribaju,1);
     p_groo(i)=nanmean(avr_groo_kojiMiTribaju,1);
     p_hill(i)=nanmean(avr_hill_kojiMiTribaju,1);
     p_pkem(i)=nanmean(avr_pkem_kojiMiTribaju,1);
     p_porl(i)=nanmean(avr_porl_kojiMiTribaju,1);
     p_pors(i)=nanmean(avr_pors_kojiMiTribaju,1);
     p_ross(i)=nanmean(avr_ross_kojiMiTribaju,1);
     p_sprg(i)=nanmean(avr_sprg_kojiMiTribaju,1);
     p_thev(i)=nanmean(avr_thev_kojiMiTribaju,1);
     p_pmur(i)=nanmean(avr_pmur_kojiMiTribaju,1);

    end


    figure (1)
    set(1,'Position', [0 0 1000 1000], 'Color', 'w')
    %p1=subplot(3,1,1)
    plot(p_barn);
    hold on;
    plot(p_brom);
    hold on;
    plot(p_ferg);
    hold on;
    plot(p_groo);
    hold on;
    plot(p_hill);
    hold on;
    plot(p_pkem);
    hold on;
    plot(p_porl);
    hold on;
    plot(p_ross);
    hold on;
    plot(p_sprg);
    hold on;
    plot(p_thev);
    hold on;
    plot(p_espe);
    hold on;
    plot(p_pmur);
    hold on;
    plot(p_pors);
    hold on;
    plot(p_cuvie);
    hold on;
    plot(p_espe);
    hold on;
    plot(p_pmur);
    hold on;
    plot(p_pors);
    hold on;
    plot(p_cuvie);
    set(gca,'XTick',1:12,'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','July','Aug','Sep','Oct','Nov','Dec'});
    grid on;
 legend('barn','brom','ferg','groo','hill','pkem','porl','ross','sprg','thev','espe','pmur','pors','cuvie');
