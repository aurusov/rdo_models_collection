$frame Frame_1
$back_picture = white 680 420

array<�������> t = Select(������� : NoCheck).getArray();

for (integer i=0; i< t.Size; i++)
{
	if (t[i].��� == �������)
		text( 20, 20 + 15*i,  80, 10, transparent, <0 0 0>, '�������,');
	else
		text( 20, 20 + 15*i,  80, 10, transparent, <0 0 0>, '�������,');
		
	text(74, 20 + 15*i, 18, 10, transparent, <0 0 0>, > t[i].�������);
	text(95, 20 + 15*i, 20, 10, transparent, <0 0 0>, '���');
	
	if (t[i].��������� == ������)
		text(130, 20 + 15*i, 200, 10, transparent, <0 0 0>, '������');
	else
		text(130, 20 + 15*i, 200, 10, transparent, <0 0 0>, '���������');
}

$End
