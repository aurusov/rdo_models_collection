/*$Sprite ParikmaherInfo()//Integer PosX, Integer PosY, Парикмахеры Parikmaher)
	text(40,20,120,20,black,white,= Парикмахер_1.состояние_парикмахера);
	//text[PosX+40,PosY+40,120,20,black,white,= Parikmaher.состояние_парикмахера]
	//text[PosX+40,PosY+60,120,20,black,white,= Parikmaher.количество_обслуженных]
$End*/

$Frame SpriteConcept 
$Back_picture = white 800 600
	//sprite ParikmaherInfo(0,0,Парикмахер_1)
	//sprite ParikmaherInfo(100,0,Парикмахер_2)
	//sprite ParikmaherInfo(200,0,Парикмахер_3)
	//integer i=5;
	text (80,80,120,120,white,black,= Парикмахер_1.состояние_парикмахера);
	text (40,40,120,120,white,black,= Select (Клиенты : Клиенты.тип == Мальчик and Клиенты.состояние==Пришел).Size());
$End

