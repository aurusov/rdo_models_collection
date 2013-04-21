$Constant
  Место_дырки: (справа, слева, сверху, снизу, дырки_рядом_нет) = дырки_рядом_нет
$End

$Function Где_дырка : such_as Место_дырки
$Type = algorithmic
$Parameters
  _Место: such_as Фишка.Местоположение
$Body
  if (_Место == Дырка.Место + 3)  return сверху;
  if (_Место == Дырка.Место - 3)  return снизу;
  if (_Место <> 3  and _Место <> 6 and _Место == Дырка.Место - 1)  return справа;
  if (_Место <> 1  and _Место <> 4 and _Место == Дырка.Место + 1)  return слева;
  if (0 == 0)  return дырки_рядом_нет;
$End

$Function Фишка_на_месте : integer
$Type = algorithmic
$Parameters
  _Номер: such_as Фишка.Номер
  _Место: such_as Фишка.Местоположение
$Body
  if ( _Номер == _Место) return 1;
  if (  0 == 0 )         return 0;
$End

$Function Кол_во_фишек_не_на_месте : integer
$Type = algorithmic
$Parameters
  Просто_так: integer
$Body
  if (0 == 0)
    return 5 - (Фишка_на_месте(Фишка1.Номер, Фишка1.Местоположение)+
					Фишка_на_месте(Фишка2.Номер, Фишка2.Местоположение)+
					Фишка_на_месте(Фишка3.Номер, Фишка3.Местоположение)+
					Фишка_на_месте(Фишка4.Номер, Фишка4.Местоположение)+
					Фишка_на_месте(Фишка5.Номер, Фишка5.Местоположение));
$End

$Function Ряд: integer
$Type = algorithmic
$Parameters
  Местоположение: integer
$Body
  if ( Местоположение >= 1 and Местоположение <= 3) return 1;
  if ( Местоположение >= 4 and Местоположение <= 6) return 2;
  if ( Местоположение >= 7 and Местоположение <= 9) return 3;
$End

$Function Строка: integer
$Type = algorithmic
$Parameters
  Местоположение: integer
$Body
  if (Местоположение == 1 or Местоположение == 4 or Местоположение == 7) return 1;
  if (Местоположение == 2 or Местоположение == 5 or Местоположение == 8) return 2;
  if (Местоположение == 3 or Местоположение == 6 or Местоположение == 9) return 3;
$End

$Function Расстояние_фишеки_до_места : integer
$Type = algorithmic
$Parameters
  Откуда: integer
  Куда  : integer
$Body
  if ( Откуда == Куда ) return 0;
  if ( 1 == 1 )        return Abs(Ряд(Откуда)-Ряд(Куда)) + Abs(Строка(Откуда)-Строка(Куда));
$End

$Function Расстояния_фишек_до_мест : integer
$Type = algorithmic
$Parameters
  Просто_так: integer
$Body
  if ( 0 == 0 )
    return Расстояние_фишеки_до_места(Фишка1.Номер, Фишка1.Местоположение)+
                               Расстояние_фишеки_до_места(Фишка2.Номер, Фишка2.Местоположение)+
                               Расстояние_фишеки_до_места(Фишка3.Номер, Фишка3.Местоположение)+
                               Расстояние_фишеки_до_места(Фишка4.Номер, Фишка4.Местоположение)+
                               Расстояние_фишеки_до_места(Фишка5.Номер, Фишка5.Местоположение);
$End
