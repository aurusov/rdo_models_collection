$Pattern Choosing_laptop_pattern : operation trace
$Relevant_resources
	_Client : Clients Keep Erase
	_Chosen_laptop : Laptop Keep NoChange
$Time = exponential_sequence(20)
$Body
_Client:
	Choice from status == Ready
	Convert_begin
		status = Done;
_Chosen_laptop:
	Choice from _Client.money_available >= price
			and _Client.desired_Laptop.weight >= weight
			and _Client.desired_Laptop.screen_size <= screen_size
			and _Client.desired_Laptop.RAM.memory_size <= RAM.memory_size
			and _Client.desired_Laptop.RAM.clock_rate <= RAM.clock_rate
			and _Client.desired_Laptop.Graphic_Card.memory_size <= Graphic_Card.memory_size
			and _Client.desired_Laptop.Graphic_Card.memory_clock <= Graphic_Card.memory_clock
			and _Client.desired_Laptop.CPU.clock_rate <= CPU.clock_rate
			and _Client.desired_Laptop.CPU.number_of_cores <= CPU.number_of_cores
			and _Client.desired_Laptop.HDD.memory_size <= HDD.memory_size
			and _Client.desired_Laptop.HDD.rotational_frequency <= HDD.rotational_frequency
			and amount > 0
			with_min price
	Convert_begin
		amount--;
		sold++;
		HDD.rating = Compute_HDD_rating(_Chosen_laptop, _Client);
		CPU.rating = Compute_CPU_rating(_Chosen_laptop, _Client);
		RAM.rating = Compute_RAM_rating(_Chosen_laptop, _Client);
		Graphic_Card.rating = Compute_Graphic_Card_rating(_Chosen_laptop, _Client);
		rating = Compute_total_rating(_Chosen_laptop, _Client);
$End

$Pattern Client_leaving_pattern : rule trace
$Relevant_resources
	_Client: Clients Erase
$Body
_Client:
	Choice from status == Ready
$End
