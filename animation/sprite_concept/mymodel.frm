//SpriteModel на защиту
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
	text (550, 50, 210,  30,transparent,black,= 'Таблица результатов');
	rect (760,230,-210,-180,transparent,black);
	
	rect (550,80 , 70, 30,transparent,black);
	text (550,80 , 70, 30,transparent,black,= 'Бросок 1');
	rect (550,110, 70, 30,transparent,black);
	
	rect (620, 80, 70, 30,transparent,black);
	text (620, 80, 70, 30,transparent,black,= 'Бросок 2');
	rect (620,110, 70, 30,transparent,black);
	
	rect (690, 80, 70, 30,transparent,black);
	text (690, 80, 70, 30,transparent,black,= 'Бросок 3');
	rect (690,110, 70, 30,transparent,black);
		
	rect (550,140,140, 30,transparent,black);
	text (550,140,140, 30,transparent,black,= 'Максимальное');
	rect (690,140, 70, 30,transparent,black);
	
	rect (550,170,140, 30,transparent,black);
	text (550,170,140, 30,transparent,black,= 'Среднее');
	rect (690,170, 70, 30,transparent,black);
		
	rect (550,200,140, 30,transparent,black);
	text (550,200,140, 30,transparent,black,= 'Сумма');
	rect (690,200, 70, 30,transparent,black);
$End

$Frame Petr_frame 
$Back_picture = <23, 124, 253> 1148 480
	sprite StrelokInfo();
	integer center =2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= Петр.Бросок_1_m);
	text (620,110,70,30,transparent,black,= Петр.Бросок_2_m);
	text (690,110,70,30,transparent,black,= Петр.Бросок_3_m);	
	text (690,170,70,30,transparent,black,= Петр.Среднее);
	text (690,140,70,30,transparent,black,= Петр.Максимальное);
	text (690,200,70,30,transparent,black,= Петр.Сумма);
	circle (center + Петр.Бросок_1_r*Cos(Петр.Бросок_1_f),center + Петр.Бросок_1_r*Sin(Петр.Бросок_1_f),5,black,black);
	circle (center + Петр.Бросок_2_r*Cos(Петр.Бросок_2_f),center + Петр.Бросок_2_r*Sin(Петр.Бросок_2_f),5,black,black);
	circle (center + Петр.Бросок_3_r*Cos(Петр.Бросок_3_f),center + Петр.Бросок_3_r*Sin(Петр.Бросок_3_f),5,black,black);
$End

$Frame Ivan_frame 
$Back_picture = <58, 204, 147> 1148 480
	sprite StrelokInfo();
	integer center = 2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= Иван.Бросок_1_m);
	text (620,110,70,30,transparent,black,= Иван.Бросок_2_m);
	text (690,110,70,30,transparent,black,= Иван.Бросок_3_m);	
	text (690,170,70,30,transparent,black,= Иван.Среднее);
	text (690,140,70,30,transparent,black,= Иван.Максимальное);
	text (690,200,70,30,transparent,black,= Иван.Сумма);
	circle (center + Иван.Бросок_1_r*Cos(Иван.Бросок_1_f),center + Иван.Бросок_1_r*Sin(Иван.Бросок_1_f),5,black,black);
	circle (center + Иван.Бросок_2_r*Cos(Иван.Бросок_2_f),center + Иван.Бросок_2_r*Sin(Иван.Бросок_2_f),5,black,black);
	circle (center + Иван.Бросок_3_r*Cos(Иван.Бросок_3_f),center + Иван.Бросок_3_r*Sin(Иван.Бросок_3_f),5,black,black);
$End

$Frame Stepan_frame 
$Back_picture = <213, 187, 66> 1148 480
	sprite StrelokInfo();
	integer center = 2*R + 30;
	integer step = R*2/num;
	text (550,110,70,30,transparent,black,= Степан.Бросок_1_m);
	text (620,110,70,30,transparent,black,= Степан.Бросок_2_m);
	text (690,110,70,30,transparent,black,= Степан.Бросок_3_m);	
	text (690,170,70,30,transparent,black,= Степан.Среднее);
	text (690,140,70,30,transparent,black,= Степан.Максимальное);
	text (690,200,70,30,transparent,black,= Степан.Сумма);
	circle (center + Степан.Бросок_1_r*Cos(Степан.Бросок_1_f),center + Степан.Бросок_1_r*Sin(Степан.Бросок_1_f),5,black,black);
	circle (center + Степан.Бросок_2_r*Cos(Степан.Бросок_2_f),center + Степан.Бросок_2_r*Sin(Степан.Бросок_2_f),5,black,black);
	circle (center + Степан.Бросок_3_r*Cos(Степан.Бросок_3_f),center + Степан.Бросок_3_r*Sin(Степан.Бросок_3_f),5,black,black);
$End