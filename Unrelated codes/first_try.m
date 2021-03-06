%Velocity vs time curve

clear
close all;
prompt = 'Enter the file name to be imported : ';
str = input(prompt,'s');
[data_sheet,~,data_sheet_raw] = xlsread(str);
x_axis = datetime(data_sheet_raw(601:1376,2),'InputFormat','dd-MM-yyyy HH:mm:ss');


y_axis = data_sheet(601:1376, 15);
plot(x_axis,y_axis)
title('Velocity vs time curve')
xlabel('time')
ylabel('velocity(kmph)')