/*$Sprite ParikmaherInfo()//Integer PosX, Integer PosY, ����������� Parikmaher)
	text(40,20,120,20,black,white,= ����������_1.���������_�����������);
	//text[PosX+40,PosY+40,120,20,black,white,= Parikmaher.���������_�����������]
	//text[PosX+40,PosY+60,120,20,black,white,= Parikmaher.����������_�����������]
$End*/

$Frame SpriteConcept 
$Back_picture = white 800 600
	//sprite ParikmaherInfo(0,0,����������_1)
	//sprite ParikmaherInfo(100,0,����������_2)
	//sprite ParikmaherInfo(200,0,����������_3)
	//integer i=5;
	text (80,80,120,120,white,black,= ����������_1.���������_�����������);
	text (40,40,120,120,white,black,= Select (������� : �������.��� == ������� and �������.���������==������).Size());
$End

