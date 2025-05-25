%% plot station locations + eq coordinates 

clear all
close all
clc

stats = readtable('lok_BA_stations.txt');

%lgb_eqs = readtable('locs_LGBneu2.txt');

michel_eqs = readtable('lok_BA_events.txt');

figure
geoplot(stats.Lat,stats.Long,'vb')
hold on
text(stats.Lat,stats.Long,stats.Stationen)
%geoplot(lgb_eqs.Lat,lgb_eqs.Long,'or')
geoplot(michel_eqs.Lat,michel_eqs.Long,'og')
%text(michel_eqs.Lat,michel_eqs.Long,num2str(michel_eqs.Eventdatum))
legend('stations','EQ´s BA') 

