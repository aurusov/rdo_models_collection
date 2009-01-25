$Constant
  Average_interval_1 : real = 24.0
  Average_interval_2 : real = 2.0
  trunk_diameter_min : integer = 260
  trunk_diameter_max : integer = 700
  Transp_step            : integer = 10     { in cm, step 5 }
  Conv_2_normal_step     : integer = 25     { in cm, step 5 }
  Conv_2_slow_step       : integer = 5      { in cm, step 5 }
  Trunk_passing_time     : real    = 0.002  { in hours }
  MP_distance            : integer = 1450   { in cm }
  Edge_cleaning_distance : integer = 5      { in cm, step 5 }
  Cutting_time           : real    = 0.005  { in hours }
$End

$Sequence RAN : real
$Type = uniform 7475094
$End

$Sequence Input_1 : real
$Type = exponential 087509
$End

$Sequence Input_2 : real
$Type = exponential 34567654
$End

$Sequence Get_quantity_in_car_1 : integer
$Type = uniform  12345365
$End

$Sequence Get_quantity_in_car_2 : integer
$Type = uniform  12345365
$End

$Sequence Trunk_wood_kind : such_as a_trunk.wood_kind
$Type = by_hist  12538424
$Body
  pine       0.8
  fir_tree   0.2
$End

$Sequence Trunk_quality : such_as a_trunk.quality
$Type = by_hist  12538424
$Body
  1   2      0.6
  2   3      0.4
$End

$Sequence Length : integer
$Type = uniform  1234569
$End

$Function Trunk_length : integer
$Type = algorithmic
$Parameters
  transporter_code : such_as a_trunk.place_code
$Body
  Calculate_if transporter_code = Tr_1  Trunk_length = Length(400, 800)
  Calculate_if transporter_code = Tr_2  Trunk_length = Length(600, 2200)
$End

$Sequence Diameter : integer
$Type = uniform  1234563
$End

$Function Trunk_diameter : integer
$Type = algorithmic
$Parameters
  transporter_code : such_as a_trunk.place_code
$Body
  Calculate_if transporter_code = Tr_1  Trunk_diameter = Diameter(trunk_diameter_min, trunk_diameter_max)
  Calculate_if transporter_code = Tr_2  Trunk_diameter = Diameter(trunk_diameter_min, trunk_diameter_max)
$End

$Function Trunk_volume : real
$Type = algorithmic
$Parameters
  length      : integer
  diameter_1  : integer
  diameter_2  : integer
$Body
  Calculate_if 0 = 0
  Trunk_volume = 0.2618 * length / 100.0 * (diameter_1 / 1000000.0 * diameter_1 +
    diameter_1 / 1000000.0 * diameter_2 + diameter_2 / 1000000.0 * diameter_2)
$End

$Sequence Customer_name : such_as an_order_position.customer_name
$Type = by_hist  12774424
$Body
   Bronstein      1.0
   Schniperson    1.0
   Krusenstern    1.0
   M_fon_Sudoff   1.0
$End

$Sequence Order_quantity : integer
$Type = uniform  12538424
$End

$Sequence Order_due_date : integer
$Type = uniform  19424
$End

$Sequence Order_length : integer
$Type = uniform  12538424
$End

$Sequence Order_sizetype : such_as an_order_position.sizetype
$Type = by_hist  12538424
$Body
  _60x60           1.0
  _60x80           1.0
  _60x120          1.0
  _80x80           3.0
  _80x100          3.0
  _80x120          3.0
  _100x100         3.0
  _100x120         3.0
  _120x120         3.0
  _120x140         3.0
  _120x160         3.0
  _140x140         1.0
  _140x160         3.0
  _160x160         1.0
  _160x180         3.0
  _100x200         1.0
  _100x220         1.0
  _120x200         1.0
  _120x240         1.0
  _160x200         1.0
  _180x220         1.0
  _200x200         1.0
  _200x240         3.0
$End

$Function Order_dimensions : integer
$Type = table
$Parameters
  dimension : (_width, _height)
  _sizetype : such_as an_order_position.sizetype
$Body
  {   _60x60 }      60    60
  {   _60x80 }      60    80
  {  _60x120 }      60   120
  {   _80x80 }      80    80
  {  _80x100 }      80   100
  {  _80x120 }      80   120
  { _100x100 }     100   100
  { _100x120 }     100   120
  { _120x120 }     120   120
  { _120x140 }     120   140
  { _120x160 }     120   160
  { _140x140 }     140   140
  { _140x160 }     140   160
  { _160x160 }     160   160
  { _160x180 }     160   180
  { _100x200 }     100   200
  { _100x220 }     100   220
  { _120x200 }     120   200
  { _120x240 }     120   240
  { _160x200 }     160   200
  { _180x220 }     180   220
  { _200x200 }     200   200
  { _200x240 }     200   240
