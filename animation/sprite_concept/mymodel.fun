$Constant
	R   : integer = 100
	num : integer = 10
$End

$Sequence rnd : integer
$Type = uniform 123456789
$End

$Sequence rndr : real
$Type = uniform 123456789
$End

$Sequence Интервал_прихода : real
$Type = exponential 123456789
$End

$Sequence Длительность_обслуживания : real
$Type = uniform 123456789
$End

$Sequence Тип_клиента : such_as Клиенты.тип
$Type = by_hist 123456789
$Body
	Мальчик 1.0
	Девочка 5.0
$End
