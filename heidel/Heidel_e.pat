$Pattern Car_arrival_pat_1  : irregular_event   trace
$Relevant_resources
  transporter_1 : Transporter_1  Keep
$Time = Input_1(Average_interval_1)
$Body
  transporter_1
    Convert_event
      counter         set Get_quantity_in_car_1(15, 45)
      gen_wood_kind   set Trunk_wood_kind
      gen_quality     set Trunk_quality
$End

$Pattern Car_arrival_pat_2  : irregular_event   trace
$Relevant_resources
  transporter_2 : Transporter_2  Keep
$Time = Input_2(Average_interval_2)
$Body
  transporter_2
    Convert_event
      counter         set Get_quantity_in_car_2(20, 50)
      gen_wood_kind   set Trunk_wood_kind
      gen_quality     set Trunk_quality
$End

$Pattern Trunks_generation_pat  : rule   trace
$Relevant_resources
  system        : Cutting_machine_1   Keep
  transporter   : a_transporter       Keep
  new_trunk     : a_trunk             Create
$Body
  system
    Choice NoCheck first
    Convert_rule
      trunks_counter  set system.trunks_counter + 1
  transporter
    Choice from transporter.counter > 0
    first
    Convert_rule
      cur_trunk_quant set transporter.cur_trunk_quant + 1
      counter         set transporter.counter - 1
      gen_length      set Trunk_length(transporter.code)
      gen_diameter    set Trunk_diameter(transporter.code)
  new_trunk
    Convert_rule   trace
      number              set system.trunks_counter
      length              set transporter.gen_length
      diameter_b          set transporter.gen_diameter
      diameter_e          set transporter.gen_diameter - (transporter.gen_length * 10) / 100
      cubic_m             set Trunk_volume(transporter.gen_length,
                                transporter.gen_diameter,
                                transporter.gen_diameter - (transporter.gen_length * 10) / 100)
      init_length         set transporter.gen_length
      init_cubic_m        set Trunk_volume(transporter.gen_length,
                                transporter.gen_diameter,
                                transporter.gen_diameter - (transporter.gen_length * 10) / 100)
      wood_kind           set transporter.gen_wood_kind
      quality             set transporter.gen_quality
      status              set nothing
      place_code          set transporter.code
      lap_number          set 0
      position            set 0
      utilization_length  set 0.0
      utilization_cm      set 0.0
$End

$Pattern Orders_arrival_pat  : rule   trace
$Relevant_resources
  some_order          : an_order_position       Keep
  order_for_statistic : an_order_for_statistic  Create
$Body
  some_order
    Choice from some_order.status = processed
    first
    Convert_rule
      order_number      NoChange
      position_number   NoChange
      customer_name     set Customer_name
      quantity          set Order_quantity(10, 70)
      due_date          set Time_now + Order_due_date(1, 5) * 8.0
      arrival_time      set Time_now
      sizetype          set Order_sizetype
      length            set Order_length(12, 24) * 25
      width             set Order_dimensions(_width, some_order.sizetype)
      height            set Order_dimensions(_height, some_order.sizetype)
      volume            set (some_order.length / 100.0) * (some_order.width / 1000.0) *
                            (some_order.height / 1000.0) * some_order.quantity
      wood_kind         set Order_wood_kind
      class             set Order_class
      quality           set Order_quality
      priority          set Order_priority(1, 10)
      ready_quant       set 0
      pieces_quant      set 0
      storage           set passing
      status            set in_process
  order_for_statistic
    Convert_rule   trace
      order_number      set some_order.order_number
      position_number   set some_order.position_number
      due_date          set some_order.due_date
      arrival_time      set Time_now
      quantity          set some_order.quantity
      ready_quant       set 0
      pieces_quant      set 0
      req_diam_1        set Required_diameter(some_order.sizetype, some_order.class, 1) +
                              some_order.length / 10.0
      req_diam_2        set Required_diameter(some_order.sizetype, some_order.class, 2) +
                              some_order.length / 10.0
      req_diam_3        set Required_diameter(some_order.sizetype, some_order.class, 3) +
                              some_order.length / 10.0
      req_diam_4        set Required_diameter(some_order.sizetype, some_order.class, 4) +
                              some_order.length / 10.0
      req_diam_6        set Required_diameter(some_order.sizetype, some_order.class, 6) +
                              some_order.length / 10.0
      req_diam_8        set Required_diameter(some_order.sizetype, some_order.class, 8) +
                              some_order.length / 10.0
      req_diam_9        set Required_diameter(some_order.sizetype, some_order.class, 9) +
                              some_order.length / 10.0
$End

$Pattern Storage_allocation_pat  : rule   trace
$Relevant_resources
  some_order    : an_order_position     Keep
  some_storage  : a_storage             Keep