$End

$Sequence Order_wood_kind : such_as a_trunk.wood_kind
$Type = by_hist  312538
$Body
  pine       0.8
  fir_tree   0.2
$End

$Sequence Order_class : such_as an_order_position.class
$Type = by_hist  7546512
$Body
  S          0.6
  A          0.2
  B          0.1
  C          0.1
$End

$Sequence Order_quality : such_as a_trunk.quality
$Type = by_hist  7751253
$Body
  1   2      0.6
  2   3      0.4
$End

$Sequence Order_priority : integer
$Type = uniform  538422
$End

$Function Conv_step : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
$Body
  Calculate_if code = Tr_1  Conv_step = Transp_step
  Calculate_if code = Tr_2  Conv_step = Transp_step
  Calculate_if code = Tr_3  Conv_step = Transp_step
  Calculate_if code = Cv_1  Conv_step = Conveyer_1.step
  Calculate_if code = Cv_2  Conv_step = Conveyer_2.step
  Calculate_if code = Cv_3  Conv_step = Conveyer_3.step
  Calculate_if code = Cv_4  Conv_step = Conveyer_4.step
  Calculate_if code = Cv_5  Conv_step = Conveyer_5.step
$End

$Function Total_length : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
$Body
  Calculate_if code = Tr_1  Total_length = Transporter_1.length
  Calculate_if code = Tr_2  Total_length = Transporter_2.length
  Calculate_if code = Tr_3  Total_length = Transporter_3.length
  Calculate_if code = Cv_1  Total_length = Conveyer_1.length
  Calculate_if code = Cv_2  Total_length = Conveyer_2.length
  Calculate_if code = Cv_3  Total_length = Conveyer_3.length
  Calculate_if code = Cv_4  Total_length = Conveyer_4.length
  Calculate_if code = Cv_5  Total_length = Conveyer_5.length
$End

$Function New_lap_count : integer
$Type = algorithmic
$Parameters
  direction  : such_as a_conveyer.status
  position   : integer
  code       : such_as a_trunk.place_code
$Body
  Calculate_if direction = forward and position - Conv_step(code) < 0
    New_lap_count = 1
  Calculate_if direction = forward and position - Conv_step(code) >= 0
    New_lap_count = 0
  Calculate_if direction = backward and position + Conv_step(code) < Total_length(code)
    New_lap_count = 0
  Calculate_if direction = backward and position + Conv_step(code) >= Total_length(code)
    New_lap_count = -1
$End

$Function New_position : integer
$Type = algorithmic
$Parameters
  direction  : such_as a_conveyer.status
  position   : integer
  code       : such_as a_trunk.place_code
$Body
  Calculate_if direction = forward and position - Conv_step(code) < 0
    New_position = position - Conv_step(code) + Total_length(code)
  Calculate_if direction = forward and position - Conv_step(code) >= 0
    New_position = position - Conv_step(code)
  Calculate_if direction = backward and position + Conv_step(code) < Total_length(code)
    New_position = position + Conv_step(code)
  Calculate_if direction = backward and position + Conv_step(code) >= Total_length(code)
    New_position = position + Conv_step(code) - Total_length(code)
$End

$Function New_trunk_lap_number : integer
$Type = algorithmic
$Parameters
  position     : integer
  piece_length : integer
  length       : integer
$Body
  Calculate_if position - piece_length >= 0  New_trunk_lap_number = 0
  Calculate_if position - piece_length  < 0  New_trunk_lap_number = 1
$End

$Function New_trunk_position : integer
$Type = algorithmic
$Parameters
  position     : integer
  piece_length : integer
  length       : integer
$Body
  Calculate_if position - piece_length >= 0
    New_trunk_position = position - piece_length
  Calculate_if position - piece_length  < 0
    New_trunk_position = position - piece_length + length
$End

$Function X_pos_F1 : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
  position   : integer
  lap_number : integer
$Body
  Calculate_if code = Tr_3  X_pos_F1 = 78
  Calculate_if code = Cv_1
    X_pos_F1 = 440+(50 + Conveyer_1.position - position -
      (Conveyer_1.lap_count - lap_number - 1) * Conveyer_1.length) / 10
  Calculate_if code = Cv_2
    X_pos_F1 = 70+(1000 + 50 + Conveyer_2.position - position -
      (Conveyer_2.lap_count - lap_number - 1) * Conveyer_2.length) / 10
  Calculate_if code = Cv_3
    X_pos_F1 = 60+(50 + Conveyer_3.position - position -
      (Conveyer_3.lap_count - lap_number - 1) * Conveyer_3.length) / 10
  Calculate_if code = Cv_4
    X_pos_F1 = 60-(Conveyer_4.position - position - 50 -
      (Conveyer_4.lap_count - lap_number) * Conveyer_4.length) / 10
  Calculate_if code = Cv_5
    X_pos_F1 = 80-(Conveyer_5.position - position - 50 - 1000 -
      (Conveyer_5.lap_count - lap_number) * Conveyer_5.length) / 10
