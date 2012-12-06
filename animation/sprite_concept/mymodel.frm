//SpriteModel �� ������
$Sprite StrelokInfo()
	integer center = 2*R + 30;
	integer step = R*2/num;
	
	for (integer i=0;i<num/2;i++)
	{
		circle 	(center,center,2*R - 2*step*i + 2				,black	,black);
		circle 	(center,center,2*R - 2*step*i					,red	,black);
		circle 	(center,center,2*R - 2*R/num - 2*step*i + 2		,black	,black);
		circle 	(center,center,2*R - 2*R/num - 2*step*i			,white	,black);
	}
	
	for (integer j=1;j<num;j++)
	{
		text (center - step*j - 20,center - 10,20,20,transparent,black,= num - j);
		text (center + step*j	  ,center - 10,20,20,transparent,black,= num - j);
	}
	text (center - 10,center - 10,20,20,transparent,black,= num);
	
	rect (550, 50, 210,  30,transparent,black);
	text (550, 50, 210,  30,transparent,black,= '������� �����������');
	rect (760,230,-210,-180,transparent,black);
	
	rect (550,80 , 70, 30,transparent,black);
	text (550,80 , 70, 30,transparent,black,= '������ 1');
	rect (550,110, 70, 30,transparent,black);
	
	rect (620, 80, 70, 30,transparent,black);
	text (620, 80, 70, 30,transparent,black,= '������ 2');
	rect (620,110, 70, 30,transparent,black);
	
	rect (690, 80, 70, 30,transparent,black);
	text (690, 80, 70, 30,transparent,black,= '������ 3');
	rect (690,110, 70, 30,transparent,black);
		
	rect (550,140,140, 30,transparent,black);
	text (550,140,140, 30,transparent,black,= '������������');
	rect (690,140, 70, 30,transparent,black);
	
	rect (550,170,140, 30,transparent,black);
	text (550,170,140, 30,transparent,black,= '�������');
	rect (690,170, 70, 30,transparent,black);
		
	rect (550,200,140, 30,transparent,black);
	text (550,200,140, 30,transparent,black,= '�����');
	rect (690,200, 70, 30,transparent,black);
$End

$Frame Petr_frame 
$Back_picture = <23, 124, 253> 1148 480
	sprite StrelokInfo();
	integer center =2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= ����.������_1_m);
	text (620,110,70,30,transparent,black,= ����.������_2_m);
	text (690,110,70,30,transparent,black,= ����.������_3_m);	
	text (690,170,70,30,transparent,black,= ����.�������);
	text (690,140,70,30,transparent,black,= ����.������������);
	text (690,200,70,30,transparent,black,= ����.�����);
	circle (center + ����.������_1_r*Cos(����.������_1_f),center + ����.������_1_r*Sin(����.������_1_f),5,black,black);
	circle (center + ����.������_2_r*Cos(����.������_2_f),center + ����.������_2_r*Sin(����.������_2_f),5,black,black);
	circle (center + ����.������_3_r*Cos(����.������_3_f),center + ����.������_3_r*Sin(����.������_3_f),5,black,black);
$End

$Frame Ivan_frame 
$Back_picture = <58, 204, 147> 1148 480
	sprite StrelokInfo();
	integer center = 2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= ����.������_1_m);
	text (620,110,70,30,transparent,black,= ����.������_2_m);
	text (690,110,70,30,transparent,black,= ����.������_3_m);	
	text (690,170,70,30,transparent,black,= ����.�������);
	text (690,140,70,30,transparent,black,= ����.������������);
	text (690,200,70,30,transparent,black,= ����.�����);
	circle (center + ����.������_1_r*Cos(����.������_1_f),center + ����.������_1_r*Sin(����.������_1_f),5,black,black);
	circle (center + ����.������_2_r*Cos(����.������_2_f),center + ����.������_2_r*Sin(����.������_2_f),5,black,black);
	circle (center + ����.������_3_r*Cos(����.������_3_f),center + ����.������_3_r*Sin(����.������_3_f),5,black,black);
$End

$Frame Stepan_frame 
$Back_picture = <213, 187, 66> 1148 480
	sprite StrelokInfo();
	integer center = 2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= ������.������_1_m);
	text (620,110,70,30,transparent,black,= ������.������_2_m);
	text (690,110,70,30,transparent,black,= ������.������_3_m);	
	text (690,170,70,30,transparent,black,= ������.�������);
	text (690,140,70,30,transparent,black,= ������.������������);
	text (690,200,70,30,transparent,black,= ������.�����);
	circle (center + ������.������_1_r*Cos(������.������_1_f),center + ������.������_1_r*Sin(������.������_1_f),5,black,black);
	circle (center + ������.������_2_r*Cos(������.������_2_f),center + ������.������_2_r*Sin(������.������_2_f),5,black,black);
	circle (center + ������.������_3_r*Cos(������.������_3_f),center + ������.������_3_r*Sin(������.������_3_f),5,black,black);
$End