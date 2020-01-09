sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');
wiadomosc = rosmessage(sterowanie.MessageType);

%% jazda po linii

for i=1:1000
wiadomosc(i) = rosmessage(sterowanie.MessageType);
wiadomosc(i).Linear.X = 1;
wiadomosc(i).Angular.Z = 1;

send(sterowanie, wiadomosc(i))
pause(0.1)
end

%% jazda po sinusie

for t=0:0.1:10
    polozenie = receive(pozycja,1)
    wiadomosc.Linear.X = 1;
    wiadomosc.Angular.Z = sin(t);
    send(sterowanie, wiadomosc)

    pause(0.1)
end

%% dazenie do zadanego kata
for t=0:0.1:10
    polozenie = receive(pozycja,1)
    x = polozenie.X;
    y = polozenie.Y;
    theta = polozenie.Theta;
    
    v = 1;
    w = -theta*3;
    
    wiadomosc.Linear.X = v;
    wiadomosc.Angular.Z = w;
    
    send(sterowanie, wiadomosc)

    pause(0.1)
end

%% dazenie do zadanego punktu
while(1)
    polozenie = receive(pozycja,1)
    x = polozenie.X-8;
    y = polozenie.Y-8;
    theta = polozenie.Theta;
    
    alfa = atan(y/x)-theta;
    e = sqrt(x^2+y^2);
    wita = atan(y/x);
    
    v = -e*cos(alfa);
    w = sin(alfa)*cos(alfa)+(wita*sin(alfa)*cos(alfa))/alfa+alfa;
    
    wiadomosc.Linear.X = v;
    wiadomosc.Angular.Z = w;
    
    send(sterowanie, wiadomosc)

    pause(0.1)
end
