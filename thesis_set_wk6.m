%% SET SIMULATION 
clc
clear

v = 0:100;              %INPUT VALUES 
v = v';
len = length(v)
pink = dsp.ColoredNoise('Color', 'Pink','SamplesPerFrame',len)  %PINK NOISE 1/F
%noise = pink();

%mean var sig
T = 20;                 %PARAM FOR THE GAUSSIAN
c_center = 0:100/T:100;

y =zeros(5, 101);

for n = 1:5
    noise = pink();                             %CALLING THE NOISE
%    y(n, :) = normpdf(v+noise/1000, n*T, 0.5) + noise/1000;
     v_in = v+noise/(mean(noise)*20);           %NOISE ADDED TO INPUT &  OUTPUT OF THE SIGNAL
     y(n, :) = normpdf(v_in, n*T, 2)+noise/500; %ADDING NOISE TO OUTPUT AGAIN
end
v_plot = v/100; %they're random values of v_plot.

%plot(1:length(y), is)
plot(v_plot,sum(y))
xlabel('Vgs'); ylabel('Is')


%WHEN THERE IS A GAP SUCH THAT THERE IS AN OPEN STATE
%ELECTRON TUNNELS INTO WELL
%