$Body
  some_order
    Choice from some_order.status = in_process and
                some_order.storage = passing
    first
    Convert_rule
      storage           set some_storage.code
  some_storage
    Choice from some_storage.code <> St_29 and some_storage.code <> St_30 and
                some_storage.order_number = 0 and
                some_storage.length * 100 >= some_order.length
    first
    Convert_rule
      order_number      set some_order.order_number
      position_number   set some_order.position_number
$End

$Pattern  Trunk_passing_T2_C2_pat  : operation  trace
$Relevant_resources
  transporter    : Transporter_2    Keep      Keep
  some_trunk     : a_trunk          Keep      Keep
  conveyer       : Conveyer_2       Keep      Keep
  trunk_to_show  : a_trunk_to_show  Keep      Keep
$Time = Trunk_passing_time
$Body
  transporter
    Choice from transporter.cur_trunk_quant > 0 and
                transporter.status = stoped
    first
    Convert_begin
      status           set forward
    Convert_end
      cur_trunk_quant  set transporter.cur_trunk_quant - 1
      status           set stoped
  some_trunk
    Choice from some_trunk.place_code = Tr_2
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Cv_2
      lap_number       set conveyer.lap_count
      position         set conveyer.position + 900
  conveyer
    Choice from conveyer.cur_trunk_quant = 0 and
                conveyer.movement = no and
                Conveyer_1.cur_trunk_quant = 0
    first
    Convert_begin
      cur_trunk_quant  set conveyer.cur_trunk_quant + 1
      status           set stoped
    Convert_end
      step             set Conv_2_normal_step
      status           set forward
  trunk_to_show
    Choice from trunk_to_show.number = 0
    first
    Convert_begin
      number           set some_trunk.number
      length           set 0
    Convert_end
      length           set some_trunk.length
      place_code       set some_trunk.place_code
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
$End

$Pattern  Trunk_passing_T1_C1_pat  : operation  trace
$Relevant_resources
  transporter    : Transporter_1    Keep      Keep
  some_trunk     : a_trunk          Keep      Keep
  conveyer       : Conveyer_1       Keep      Keep
  trunk_to_show  : a_trunk_to_show  Keep      Keep
$Time = Trunk_passing_time
$Body
  transporter
    Choice from transporter.cur_trunk_quant > 0 and
                transporter.status = stoped
    first
    Convert_begin
      status           set forward
    Convert_end
      cur_trunk_quant  set transporter.cur_trunk_quant - 1
      status           set stoped
  some_trunk
    Choice from some_trunk.place_code = Tr_1
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Cv_1
      lap_number       set conveyer.lap_count
      position         set conveyer.position + 500
  conveyer
    Choice from conveyer.cur_trunk_quant = 0 and
                conveyer.movement = no and
                Conveyer_2.cur_trunk_quant = 0
    first
    Convert_begin
      cur_trunk_quant  set conveyer.cur_trunk_quant + 1
      status           set stoped
    Convert_end
      status           set forward
  trunk_to_show
    Choice from trunk_to_show.number = 0
    first
    Convert_begin
      number           set some_trunk.number
      length           set 0
    Convert_end
      length           set some_trunk.length
      place_code       set some_trunk.place_code
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
$End

$Pattern  Trunk_passing_C1_C2_pat  : operation  trace
$Relevant_resources
  some_trunk          : a_trunk           Keep      Keep
  conveyer_from       : Conveyer_1        Keep      Keep
  conveyer_to         : Conveyer_2        NoChange  Keep
  trunk_to_show       : a_trunk_to_show   NoChange  Keep
$Time = Trunk_passing_time
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_1 and
                Conveyer_1.position - some_trunk.position -
                (Conveyer_1.lap_count - some_trunk.lap_number - 1) *
                Conveyer_1.length <= 0
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Cv_2
      lap_number       set conveyer_to.lap_count
      position         set conveyer_to.position
  conveyer_from
    Choice from conveyer_from.cur_trunk_quant > 0 and
                conveyer_from.movement = no
    first
    Convert_begin
      status           set stoped
    Convert_end
      cur_trunk_quant  set conveyer_from.cur_trunk_quant - 1
      status           set forward
  conveyer_to
    Choice from conveyer_to.cur_trunk_quant = 0
    first
    Convert_end
      cur_trunk_quant  set conveyer_to.cur_trunk_quant + 1
  trunk_to_show
    Choice from trunk_to_show.number = some_trunk.number
    first
    Convert_end
      place_code       set some_trunk.place_code
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
$End

$Pattern Measurement_on_pat  : rule   trace
$Relevant_resources
  Measurement_position : Measurement_position_1   Keep
  some_trunk           : a_trunk                  Keep
