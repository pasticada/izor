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


%..obrada envelopa 

avr_barn=[];
u_barn=ue_barn.*m_barn;  %..ue=upper envelope, m_barn=maska
l_barn=le_barn.*m_barn;

for i=1:length(u_barn)
  avr_barn(i)=u_barn(i)-l_barn(i);
end

avr_brom=[];
u_brom=ue_brom.*m_brom;
l_brom=le_brom.*m_brom;

for i=1:length(u_brom)
  avr_brom(i)=u_brom(i)-l_brom(i);
end
  
avr_cuvie=[];
u_cuvie=ue_cuvie.*m_cuvie;
l_cuvie=le_cuvie.*m_cuvie;

for i=1:length(u_cuvie)
  avr_cuvie(i)=u_cuvie(i)-l_cuvie(i);
end
  
avr_espe=[];
u_espe=ue_espe.*m_espe;
l_espe=le_espe.*m_espe;

for i=1:length(u_espe)
  avr_espe(i)=u_espe(i)-l_espe(i);
end  
 
avr_ferg=[];
u_ferg=ue_ferg.*m_ferg;
l_ferg=le_ferg.*m_ferg;

for i=1:length(u_ferg)
  avr_ferg(i)=u_ferg(i)-l_ferg(i);
end  
  
avr_groo=[];
u_groo=ue_groo.*m_groo;
l_groo=le_groo.*m_groo;

for i=1:length(u_groo)
  avr_groo(i)=u_groo(i)-l_groo(i);
end  
  
avr_hill=[];
u_hill=ue_hill.*m_hill;
l_hill=le_hill.*m_hill;

for i=1:length(u_hill)
  avr_hill(i)=u_hill(i)-l_hill(i);
end 
    
avr_pkem=[];
u_pkem=ue_pkem.*m_pkem;
l_pkem=le_pkem.*m_pkem;

for i=1:length(u_pkem)
  avr_pkem(i)=u_pkem(i)-l_pkem(i);
end 

avr_porl=[];
u_porl=ue_porl.*m_porl;
l_porl=le_porl.*m_porl;

for i=1:length(u_porl)
  avr_porl(i)=u_porl(i)-l_porl(i);
end 

avr_pors=[];
u_pors=ue_pors.*m_pors;
l_pors=le_pors.*m_pors;

for i=1:length(u_pors)
  avr_pors(i)=u_pors(i)-l_pors(i);
end 
  
avr_ross=[];
u_ross=ue_ross.*m_ross;
l_ross=le_ross.*m_ross;

for i=1:length(u_ross)
  avr_ross(i)=u_ross(i)-l_ross(i);
end 
   
avr_sprg=[];
u_sprg=ue_sprg.*m_sprg;
l_sprg=le_sprg.*m_sprg;

for i=1:length(u_sprg)
  avr_sprg(i)=u_sprg(i)-l_sprg(i);
end 
  
avr_thev=[];
u_thev=ue_thev.*m_thev;
l_thev=le_thev.*m_thev;

for i=1:length(u_thev)
  avr_thev(i)=u_thev(i)-l_thev(i);
end   

avr_pmur=[];
u_pmur=ue_pmur.*m_pmur;
l_pmur=le_pmur.*m_pmur;

for i=1:length(u_pmur)
  avr_pmur(i)=u_pmur(i)-l_pmur(i);
end 
  
a_barn=horzcat(datevec(D_barn),transpose(avr_barn)); 
a_brom=horzcat(datevec(D_brom),transpose(avr_brom)); 
a_cuvie=horzcat(datevec(D_cuvie),transpose(avr_cuvie)); 
a_espe=horzcat(datevec(D_espe),transpose(avr_espe)); 
a_ferg=horzcat(datevec(D_ferg),transpose(avr_ferg)); 
a_groo=horzcat(datevec(D_groo),transpose(avr_groo)); 
a_hill=horzcat(datevec(D_hill),transpose(avr_hill)); 
a_pkem=horzcat(datevec(D_pkem),transpose(avr_pkem)); 
a_pmur=horzcat(datevec(D_pmur),transpose(avr_pmur)); 
a_porl=horzcat(datevec(D_porl),transpose(avr_porl)); 
a_pors=horzcat(datevec(D_pors),transpose(avr_pors)); 
a_ross=horzcat(datevec(D_ross),transpose(avr_ross)); 
a_sprg=horzcat(datevec(D_sprg),transpose(avr_sprg)); 
a_thev=horzcat(datevec(D_thev),transpose(avr_thev)); 

%...plot envelopa

for i=1:12
 me_barn=find(a_barn(:,2)==i);
 me_brom=find(a_brom(:,2)==i);
 me_cuvie=find(a_cuvie(:,2)==i);
 me_espe=find(a_espe(:,2)==i);
 me_ferg=find(a_ferg(:,2)==i);
 me_groo=find(a_groo(:,2)==i);
 me_hill=find(a_hill(:,2)==i);
 me_pkem=find(a_pkem(:,2)==i);
 me_porl=find(a_porl(:,2)==i);
 me_pors=find(a_pors(:,2)==i);
 me_ross=find(a_ross(:,2)==i);
 me_sprg=find(a_sprg(:,2)==i);
 me_thev=find(a_thev(:,2)==i);
 me_pmur=find(a_pmur(:,2)==i);
 p_barn(i)=mean(me_barn);
 p_brom(i)=mean(me_brom);
 p_cuvie(i)=mean(me_cuvie);
 p_espe(i)=mean(me_espe);
 p_ferg(i)=mean(me_ferg);
 p_groo(i)=mean(me_groo);
 p_hill(i)=mean(me_hill);
 p_pkem(i)=mean(me_pkem);
 p_porl(i)=mean(me_porl);
 p_pors(i)=mean(me_pors);
 p_ross(i)=mean(me_ross);
 p_sprg(i)=mean(me_sprg);
 p_thev(i)=mean(me_thev);
 p_pmur(i)=mean(me_pmur);
 end
   
%... plotovi


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
set(gca,'XTick',1:12,'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','July','Aug','Sep','Oct','Nov','Dec'});
grid on;
legend('barn','brom','ferg','groo','hill','pkem','porl','ross','sprg','thev');

figure (2)
set(1,'Position', [0 0 1000 1000], 'Color', 'w')
p1=subplot(2,1,1)
plot(p_espe);
hold on;
plot(p_pmur);
hold on;
plot(p_pors);
set(gca,'XTick',1:12,'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','July','Aug','Sep','Oct','Nov','Dec'});
legend('espe','pmur','pors');
grid on;

p1=subplot(2,1,2)
plot(p_cuvie);
set(gca,'XTick',1:12,'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','July','Aug','Sep','Oct','Nov','Dec'});
legend('cuvie');
grid on;

