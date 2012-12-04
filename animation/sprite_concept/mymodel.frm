//SpriteModel �� ������
$Sprite StrelokInfo()//$Sprite StrelokInfo(integer R, integer num, ������� Strelok)	
	integer R=100;//-
	integer num=10;//-
	integer center=2*R + 30;
	integer step=R*2/num;
	
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
//	text (550,80,70,30,transparent,black,= Strelok.������_1);
	
	rect (620, 80, 70, 30,transparent,black);
	text (620, 80, 70, 30,transparent,black,= '������ 2');
	rect (620,110, 70, 30,transparent,black);
//	text (620,110, 70, 30,transparent,black,= Strelok.������_2);
	
	rect (690, 80, 70, 30,transparent,black);
	text (690, 80, 70, 30,transparent,black,= '������ 3');
	rect (690,110, 70, 30,transparent,black);
//	text (690,110, 70, 30,transparent,black,= Strelok.������_3);
		
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
//������ �������
//sprite StrelokInfo()//sprite StrelokInfo(100,10,����)
	integer R=100;	
	integer num=10;
	integer center=2*R + 30;
	integer step=R*2/num;
	
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
	
	rect (550,50,210,30,transparent,black);
	text (550,50,210,30,transparent,black,= '������� �����������');
	rect (760,230,-210,-180,transparent,black);
	
	rect (550,80,70,30,transparent,black);
	text (550,80,70,30,transparent,black,= '������ 1');
	rect (550,110,70,30,transparent,black);
	
	rect (620,80,70,30,transparent,black);
	text (620,80,70,30,transparent,black,= '������ 2');
	rect (620,110,70,30,transparent,black);
	
	rect (690,80,70,30,transparent,black);
	text (690,80,70,30,transparent,black,= '������ 3');
	rect (690,110,70,30,transparent,black);
		
	rect (550,140,140,30,transparent,black);
	text (550,140,140,30,transparent,black,= '������������');
	rect (690,140,70,30,transparent,black);
	
	rect (550,170,140,30,transparent,black);
	text (550,170,140,30,transparent,black,= '�������');
	rect (690,170,70,30,transparent,black);
		
	rect (550,200,140,30,transparent,black);
	text (550,200,140,30,transparent,black,= '�����');
	rect (690,200,70,30,transparent,black);
//����� �������
		//rect (550,110,70,30,transparent,black);
		//rect (620,110,70,30,transparent,black);
		//rect (690,110,70,30,transparent,black);	
$End

$Frame Ivan_frame 
$Back_picture = <58, 204, 147> 1148 480
//sprite StrelokInfo()
$End

$Frame Stepan_frame 
$Back_picture = <213, 187, 66> 1148 480
//sprite StrelokInfo()
$End