$Body
  Measurement_position
    Choice from Measurement_position.state = free
    first
    Convert_rule
      state            set busy
      length           set 0
      diameter_b       set some_trunk.diameter_b
      diameter_e       set some_trunk.diameter_b
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = nothing and
                Conveyer_2.position - some_trunk.position -
                (Conveyer_2.lap_count - some_trunk.lap_number - 1) *
                Conveyer_2.length <= MP_distance
    first
    Convert_rule
      status           set measurement
$End

$Pattern Measurement_off_pat  : rule   trace
$Relevant_resources
  Measurement_position : Measurement_position_1  Keep
  some_trunk           : a_trunk                 Keep
  Cutting_machine      : Cutting_machine_1       Keep
  conveyer             : Conveyer_2              Keep
$Body
  Measurement_position
    Choice from Measurement_position.state = busy
    first
    Convert_rule
      state            set free
      length           set some_trunk.length
      diameter_b       set some_trunk.diameter_b
      diameter_e       set some_trunk.diameter_e
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = measurement and
                Conveyer_2.position - some_trunk.position -
                (Conveyer_2.lap_count - some_trunk.lap_number - 1) *
                Conveyer_2.length + some_trunk.length <= MP_distance
    first
    Convert_rule
      status           set splitting
  Cutting_machine
    Choice NoCheck first
    Convert_rule
      length             set some_trunk.length
      diameter_b         set some_trunk.diameter_b
      diameter_e         set some_trunk.diameter_e
      cubic_m            set some_trunk.cubic_m
      brutto_length      set some_trunk.length
      netto_length       set 0
      brutto_cubic_m     set some_trunk.cubic_m
      netto_cubic_m      set 0.0
      length_to_cut      set some_trunk.length - Edge_cleaning_distance
      diameter_b_to_cut  set some_trunk.diameter_b
  conveyer
    Choice NoCheck first
    Convert_rule
      step             set Conv_2_slow_step
$End

$Pattern Splitting_pat  : rule   trace
$Relevant_resources
  some_trunk          : a_trunk                 NoChange
  cut_out_result      : a_cut_out_result        Keep
  some_order_position : an_order_position       Keep
  order_for_statistic : an_order_for_statistic  Keep
  conveyer            : Conveyer_2              NoChange
  Cutting_machine     : Cutting_machine_1       Keep
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = splitting
    first
  cut_out_result
    Choice from cut_out_result.number = Cutting_machine.pieces_quant + 1
    first
    Convert_rule
      order_number     set some_order_position.order_number
      position_number  set some_order_position.position_number
      customer_name    set some_order_position.customer_name
      wood_kind        set some_trunk.wood_kind
      quality          set some_order_position.quality
      class            set some_order_position.class
      length           set some_order_position.length
      width            set some_order_position.width
      height           set some_order_position.height
      pieces_quant     set IMin(Get_pieces_quant(some_order_position.sizetype, some_order_position.class,
                             Cutting_machine.diameter_b_to_cut - some_order_position.length / 10.0),
                             some_order_position.quantity - some_order_position.ready_quant)
      cur_diam         set Cutting_machine.diameter_b_to_cut
      req_diam         set Required_diameter(some_order_position.sizetype, some_order_position.class,
                             Get_pieces_quant(some_order_position.sizetype, some_order_position.class,
                               Cutting_machine.diameter_b_to_cut - some_order_position.length / 10.0)) +
                             (some_order_position.length * 10) / 100
      cubic_m          set Trunk_volume(some_order_position.length, Cutting_machine.diameter_b_to_cut,
                             Cutting_machine.diameter_b_to_cut - (some_order_position.length * 10) / 100)
      utilization      set cut_out_result.pieces_quant * (some_order_position.length / 100.0 *
                           some_order_position.width / 1000000.0 * some_order_position.height) /
                           cut_out_result.cubic_m
      storage_code     set some_order_position.storage
      termin           set some_order_position.due_date
      soll             set some_order_position.quantity
      lst              set some_order_position.ready_quant + cut_out_result.pieces_quant
      accum_length     set Cutting_machine.netto_length + some_order_position.length + Edge_cleaning_distance
  some_order_position
    Choice from some_order_position.status = in_process and
                some_order_position.storage <> passing and
                some_order_position.ready_quant < some_order_position.quantity and
                some_order_position.length <= Cutting_machine.length_to_cut and
                Required_diameter(some_order_position.sizetype, some_order_position.class, 1) +
                  some_order_position.length / 10.0 <= Cutting_machine.diameter_b_to_cut
    with_max (some_order_position.length / 100.0 * some_order_position.width /
             1000000.0 * some_order_position.height *
             IMin(Get_pieces_quant(some_order_position.sizetype, some_order_position.class,
               Cutting_machine.diameter_b_to_cut - some_order_position.length / 10.0),
               some_order_position.quantity - some_order_position.ready_quant)) /
             Trunk_volume(some_order_position.length, Cutting_machine.diameter_b_to_cut,
               Cutting_machine.diameter_b_to_cut - (some_order_position.length * 10) / 100)