$End

$Function Y_pos_F1 : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
  position   : integer
  lap_number : integer
$Body
  Calculate_if code = Tr_3
	 Y_pos_F1 = 140 + (Transporter_3.position - position - 1 -
		(Transporter_3.lap_count - lap_number - 1) * Transporter_3.length) / 5
  Calculate_if code = Cv_1  Y_pos_F1 = 381
  Calculate_if code = Cv_2  Y_pos_F1 = 381
  Calculate_if code = Cv_3  Y_pos_F1 = 381
  Calculate_if code = Cv_4  Y_pos_F1 = 140
  Calculate_if code = Cv_5  Y_pos_F1 = 140
$End

$Function X_pos_F2 : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
  position   : integer
  lap_number : integer
$Body
  Calculate_if code = Tr_3  X_pos_F2 = 78
  Calculate_if code = Cv_1  X_pos_F2 = 0
  Calculate_if code = Cv_2  X_pos_F2 = 0
  Calculate_if code = Cv_3  X_pos_F2 = 0
  Calculate_if code = Cv_4
    X_pos_F2 = 60-(Conveyer_4.position - position - 50 -
      (Conveyer_4.lap_count - lap_number) * Conveyer_4.length) / 10
  Calculate_if code = Cv_5
    X_pos_F2 = 80-(Conveyer_5.position - position - 50 - 1000 -
      (Conveyer_5.lap_count - lap_number) * Conveyer_5.length) / 10
$End

$Function Y_pos_F2 : integer
$Type = algorithmic
$Parameters
  code       : such_as a_trunk.place_code
  position   : integer
  lap_number : integer
$Body
  Calculate_if code = Tr_3
    Y_pos_F2 = 220 + (Transporter_3.position - position - 1 -
      (Transporter_3.lap_count - lap_number - 1) * Transporter_3.length) / 5
  Calculate_if code = Cv_1  Y_pos_F2 = 0
  Calculate_if code = Cv_2  Y_pos_F2 = 0
  Calculate_if code = Cv_3  Y_pos_F2 = 0
  Calculate_if code = Cv_4  Y_pos_F2 = 182
  Calculate_if code = Cv_5  Y_pos_F2 = 182
$End

$Function Get_storage_distance : integer
$Type = algorithmic
$Parameters
  place_code    : such_as a_trunk.place_code
$Body
  Calculate_if place_code = St_1   Get_storage_distance = Storage_1.distance
  Calculate_if place_code = St_2   Get_storage_distance = Storage_2.distance
  Calculate_if place_code = St_3   Get_storage_distance = Storage_3.distance
  Calculate_if place_code = St_4   Get_storage_distance = Storage_4.distance
  Calculate_if place_code = St_5   Get_storage_distance = Storage_5.distance
  Calculate_if place_code = St_6   Get_storage_distance = Storage_6.distance
  Calculate_if place_code = St_7   Get_storage_distance = Storage_7.distance
  Calculate_if place_code = St_8   Get_storage_distance = Storage_8.distance
  Calculate_if place_code = St_9   Get_storage_distance = Storage_9.distance
  Calculate_if place_code = St_10  Get_storage_distance = Storage_10.distance
  Calculate_if place_code = St_11  Get_storage_distance = Storage_11.distance
  Calculate_if place_code = St_12  Get_storage_distance = Storage_12.distance
  Calculate_if place_code = St_13  Get_storage_distance = Storage_13.distance
  Calculate_if place_code = St_14  Get_storage_distance = Storage_14.distance
  Calculate_if place_code = St_15  Get_storage_distance = Storage_15.distance
  Calculate_if place_code = St_16  Get_storage_distance = Storage_16.distance
  Calculate_if place_code = St_17  Get_storage_distance = Storage_17.distance
  Calculate_if place_code = St_18  Get_storage_distance = Storage_18.distance
  Calculate_if place_code = St_19  Get_storage_distance = Storage_19.distance
  Calculate_if place_code = St_20  Get_storage_distance = Storage_20.distance
  Calculate_if place_code = St_21  Get_storage_distance = Storage_21.distance
  Calculate_if place_code = St_22  Get_storage_distance = Storage_22.distance
  Calculate_if place_code = St_23  Get_storage_distance = Storage_23.distance
  Calculate_if place_code = St_24  Get_storage_distance = Storage_24.distance
  Calculate_if place_code = St_25  Get_storage_distance = Storage_25.distance
  Calculate_if place_code = St_26  Get_storage_distance = Storage_26.distance
  Calculate_if place_code = St_27  Get_storage_distance = Storage_27.distance
  Calculate_if place_code = St_28  Get_storage_distance = Storage_28.distance
  Calculate_if place_code = St_29  Get_storage_distance = Storage_29.distance
  Calculate_if place_code = St_30  Get_storage_distance = Storage_30.distance
