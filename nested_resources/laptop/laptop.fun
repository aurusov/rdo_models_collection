$Sequence exponential_sequence : real
$Type = exponential 12345678
$End

$Sequence uniform_sequence : real
$Type = uniform 12345678
$End

$Sequence normal_sequence : real
$Type = normal 12345678
$End

$Function ifRequired : integer
$Type = algorithmic
$Parameters
$Body
	if (uniform_sequence(0,1) < 0.7)
		return 0;
	else
		return 1;
$End

$Function Money_Available : real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(300, 2500);
$End

$Function Choose_weight: real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(1, 5);
$End

$Function Choose_Screen_Size: real
$Type = algorithmic
$Parameters
$Body
	return uniform_sequence(8, 19);
$End

$Function Choose_RAM_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 4096);
$End

$Function Choose_RAM_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 1600);
$End

$Function Choose_GC_memory_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0, 2048);
$End

$Function Choose_GC_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0, 2400);
$End

$Function Choose_CPU_clock_rate : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0,3700);
$End

$Function Choose_CPU_number_of_cores : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * ifRequired() * uniform_sequence(0,4);
$End

$Function Choose_HDD_memory_size : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0,500);
$End

$Function Choose_HDD_rotational_frequency : real
$Type = algorithmic
$Parameters
$Body
	return ifRequired() * uniform_sequence(0,7200);
$End

$Function Compute_HDD_rating : real
$Type = algorithmic
$Parameters
_Laptop : Laptop
_Client : Clients
$Body
	real ms = _Laptop.HDD.memory_size / (_Laptop.HDD.memory_size + _Client.desired_Laptop.HDD.memory_size);
	real rf = _Laptop.HDD.rotational_frequency / (_Laptop.HDD.rotational_frequency + _Client.desired_Laptop.HDD.rotational_frequency);
	return (ms + rf) / 2 * 5;
$End

$Function Compute_CPU_rating : real
$Type = algorithmic
$Parameters
_Laptop : Laptop
_Client : Clients
$Body
	real full_laptop_cl = _Laptop.CPU.number_of_cores * _Laptop.CPU.clock_rate;
	real full_desired_cl = _Client.desired_Laptop.CPU.number_of_cores * _Client.desired_Laptop.CPU.clock_rate;
	return  full_laptop_cl / ( full_laptop_cl + full_desired_cl) * 5;
$End

$Function Compute_RAM_rating : real
$Type = algorithmic
$Parameters
_Laptop : Laptop
_Client : Clients
$Body
	real cl = _Laptop.RAM.clock_rate / (_Laptop.RAM.clock_rate + _Client.desired_Laptop.RAM.clock_rate);
	real ms = _Laptop.RAM.memory_size / (_Laptop.RAM.memory_size + _Client.desired_Laptop.RAM.memory_size);
	return (cl + ms) / 2 * 5;
$End

$Function  Compute_Graphic_Card_rating : real
$Type = algorithmic
$Parameters
_Laptop : Laptop
_Client : Clients
$Body
	real ms = _Laptop.Graphic_Card.memory_size / (_Laptop.Graphic_Card.memory_size + _Client.desired_Laptop.Graphic_Card.memory_size);
	real mc = _Laptop.Graphic_Card.memory_clock / (_Laptop.Graphic_Card.memory_clock + _Client.desired_Laptop.Graphic_Card.memory_clock);
	return (ms + mc) / 2 * 5;
$End

$Function Compute_total_rating : real
$Type = algorithmic
$Parameters
_Laptop : Laptop
_Client : Clients
$Body
	return (_Laptop.CPU.rating + 
			_Laptop.RAM.rating + 
			_Laptop.Graphic_Card.rating + 
			_Laptop.HDD.rating ) /4;
$End