{    with_min Cutting_machine.diameter_b_to_cut - (some_order_position.length * 10) / 100 -
             Required_diameter(some_order_position.sizetype, some_order_position.class,
               IMin(Get_pieces_quant(some_order_position.sizetype, some_order_position.class,
               Cutting_machine.diameter_b_to_cut - some_order_position.length / 10.0),
               some_order_position.quantity - some_order_position.ready_quant))}

{    with_max RAN(0.0, 1.0)}

    Convert_rule
      ready_quant      set some_order_position.ready_quant + cut_out_result.pieces_quant
      pieces_quant     set some_order_position.pieces_quant + 1
  order_for_statistic
    Choice from order_for_statistic.order_number = some_order_position.order_number and
                order_for_statistic.position_number = some_order_position.position_number
    first
    Convert_rule
      ready_quant      set some_order_position.ready_quant
      pieces_quant     set some_order_position.pieces_quant
  conveyer
    Choice from conveyer.cur_trunk_quant > 0 and
                conveyer.movement = no
    first
  Cutting_machine
    Choice from Cutting_machine.state = free
    first
    Convert_rule
      pieces_quant       set Cutting_machine.pieces_quant + 1
      netto_length       set Cutting_machine.netto_length + some_order_position.length
      netto_cubic_m      set Cutting_machine.netto_cubic_m +
                             Trunk_volume(some_order_position.length, Cutting_machine.diameter_b_to_cut,
                               Cutting_machine.diameter_b_to_cut - (some_order_position.length * 10) / 100)
      length_to_cut      set Cutting_machine.length_to_cut - some_order_position.length
      diameter_b_to_cut  set Cutting_machine.diameter_b_to_cut - (some_order_position.length * 10) / 100
$End

$Pattern End_of_splitting_pat  : rule   trace
$Relevant_resources
  some_trunk          : a_trunk             Keep
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = splitting
    first
    Convert_rule
      status             set splitted
$End

$Pattern Backward_switching_pat  : rule   trace
$Relevant_resources
  some_trunk     : a_trunk          NoChange
  conveyer       : Conveyer_2       Keep
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = splitted and
                Conveyer_2.position - some_trunk.position -
                (Conveyer_2.lap_count - some_trunk.lap_number - 1) *
					 Conveyer_2.length < Edge_cleaning_distance * -1
	 first
  conveyer
	 Choice from conveyer.status = forward and
					 conveyer.movement = no
	 first
	 Convert_rule
		status           set backward
$End

$Pattern Stop_switching_pat  : rule   trace
$Relevant_resources
  some_trunk     : a_trunk          Keep
  conveyer       : Conveyer_2       Keep
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = splitted and
                Conveyer_2.position - some_trunk.position -
                (Conveyer_2.lap_count - some_trunk.lap_number - 1) *
                Conveyer_2.length = Edge_cleaning_distance * -1
    first
    Convert_rule
      status           set ready_to_edge_cleaning
  conveyer
    Choice from conveyer.movement = no
    first
    Convert_rule
      status           set stoped
$End

$Pattern Edge_cleaning_pat  : operation   trace
$Relevant_resources
  Cutting_machine : Cutting_machine_1        Keep      Keep
  some_trunk      : a_trunk                  NoChange  Keep
  trunk_to_show   : a_trunk_to_show          NoChange  Keep
  conveyer        : Conveyer_2               NoChange  Keep
$Time = Cutting_time
$Body
  Cutting_machine
	 Choice from Cutting_machine.state = free
    first
    Convert_begin
      state            set busy
    Convert_end
      state            set free
      length           set Cutting_machine.length - Edge_cleaning_distance
      diameter_b       set Cutting_machine.diameter_b - Edge_cleaning_distance * 10 / 100
      cubic_m          set Trunk_volume(Cutting_machine.length,
                             Cutting_machine.diameter_b, Cutting_machine.diameter_e)
      cur_piece_number set 1
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = ready_to_edge_cleaning
    first
    Convert_end
      length           set Cutting_machine.length
      diameter_b       set Cutting_machine.diameter_b
      cubic_m          set Cutting_machine.cubic_m
      status           set positioning
      lap_number       set some_trunk.lap_number +
                             New_trunk_lap_number(some_trunk.position,
                             Edge_cleaning_distance, conveyer.length)
      position         set New_trunk_position(some_trunk.position,
                             Edge_cleaning_distance, conveyer.length)
  trunk_to_show
    Choice from trunk_to_show.number = some_trunk.number
    first
    Convert_end
		length           set some_trunk.length
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
  conveyer
    Choice from conveyer.cur_trunk_quant > 0 and
                conveyer.status = stoped
    first
    Convert_end
      step             set Conv_2_normal_step
      status           set forward
