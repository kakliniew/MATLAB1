% skrypt  suma_sin.m
% program realizuje sume 2 sygnalow sinusoidalnych
clf;   clear all

% dane wejsciowe
N=4000;             % liczba probek obliczanego ciagu
Tobs=1;              % czas trwania sygnalu w [s]
A1=2; A2=0.5;      % amplitudy sinusoid
f1=50; f2=200;       % czestotliwosci sinusoid [Hz]
fs=8000;
dt=Tobs/N;         % okres probkowania 
t=0:dt:Tobs-dt;    % wektor chwil czasu

s1=A1*sin(2*pi*f1*t);      % sygnal x1
s2=A2*sin(2*pi*f2*t);      % sygnal x2
xs=s1+s2;                          % suma sygnalow
xs1=abs(fft(xs,N));                       % modulacja amplitudy

% wykresy  ***********************************
subplot(3,1,1)
plot(t,s1); grid on
xlabel('Czas [s]')
ylabel('Sygnal 1 i 2')
hold on
plot(t,s2)



subplot(3,1,2)
plot(t,xs);  grid on
xlabel('Czas [s]')
ylabel('Suma sygnalow')

subplot(3,1,3)
plot(t,xs1);  grid on
xlabel('Czas [s]')
ylabel('Widmo amplitudowe')