$End

$Function New_length : integer
$Type = algorithmic
$Parameters
  code      : such_as a_trunk.place_code
  state     : such_as a_measurement_position.state
  old_value : integer
$Body
  Calculate_if code = Cv_2 and state = busy   New_length = old_value + Conveyer_2.step
  Calculate_if code <> Cv_2 or state <> busy  New_length = old_value
$End

$Function New_diameter_e : integer
$Type = algorithmic
$Parameters
  code      : such_as a_trunk.place_code
  state     : such_as a_measurement_position.state
  old_value : integer
$Body
  Calculate_if code = Cv_2 and state = busy
    New_diameter_e = Measurement_position_1.diameter_b - Measurement_position_1.length * 10 / 100
  Calculate_if code <> Cv_2 or state <> busy  New_diameter_e = old_value
$End

$Function Class_diameter : real
$Type = algorithmic
$Parameters
  dim_1        : integer
  dim_2        : integer
  class        : such_as an_order_position.class
$Body
  Calculate_if class = S  Class_diameter = (dim_1 + dim_2) * 0.7 + IAbs(dim_1 - dim_2) / 10.0
  Calculate_if class = A  Class_diameter = (dim_1 + dim_2) * 0.7
  Calculate_if class = B  Class_diameter = (dim_1 + dim_2) * 0.6
  Calculate_if class = C  Class_diameter = IMax(dim_1, dim_2) + 3.0
$End

$Function Required_diameter : real
$Type = algorithmic
$Parameters
  sizetype     : such_as an_order_position.sizetype
  class        : such_as an_order_position.class
  pieces_quant : integer [1..9]
$Body
  Calculate_if pieces_quant = 1  Required_diameter =
    Class_diameter(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype), class)
  Calculate_if pieces_quant = 2  Required_diameter =
    Class_diameter(IMin(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 2,
                   IMax(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)), class)
  Calculate_if pieces_quant = 3  Required_diameter =
    Class_diameter(IMin(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 3,
                   IMax(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)), class)
  Calculate_if pieces_quant = 4  Required_diameter =
    Class_diameter(Order_dimensions(_width, sizetype) * 2,
                   Order_dimensions(_height, sizetype) * 2, class)
  Calculate_if pieces_quant = 5 or pieces_quant = 6 Required_diameter =
    Class_diameter(IMin(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 3,
                   IMax(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 2, class)
  Calculate_if pieces_quant = 7 or pieces_quant = 8 Required_diameter =
    Class_diameter(IMin(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 4,
                   IMax(Order_dimensions(_width, sizetype), Order_dimensions(_height, sizetype)) * 2, class)
  Calculate_if pieces_quant = 9  Required_diameter =
    Class_diameter(Order_dimensions(_width, sizetype) * 3,
                   Order_dimensions(_height, sizetype) * 3, class)
$End

$Function Get_pieces_quant : integer [0..9]
$Type = algorithmic
$Parameters
  sizetype     : such_as an_order_position.sizetype
  class        : such_as an_order_position.class
  diameter     : real
$Body
  Calculate_if diameter <  Required_diameter(sizetype, class, 1)  Get_pieces_quant = 0
  Calculate_if diameter >= Required_diameter(sizetype, class, 9)  Get_pieces_quant = 9
  Calculate_if diameter >= Required_diameter(sizetype, class, 8)  Get_pieces_quant = 8
  Calculate_if diameter >= Required_diameter(sizetype, class, 6)  Get_pieces_quant = 6
  Calculate_if diameter >= Required_diameter(sizetype, class, 4)  Get_pieces_quant = 4
  Calculate_if diameter >= Required_diameter(sizetype, class, 3)  Get_pieces_quant = 3
  Calculate_if diameter >= Required_diameter(sizetype, class, 2)  Get_pieces_quant = 2
  Calculate_if diameter >= Required_diameter(sizetype, class, 1)  Get_pieces_quant = 1
$End