$End

$Pattern Positioned_switching_pat  : rule   trace
$Relevant_resources
  some_trunk     : a_trunk           Keep
  cut_out_result : a_cut_out_result  NoChange
  conveyer       : Conveyer_2        Keep
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = positioning and
                Cutting_machine_1.cur_piece_number <= Cutting_machine_1.pieces_quant
    first
    Convert_rule
      status           set positioned
  cut_out_result
    Choice from cut_out_result.number = Cutting_machine_1.cur_piece_number and
                Conveyer_2.position - some_trunk.position -
                (Conveyer_2.lap_count - some_trunk.lap_number - 1) *
					 Conveyer_2.length <= cut_out_result.length * -1
    first
  conveyer
    Choice from conveyer.movement = no
    first
    Convert_rule
      status           set stoped
$End

$Pattern Cutting_pat  : operation   trace
$Relevant_resources
  conveyer_2          : Conveyer_2          NoChange  NoChange
  cut_out_result      : a_cut_out_result    NoChange  NoChange
  Cutting_machine     : Cutting_machine_1   Keep      Keep
  some_trunk          : a_trunk             Keep      Keep
  trunk_to_show       : a_trunk_to_show     NoChange  Keep
  some_piece_of_trunk : a_piece_of_trunk    Create    NoChange
  conveyer_3          : Conveyer_3          NoChange  Keep
  new_trunk_to_show   : a_trunk_to_show     Keep      Keep
$Time = Cutting_time
$Body
  conveyer_2
    Choice from conveyer_2.cur_trunk_quant > 0 and
                conveyer_2.status = stoped
    first
  cut_out_result
    Choice from cut_out_result.number = Cutting_machine.cur_piece_number
    first
  Cutting_machine
    Choice from Cutting_machine.state = free
    first
    Convert_begin
      state                      set busy
      trunks_counter             set Cutting_machine.trunks_counter + 1
    Convert_end
      state                      set free
      length                     set Cutting_machine.length - cut_out_result.length
      diameter_b                 set Cutting_machine.diameter_b - cut_out_result.length * 10 / 100
      cubic_m                    set Trunk_volume(Cutting_machine.length,
                                       Cutting_machine.diameter_b, Cutting_machine.diameter_e)
      cur_piece_number           set Cutting_machine.cur_piece_number + 1
      pieces_of_trunk_processed  set Cutting_machine.pieces_of_trunk_processed + 1
      total_output_cubic_m            set Cutting_machine.total_output_cubic_m + cut_out_result.pieces_quant *
                                     (cut_out_result.length / 100.0 * cut_out_result.width / 1000000.0 *
                                     cut_out_result.height)
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = positioned
    first
    Convert_begin
      status           set cutting
    Convert_end
      length           set Cutting_machine.length
      diameter_b       set Cutting_machine.diameter_b
      cubic_m          set Cutting_machine.cubic_m
      status           set positioning
      lap_number       set some_trunk.lap_number +
                             New_trunk_lap_number(some_trunk.position,
                             cut_out_result.length, conveyer_2.length)
      position         set New_trunk_position(some_trunk.position,
                             cut_out_result.length, conveyer_2.length)
  trunk_to_show
    Choice from trunk_to_show.number = some_trunk.number
    first
    Convert_end
      length           set some_trunk.length
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
  some_piece_of_trunk
    Convert_begin  trace
      number           set Cutting_machine.trunks_counter
      length           set cut_out_result.length
      diameter_b       set Cutting_machine.diameter_b
      diameter_e       set Cutting_machine.diameter_b - cut_out_result.length * 10 / 100
      cubic_m          set cut_out_result.cubic_m
      wood_kind        set cut_out_result.wood_kind
      quality          set cut_out_result.quality
      place_code       set Cv_3
      lap_number       set Conveyer_3.lap_count
      position         set Conveyer_3.position + cut_out_result.length
      order_number     set cut_out_result.order_number
      position_number  set cut_out_result.position_number
      storage_code     set cut_out_result.storage_code
      pieces_quant     set cut_out_result.pieces_quant
      req_diam         set cut_out_result.req_diam
      utilization      set cut_out_result.utilization
  conveyer_3
    Choice from conveyer_3.cur_trunk_quant = 0
    first
    Convert_end
      cur_trunk_quant  set conveyer_3.cur_trunk_quant + 1
      status           set forward
  new_trunk_to_show
    Choice from new_trunk_to_show.number = 0
    first
    Convert_begin
      number           set Cutting_machine.trunks_counter
      length           set 0
    Convert_end
      length           set some_piece_of_trunk.length
      place_code       set some_piece_of_trunk.place_code
      lap_number       set some_piece_of_trunk.lap_number
      position         set some_piece_of_trunk.position
