clc;
clear;
global T Tp Ts1 Ts2 Tpwb Tpww 
global Elvs Elvd Elamin Elamax Plv0 Vlv0 Pla0 Vla0 CQao CQmi Ervs Ervd Eramin Eramax Vrv0s Vlv0s Vra0s 
global Prv0 Vrv0 Pra0 Vra0 CQpo CQti Csas Rsas Psas0 Ppas0 Lsas Csat Rsat Lsat Rsar Rscp Rsvn Csvn Csvc Cpas Rpas Lpas Cpat Rpat Lpat Rpar Rpcp Rpvn Cpvn Cpvc Vla0s
%% Time parameteres
T = 1;
Tp = 0.0001;
Ts1 = 0.3;
Ts2 = 0.45;
Tpwb = 0.92;
Tpww = 0.09;

%% Left heart
Elvs = 2.5;
Elvd = 0.1;
Elamin = 0.15;
Elamax = 0.25;
Plv0 = 1;
Vlv0s = 5;
Pla0 = 1;
Vla0 = 20;
Vla0s = 4;
CQao = 350;
CQmi = 400;
Psas0 = 100;
%% Right heart
Ervs = 1.15;
Ervd = 0.1;
Eramin = 0.15;
Eramax = 0.25;
Prv0 = 1;
Vrv0s = 10;
Pra0 = 1;
Vra0s = 4;
Vra0 = 20;
CQpo = 350;
CQti = 400;
Ppas0 = 30;

%% Systemic circulation
Csas = 0.08;
Rsas = 0.003;
Lsas = 0.000062;
Csat = 1.6;
Rsat = 0.05;
Lsat = 0.0017;
Rsar = 0.5;
Rscp = 0.52;
Rsvn = 0.075;
Csvn = 20.5;
Csvc = 1.5;
Vlv0 = 800; %objetosc pocz
%% Pulmonary circulation
Cpas = 0.18;
Rpas = 0.002;
Lpas = 0.000052;
Cpat = 3.8;
Rpat = 0.01;
Lpat = 0.0017;
Rpar = 0.05;
Rpcp = 0.25;
Rpvn = 0.006;
Cpvn = 20.5;
Cpvc = 1.5;
Vrv0 = 500; %
%% Startups
global s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18
s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
s5 = 0;
s6 = 0;
s7 = 0;
s8 = 0;
s9 = 0;
s10 = 0;
s11 = 0;
s12 = 0;
s13 = 0;
s14 = 0;
s15 = 0;
s16 = 0;
s17 = 0;
s18 = 0;


