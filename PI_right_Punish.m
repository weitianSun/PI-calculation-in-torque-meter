%%%%%%%%%This script is used to calculate the PI when punishment is on
%%%%%%%%%Right-negtive

function PIRightPunish = PI_right_Punish(time, angle);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PI calculation in pretest
pretestrow = find(time>0 & time < 121); %%%% pretest phase from 0s to 120s%%%
pretest = time(pretestrow);%%%%%%%%%% time value in pretest phase%%%
pretestVal = angle(pretestrow);%%%%%%% trace value in pretest phase%%
tarow = find(pretestVal>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = pretest(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = pretest(preRightRow(2:end)); %%%%%%%%%the last time point before  RTP, %%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
pretestPI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PI calculation in train1
train1row = find(time>120 & time < 241); %%%% train1 phase from 120s to 240s%%%
train1 = time(train1row);%%%%%%%%%% time value in train1 phase%%%
train1Val = angle(train1row);%%%%%%% trace value in train1 phase%%
tarow = find(train1Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = train1(tarow(2:end)); %%%%%%find at which time point, fly on right side,RTP = right time point%%%
preRightRow = tarow-1;
PRTP = train1(preRightRow(2:end)); %%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
train1PI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PI calculation in train2

train2row = find(time>240 & time < 361); %%%% train1 phase from 240s to 360s%%%
train2 = time(train2row);%%%%%%%%%% time value in train2 phase%%%
train2Val = angle(train2row);%%%%%%% trace value in train2 phase%%
tarow = find(train2Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = train2(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = train2(preRightRow(2:end));%%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
train2PI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PI calculation in test1
test1row = find(time>360 & time < 481); %%%% train1 phase from 360s to 480s%%%
test1 = time(test1row);%%%%%%%%%% time value in test1 phase%%%
test1Val = angle(test1row);%%%%%%% trace value in test1 phase%%
tarow = find(test1Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = test1(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = test1(preRightRow(2:end));%%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
test1PI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PI calculation in train3
train2row = find(time>480 & time < 601); %%%% train1 phase from 480s to 600s%%%
train2 = time(train2row);%%%%%%%%%% time value in train3 phase%%%
train2Val = angle(train2row);%%%%%%% trace value in train3 phase%%
tarow = find(train2Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = train2(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = train2(preRightRow(2:end));%%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
train3PI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PI calculation in train4

train2row = find(time>600 & time < 721); %%%% train1 phase from 600s to 720s%%%
train2 = time(train2row);%%%%%%%%%% time value in train4 phase%%%
train2Val = angle(train2row);%%%%%%% trace value in train4 phase%%
tarow = find(train2Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = train2(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = train2(preRightRow(2:end));%%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
train4PI = (ta-tb)/(ta+tb)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PI calculation in test2
train2row = find(time>720 & time < 841); %%%% train1 phase from 720s to 840s%%%
train2 = time(train2row);%%%%%%%%%% time value in test2 phase%%%
train2Val = angle(train2row);%%%%%%% trace value in test2 phase%%
tarow = find(train2Val>0);  %%%%%%%%%% find which row that trace value>0, i.e when turning left%%%
RTP = train2(tarow(2:end)); %%%%%%find at which time point, fly on left side%%%
preRightRow = tarow-1;
PRTP = train2(preRightRow(2:end));%%%%%%%%%the last time point before  RTP%%%%
ta = sum(RTP-PRTP); %%%%%the total time when fly on the left side, i.e. non punishment time%%
tb = 120 - ta; %%%%%%tb means punishment time,
test2PI = (ta-tb)/(ta+tb)