$End

$Pattern  Trunk_passing_C2_C3_pat  : operation  trace
$Relevant_resources
  some_trunk           : a_trunk                 Keep      Keep
  conveyer_from        : Conveyer_2              Keep      Keep
  conveyer_to          : Conveyer_3              NoChange  Keep
  trunk_to_show        : a_trunk_to_show         NoChange  Keep
  Cutting_machine      : Cutting_machine_1       NoChange  Keep
  Measurement_position : Measurement_position_1  NoChange  Keep
$Time = Trunk_passing_time
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_2 and
                some_trunk.status = positioning and
                Cutting_machine_1.cur_piece_number > Cutting_machine_1.pieces_quant
    first
    Convert_begin
      place_code          set passing
    Convert_end
      status              set completed
      place_code          set Cv_3
      lap_number          set conveyer_to.lap_count
      position            set conveyer_to.position
      utilization_length  set (some_trunk.init_length - some_trunk.length) * 1.0 / some_trunk.init_length
      utilization_cm      set (some_trunk.init_cubic_m - some_trunk.cubic_m) / some_trunk.init_cubic_m
  conveyer_from
    Choice from conveyer_from.cur_trunk_quant > 0 and
                conveyer_from.movement = no
    first
    Convert_begin
      status           set stoped
      cur_trunk_quant  set conveyer_from.cur_trunk_quant - 1
    Convert_end
      status           set forward
  conveyer_to
    Choice from conveyer_to.cur_trunk_quant = 0
    first
    Convert_end
      cur_trunk_quant  set conveyer_to.cur_trunk_quant + 1
  trunk_to_show
    Choice from trunk_to_show.number = some_trunk.number
    first
    Convert_end
      place_code       set some_trunk.place_code
      lap_number       set some_trunk.lap_number
      position         set some_trunk.position
  Cutting_machine
    Choice NoCheck first
    Convert_end
      length           set 0
      diameter_b       set 0
      diameter_e       set 0
      pieces_quant     set 0
      cur_piece_number set 0
      netto_length     set 0
      netto_cubic_m    set 0.0
  Measurement_position
    Choice NoCheck first
    Convert_end
      length           set 0
      diameter_b       set 0
      diameter_e       set 0
$End

$Pattern  Trunk_passing_C3_T3_pat  : operation  trace
$Relevant_resources
  some_piece_of_trunk : a_piece_of_trunk  Keep      Keep
  conveyer            : Conveyer_3        Keep      Keep
  transporter         : Transporter_3     NoChange  Keep
  conveyer_2          : Conveyer_2        NoChange  Keep
  trunk_to_show       : a_trunk_to_show   NoChange  Keep
$Time = Trunk_passing_time
$Body
  some_piece_of_trunk
    Choice from some_piece_of_trunk.place_code = Cv_3 and
                Conveyer_3.position - some_piece_of_trunk.position -
                (Conveyer_3.lap_count - some_piece_of_trunk.lap_number - 1) *
                Conveyer_3.length <= 200
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Tr_3
      lap_number       set transporter.lap_count
      position         set transporter.position
  conveyer
    Choice from conveyer.cur_trunk_quant > 0 and
                conveyer.movement = no
    first
    Convert_begin
      status           set stoped
    Convert_end
      cur_trunk_quant  set conveyer.cur_trunk_quant - 1
      status           set forward
  transporter
    Choice NoCheck first
    Convert_end
      cur_trunk_quant  set transporter.cur_trunk_quant + 1
  conveyer_2
    Choice NoCheck first
    Convert_end
      status           set forward
  trunk_to_show
    Choice from trunk_to_show.number = some_piece_of_trunk.number
    first
    Convert_end
      place_code       set some_piece_of_trunk.place_code
      lap_number       set some_piece_of_trunk.lap_number
      position         set some_piece_of_trunk.position
$End

$Pattern  Trunk_passing_C3_S30_pat  : operation  trace
$Relevant_resources
  some_trunk          : a_trunk           Keep      Keep
  conveyer            : Conveyer_3        Keep      Keep
  some_storage        : a_storage         NoChange  Keep
  trunk_to_show       : a_trunk_to_show   NoChange  Keep
