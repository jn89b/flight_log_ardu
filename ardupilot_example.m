%% Mugin 2930 Data 10-20-2021
clear all;clc;
load QuadCopterLog.mat
%% Barometer
time_baro = BARO(:,2);
altitude = BARO(:,3);

figure(1001)
plot(time_baro,altitude)
xlabel('Time')
ylabel('Altitude (m)')
title('Altitude vs Time')
%% Attitude
time_att = ATT(:,2);
roll = ATT(:,4);
pitch = ATT(:,6);
yaw = ATT(:,8);

figure(1002)
hold on
ax1 = subplot(3,1,1);
plot(time_att,pitch)
ylabel('Pitch (deg)')
title('Aircraft Attitude vs Time')
ax2 = subplot(3,1,2);
plot(time_att,roll)
ylabel('Roll(deg)')
ax3 = subplot(3,1,3);
plot(time_att,yaw)
xlabel('Time (ms)')
ylabel('Yaw (deg)')
linkaxes([ax1,ax2,ax3],'x');
hold off;

%% GPS
time_gps = GPS(:,2);
GPS_long = GPS(:,9);
GPS_lat = GPS(:,8);

figure(1003)
hold on
plot(GPS_lat,GPS_long)
xlabel('Latitude')
ylabel('Longitude')
title('Position of Vehicle')
hold off

%% IMU Data
time_imu = IMU(:,2);
gyrox = IMU(:,3);
gyroy = IMU(:,4);
gyroz = IMU(:,5);
accx = IMU(:,6);
accy = IMU(:,7);
accz = IMU(:,8);

figure(1004)
hold on
ax1 = subplot(3,1,1);
plot(time_imu,gyrox)
title('Gyroscope Data vs Time')
ylabel('Gyro X')
ax2 = subplot(3,1,2);
plot(time_imu,gyroy)
ylabel('Gyro Y')
ax3 = subplot(3,1,3);
plot(time_imu,gyroz)
ylabel('Gyro Z')
xlabel('Time')
linkaxes([ax1,ax2,ax3],'x');
hold off

figure(1005)
hold on
ax1 = subplot(3,1,1);
plot(time_imu,accx)
title('Accelerometer Data vs Time')
ylabel('Acc X')
ax2 = subplot(3,1,2);
plot(time_imu,accy)
ylabel('Acc Y')
ax3 = subplot(3,1,3);
plot(time_imu,accz)
ylabel('Acc Z')
xlabel('Time')
linkaxes([ax1,ax2,ax3],'x');
hold off

%% Battery Data
time_bat = BAT(:,2);
voltage = BAT(:,3);
current = BAT(:,5);

figure(1006)
hold on
ax1 = subplot(2,1,1);
plot(time_bat,voltage)
title('Battery Data vs Time')
ylabel('Voltage (V)')
ax2 = subplot(2,1,2);
plot(time_bat,current)
ylabel('Current (A)')
xlabel('Time')
linkaxes([ax1,ax2],'x');
hold off

%% Airspeed Data
time_as = ARSP(:,2);
airspeed = ARSP(:,3);

figure(1007)
plot(time_as,airspeed)
xlabel('Time')
ylabel('Airspeed (m/s)')
title('Airspeed vs Time')

