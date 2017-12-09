laser = [10 10];
laserheight = 200;
start = [9 1];
finish = [0 0];

x1 = laser(1)-start(1);
x2 =laser(1)-finish(1);
h1 = laser(2)-start(2);
h2 = laser(2) - finish(2);
thi1 = atand(x1/h1);
thi2 = atand(x2/h2);
thi3 = thi2-thi1;

hyp1 = sqrt((x1^2)+(h1^2));
hyp2 = sqrt((x2^2)+(h2^2));
thi4 = atand(hyp1/laserheight);
thi5 = atand(hyp2/laserheight);
thi6 = thi5-thi4;

laserx =laser(1);
lasery = laser(2);
startx = start(1);
starty = start(2);
finishx = finish(1);
finishy = finish(2);


plot(laserx, lasery,'o', startx ,starty, 'o', finishx, finishy ,'o')
axis([0, 10, 0 ,10])