$Time = Trunk_passing_time
$Body
  some_trunk
    Choice from some_trunk.place_code = Cv_3 and
                Conveyer_3.position - some_trunk.position -
                (Conveyer_3.lap_count - some_trunk.lap_number - 1) *
                Conveyer_3.length <= 200
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set St_30
  conveyer
    Choice from conveyer.cur_trunk_quant > 0 and
                conveyer.movement = no
    first
    Convert_begin
      status           set stoped
    Convert_end
      cur_trunk_quant  set conveyer.cur_trunk_quant - 1
      status           set forward
  some_storage
    Choice from some_storage.code = St_30
    first
    Convert_end
      cur_trunk_quant  set some_storage.cur_trunk_quant + 1
  trunk_to_show
    Choice from trunk_to_show.number = some_trunk.number
    first
    Convert_end
      number           set 0
      length           set 0
$End

$Pattern Rest_of_trunk_erasing_pat  : rule   trace
$Relevant_resources
  system         : Cutting_machine_1   Keep
  some_trunk     : a_trunk             Erase
$Body
  system
    Choice NoCheck first
    Convert_rule
      trunks_processed     set system.trunks_processed + 1
      total_trunks_length  set system.total_trunks_length + some_trunk.init_length / 100.0
      total_rest_length    set system.total_rest_length + some_trunk.length / 100.0
      total_trunks_cubic_m set system.total_trunks_cubic_m + some_trunk.init_cubic_m
      total_rest_cubic_m   set system.total_rest_cubic_m + some_trunk.cubic_m
  some_trunk
    Choice from some_trunk.place_code = St_30 and
                some_trunk.status = completed
    first
$End

$Pattern  Trunk_passing_T3_C4_pat  : operation  trace
$Relevant_resources
  transporter         : Transporter_3     Keep      Keep
  some_piece_of_trunk : a_piece_of_trunk  Keep      Keep
  conveyer            : Conveyer_4        NoChange  Keep
  trunk_to_show       : a_trunk_to_show   NoChange  Keep
$Time = Trunk_passing_time
$Body
  transporter
    Choice from transporter.cur_trunk_quant > 0 and
                transporter.movement = no
    first
    Convert_begin
      status           set stoped
    Convert_end
      cur_trunk_quant  set transporter.cur_trunk_quant - 1
      status           set forward
  some_piece_of_trunk
    Choice from some_piece_of_trunk.place_code = Tr_3 and
                Transporter_3.position - some_piece_of_trunk.position -
                (Transporter_3.lap_count - some_piece_of_trunk.lap_number - 1) *
                Transporter_3.length <= 0
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Cv_4
      lap_number       set conveyer.lap_count
      position         set conveyer.position + 200
  conveyer
    Choice from conveyer.cur_trunk_quant = 0
    first
    Convert_end
      cur_trunk_quant  set conveyer.cur_trunk_quant + 1
  trunk_to_show
    Choice from trunk_to_show.number = some_piece_of_trunk.number
    first
    Convert_end
      place_code       set some_piece_of_trunk.place_code
      lap_number       set some_piece_of_trunk.lap_number
      position         set some_piece_of_trunk.position
$End

$Pattern  Trunk_passing_C4_C5_pat  : operation  trace
$Relevant_resources
  conveyer_from       : Conveyer_4        Keep      Keep
  some_piece_of_trunk : a_piece_of_trunk  Keep      Keep
  conveyer_to         : Conveyer_5        NoChange  Keep
  trunk_to_show       : a_trunk_to_show   NoChange  Keep
$Time = Trunk_passing_time
$Body
  conveyer_from
    Choice from conveyer_from.cur_trunk_quant > 0 and
                conveyer_from.movement = no
    first
    Convert_begin
      status           set stoped
    Convert_end
      cur_trunk_quant  set conveyer_from.cur_trunk_quant - 1
      status           set forward
  some_piece_of_trunk
    Choice from some_piece_of_trunk.place_code = Cv_4 and
                Conveyer_4.position - some_piece_of_trunk.position -
                (Conveyer_4.lap_count - some_piece_of_trunk.lap_number - 1) *
                Conveyer_4.length <= some_piece_of_trunk.length
    first
    Convert_begin
      place_code       set passing
    Convert_end
      place_code       set Cv_5
      lap_number       set conveyer_to.lap_count
      position         set conveyer_to.position - some_piece_of_trunk.length
  conveyer_to
    Choice NoCheck first
    Convert_end
      cur_trunk_quant  set conveyer_to.cur_trunk_quant + 1
  trunk_to_show
    Choice from trunk_to_show.number = some_piece_of_trunk.number
    first
    Convert_end
      place_code       set some_piece_of_trunk.place_code
      lap_number       set some_piece_of_trunk.lap_number
      position         set some_piece_of_trunk.position
