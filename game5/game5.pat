$Pattern Перемещение_фишки : rule
$Parameters
  Куда_перемещать: such_as Место_дырки
  На_сколько_перемещать: integer
$Relevant_resources
  _Фишка: Фишка   Keep
  _Дырка: Дырка_t Keep
$Body
  _Фишка
    Choice from Где_дырка(_Фишка.Местоположение) == Куда_перемещать
    first
      Convert_rule Местоположение += На_сколько_перемещать;
  _Дырка
    Choice NoCheck
    first
      Convert_rule Место -= На_сколько_перемещать;
$End
