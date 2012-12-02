$frame Frame_1
$back_picture = white 680 420

array<Клиенты> t = Select(Клиенты : NoCheck).getArray();

for (integer i=0; i< t.Size; i++)
{
	if (t[i].тип == Мальчик)
		text( 20, 20 + 15*i,  80, 10, transparent, <0 0 0>, 'Мальчик,');
	else
		text( 20, 20 + 15*i,  80, 10, transparent, <0 0 0>, 'Девочка,');
		
	text(74, 20 + 15*i, 18, 10, transparent, <0 0 0>, > t[i].возраст);
	text(95, 20 + 15*i, 20, 10, transparent, <0 0 0>, 'лет');
	
	if (t[i].состояние == Пришел)
		text(130, 20 + 15*i, 200, 10, transparent, <0 0 0>, 'Пришел');
	else
		text(130, 20 + 15*i, 200, 10, transparent, <0 0 0>, 'Стрижется');
}

$End