$End

$Pattern  Conveyer_movement_forward_pat  : operation
$Relevant_resources
  This_conveyer        : a_conveyer              Keep      Keep
  Measurement_position : Measurement_position_1  NoChange  Keep
$Time = This_conveyer.step / 100.0 / (This_conveyer.speed * 60.0)
$Body
  This_conveyer
    Choice from  This_conveyer.status = forward and
                 This_conveyer.movement = no and
                 This_conveyer.cur_trunk_quant > 0
    first
    Convert_begin
      movement      set yes
    Convert_end
      movement      set no
      lap_count     set This_conveyer.lap_count +
                        New_lap_count(forward, This_conveyer.position, This_conveyer.code)
      position      set New_position(forward, This_conveyer.position, This_conveyer.code)
  Measurement_position
    Choice NoCheck first
    Convert_end
      length           set New_length(This_conveyer.code,
                             Measurement_position.state, Measurement_position.length)
      diameter_e       set New_diameter_e(This_conveyer.code,
                             Measurement_position.state, Measurement_position.diameter_e)
$End

$Pattern  Conveyer_movement_backward_pat  : operation
$Relevant_resources
  This_conveyer : a_conveyer      Keep   Keep
$Time = This_conveyer.step / 100.0 / (This_conveyer.speed * 60.0)
$Body
  This_conveyer
    Choice from  This_conveyer.status = backward and
                 This_conveyer.movement = no and
                 This_conveyer.cur_trunk_quant > 0
    first
    Convert_begin
      movement      set yes
    Convert_end
      movement      set no
      lap_count     set This_conveyer.lap_count +
                        New_lap_count(backward, This_conveyer.position, This_conveyer.code)
      position      set New_position(backward, This_conveyer.position, This_conveyer.code)
$End

$Pattern  Transporter_movement_forward_pat  : operation
$Relevant_resources
  This_transporter : a_transporter      Keep   Keep
$Time = Transp_step / 100.0 / (This_transporter.speed * 60.0)
$Body
  This_transporter
    Choice from  This_transporter.status = forward and
                 This_transporter.movement = no and
                 This_transporter.cur_trunk_quant > 0
    first
    Convert_begin
      movement      set yes
    Convert_end
      movement      set no
      lap_count     set This_transporter.lap_count +
                        New_lap_count(forward, This_transporter.position, This_transporter.code)
      position      set New_position(forward, This_transporter.position, This_transporter.code)
$End

$Pattern Erasement_pat  : rule   trace
$Relevant_resources
  some_piece_of_trunk : a_piece_of_trunk    Erase
  conveyer            : Conveyer_5          Keep
  trunk_to_show       : a_trunk_to_show     Keep
  some_storage        : a_storage           Keep
$Body
  some_piece_of_trunk
    Choice from some_piece_of_trunk.place_code = Cv_5 and
                Conveyer_5.position - some_piece_of_trunk.position -
                (Conveyer_5.lap_count - some_piece_of_trunk.lap_number - 1) *
                Conveyer_5.length <= some_piece_of_trunk.length + Conveyer_5.length -
                Get_storage_distance(some_piece_of_trunk.storage_code)
    first
  conveyer
    Choice from conveyer.cur_trunk_quant > 0
    first
    Convert_rule
      cur_trunk_quant  set conveyer.cur_trunk_quant - 1
  trunk_to_show
    Choice from trunk_to_show.number = some_piece_of_trunk.number
    first
    Convert_rule
      number           set 0
      length           set 0
  some_storage
    Choice from some_storage.code = some_piece_of_trunk.storage_code
    first
    Convert_rule
      cur_trunk_quant  set some_storage.cur_trunk_quant + 1
$End

$Pattern Order_completing_pat  : rule   trace
$Relevant_resources
  some_order_position : an_order_position       Keep
  some_storage        : a_storage               Keep
  system              : Cutting_machine_1       Keep
  order_for_statistic : an_order_for_statistic  Erase
$Body
  some_order_position
    Choice from some_order_position.status = in_process and
                some_order_position.storage <> passing and
                some_order_position.ready_quant >= some_order_position.quantity
    first
    Convert_rule
      status           set processed
  some_storage
    Choice from some_storage.code = some_order_position.storage and
                some_storage.cur_trunk_quant = some_order_position.pieces_quant
    first
    Convert_rule
      cur_trunk_quant  set 0
      order_number     set 0
      position_number  set 0
  system
    Choice NoCheck first
    Convert_rule
      orders_processed set system.orders_processed + 1
  order_for_statistic
    Choice from order_for_statistic.order_number = some_order_position.order_number and
                order_for_statistic.position_number = some_order_position.position_number
    first
$End
