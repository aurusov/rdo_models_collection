$Frame  Frame_1
$Back_picture = <255 255 255> fr1111
Show
  text [205, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_1.cur_trunk_quant]
  text [205,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_2.cur_trunk_quant]
  text [245, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_3.cur_trunk_quant]
  text [245,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_4.cur_trunk_quant]
  text [290, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_5.cur_trunk_quant]
  text [290,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_6.cur_trunk_quant]
  text [345, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_7.cur_trunk_quant]
  text [345,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_8.cur_trunk_quant]
  text [395, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_9.cur_trunk_quant]
  text [395,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_10.cur_trunk_quant]
  text [460, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_11.cur_trunk_quant]
  text [455,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_12.cur_trunk_quant]
  text [520, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_13.cur_trunk_quant]
  text [515,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_14.cur_trunk_quant]
  text [580, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_15.cur_trunk_quant]
  text [580,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_16.cur_trunk_quant]
  text [650, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_17.cur_trunk_quant]
  text [650,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_18.cur_trunk_quant]
  text [720, 175, 30, 12, <255 255 0>, <0 0 0>, = Storage_19.cur_trunk_quant]
  text [720,  95, 30, 12, <255 255 0>, <0 0 0>, = Storage_20.cur_trunk_quant]
  text [260, 250, 30, 12, <255 255 0>, <0 0 0>, = Storage_21.cur_trunk_quant]
  text [260,  25, 30, 12, <255 255 0>, <0 0 0>, = Storage_22.cur_trunk_quant]
  text [350, 250, 30, 12, <255 255 0>, <0 0 0>, = Storage_23.cur_trunk_quant]
  text [350,  25, 30, 12, <255 255 0>, <0 0 0>, = Storage_24.cur_trunk_quant]
  text [470, 250, 30, 12, <255 255 0>, <0 0 0>, = Storage_25.cur_trunk_quant]
  text [470,  25, 30, 12, <255 255 0>, <0 0 0>, = Storage_26.cur_trunk_quant]
  text [590, 250, 30, 12, <255 255 0>, <0 0 0>, = Storage_27.cur_trunk_quant]
  text [590,  25, 30, 12, <255 255 0>, <0 0 0>, = Storage_28.cur_trunk_quant]
  text [ 55,  90, 30, 12, <255 255 0>, <0 0 0>, = Storage_29.cur_trunk_quant]
  text [ 55, 407, 30, 12, <255 255 0>, <0 0 0>, = Storage_30.cur_trunk_quant]

  text [740, 480, 20, 11, transparent, <0 0 0>, Transporter_1.cur_trunk_quant]
  text [490, 480, 20, 11, transparent, <0 0 0>, Transporter_2.cur_trunk_quant]

  text [340, 312, 40, 11, transparent, <0 0 0>, Measurement_position_1.length]
  text [340, 333, 40, 11, transparent, <0 0 0>, Measurement_position_1.diameter_e]

  text [240, 354, 40, 11, transparent, <0 0 0>, Cutting_machine_1.length]
  text [240, 400, 40, 11, transparent, <0 0 0>, Cutting_machine_1.diameter_b]
  text [240, 420, 40, 11, transparent, <0 0 0>, Cutting_machine_1.diameter_e]

  text [200, 460, 40, 11, transparent, <0 0 0>, Cutting_machine_1.trunks_processed]
  text [200, 480, 40, 11, transparent, <0 0 0>, Cutting_machine_1.pieces_of_trunk_processed]

Show_if Transporter_1.cur_trunk_quant > 0
  rect [610, 400,  50, Transporter_1.cur_trunk_quant, <164 106 30>, <164 106 30>]
Show_if Transporter_2.cur_trunk_quant > 0
  rect [350, 400, 120, Transporter_2.cur_trunk_quant, <164 106 30>, <164 106 30>]

Show_if Measurement_position_1.state==free
  rect [315, 351, 8, 27, <0 225 0>, <0 225 0>]
  rect [315, 399, 8, 27, <0 225 0>, <0 225 0>]
Show_if Measurement_position_1.state==busy
  rect [315, 351, 8, 27, <225 0 0>, <225 0 0>]
  rect [315, 399, 8, 27, <225 0 0>, <225 0 0>]

Show_if Cutting_machine_1.state==busy
  rect [173, 353, 5, 25, <225 0 0>, <225 0 0>]
  rect [173, 399, 5, 25, <225 0 0>, <225 0 0>]
Show_if Cutting_machine_1.state==free
  rect [173, 353, 5, 25, <0 225 0>, <0 0 225>]
  rect [173, 399, 5, 25, <0 225 0>, <0 0 225>]

Show_if Trunk_to_show_1.length > 0
  rect [X_pos_F1(Trunk_to_show_1.place_code, Trunk_to_show_1.position, Trunk_to_show_1.lap_number),
		  Y_pos_F1(Trunk_to_show_1.place_code, Trunk_to_show_1.position, Trunk_to_show_1.lap_number),
		  ( Trunk_to_show_1.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_2.length > 0
  rect [X_pos_F1(Trunk_to_show_2.place_code, Trunk_to_show_2.position, Trunk_to_show_2.lap_number),
		  Y_pos_F1(Trunk_to_show_2.place_code, Trunk_to_show_2.position, Trunk_to_show_2.lap_number),
		  ( Trunk_to_show_2.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_3.length > 0
  rect [X_pos_F1(Trunk_to_show_3.place_code, Trunk_to_show_3.position, Trunk_to_show_3.lap_number),
		  Y_pos_F1(Trunk_to_show_3.place_code, Trunk_to_show_3.position, Trunk_to_show_3.lap_number),
		  ( Trunk_to_show_3.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_4.length > 0
  rect [X_pos_F1(Trunk_to_show_4.place_code, Trunk_to_show_4.position, Trunk_to_show_4.lap_number),
		  Y_pos_F1(Trunk_to_show_4.place_code, Trunk_to_show_4.position, Trunk_to_show_4.lap_number),
		  ( Trunk_to_show_4.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_5.length > 0
  rect [X_pos_F1(Trunk_to_show_5.place_code, Trunk_to_show_5.position, Trunk_to_show_5.lap_number),
		  Y_pos_F1(Trunk_to_show_5.place_code, Trunk_to_show_5.position, Trunk_to_show_5.lap_number),
		  ( Trunk_to_show_5.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_6.length > 0
  rect [X_pos_F1(Trunk_to_show_6.place_code, Trunk_to_show_6.position, Trunk_to_show_6.lap_number),
		  Y_pos_F1(Trunk_to_show_6.place_code, Trunk_to_show_6.position, Trunk_to_show_6.lap_number),
		  ( Trunk_to_show_6.length ) / 10 , 15, <164 106 30>, <164 106 30> ]
Show_if Trunk_to_show_7.length > 0
  rect [X_pos_F1(Trunk_to_show_7.place_code, Trunk_to_show_7.position, Trunk_to_show_7.lap_number),
		  Y_pos_F1(Trunk_to_show_7.place_code, Trunk_to_show_7.position, Trunk_to_show_7.lap_number),
		  ( Trunk_to_show_7.length ) / 10 , 15, <164 106 30>, <164 106 30> ]

Show_if Storage_1.order_number > 0
  text [205, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_1.order_number]
Show_if Storage_2.order_number > 0
  text [205, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_2.order_number]
Show_if Storage_3.order_number > 0
  text [245, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_3.order_number]
Show_if Storage_4.order_number > 0
  text [245, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_4.order_number]
Show_if Storage_5.order_number > 0
  text [290, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_5.order_number]
Show_if Storage_6.order_number > 0
  text [290, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_6.order_number]
Show_if Storage_7.order_number > 0
  text [345, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_7.order_number]
Show_if Storage_8.order_number > 0
  text [345, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_8.order_number]
Show_if Storage_9.order_number > 0
  text [395, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_9.order_number]
Show_if Storage_10.order_number > 0
  text [395, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_10.order_number]
Show_if Storage_11.order_number > 0
  text [460, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_11.order_number]
Show_if Storage_12.order_number > 0
  text [455, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_12.order_number]
Show_if Storage_13.order_number > 0
  text [520, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_13.order_number]
Show_if Storage_14.order_number > 0
  text [515, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_14.order_number]
Show_if Storage_15.order_number > 0
  text [580, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_15.order_number]
Show_if Storage_16.order_number > 0
  text [580, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_16.order_number]
Show_if Storage_17.order_number > 0
  text [650, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_17.order_number]
Show_if Storage_18.order_number > 0
  text [650, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_18.order_number]
Show_if Storage_19.order_number > 0
  text [720, 190,  20, 12, <200 0 0>, <255 255 255>, = Storage_19.order_number]
Show_if Storage_20.order_number > 0
  text [720, 110,  20, 12, <200 0 0>, <255 255 255>, = Storage_20.order_number]
Show_if Storage_21.order_number > 0
  text [260, 265,  20, 12, <200 0 0>, <255 255 255>, = Storage_21.order_number]
Show_if Storage_22.order_number > 0
  text [260,  50,  20, 12, <200 0 0>, <255 255 255>, = Storage_22.order_number]
Show_if Storage_23.order_number > 0
  text [350, 265,  20, 12, <200 0 0>, <255 255 255>, = Storage_23.order_number]
Show_if Storage_24.order_number > 0
  text [350,  50,  20, 12, <200 0 0>, <255 255 255>, = Storage_24.order_number]
Show_if Storage_25.order_number > 0
  text [470, 265,  20, 12, <200 0 0>, <255 255 255>, = Storage_25.order_number]
Show_if Storage_26.order_number > 0
  text [470,  50,  20, 12, <200 0 0>, <255 255 255>, = Storage_26.order_number]
Show_if Storage_27.order_number > 0
  text [590, 265,  20, 12, <200 0 0>, <255 255 255>, = Storage_27.order_number]
Show_if Storage_28.order_number > 0
  text [590,  50,  20, 12, <200 0 0>, <255 255 255>, = Storage_28.order_number]
$End

$Frame  Frame_2
$Back_picture = <127 127 127>  fr3
Show
  text [600,  43, 40, 11, transparent, <0 0 0>, Measurement_position_1.length]
  text [700,  43, 40, 11, transparent, <0 0 0>, Measurement_position_1.diameter_b]
  text [700,  85, 40, 11, transparent, <0 0 0>, Measurement_position_1.diameter_e]

Show_if Measurement_position_1.length > 0
  rect [ 30, 280-Measurement_position_1.diameter_e/20.0,
			Measurement_position_1.length * 0.28, Measurement_position_1.diameter_e/10.0 + 1, <128 128 128>, <128 128 128> ]
  triang [ 30, 280-Measurement_position_1.diameter_b/20.0,
			  30, 280-Measurement_position_1.diameter_e/20.0,
			  30+Measurement_position_1.length * 0.28 - 1, 280-Measurement_position_1.diameter_e/20.0, <128 128 128>, <128 128 128> ]
  triang [ 30, 280+Measurement_position_1.diameter_b/20.0,
			  30, 280+Measurement_position_1.diameter_e/20.0,
			  30+Measurement_position_1.length * 0.28 - 1, 280+Measurement_position_1.diameter_e/20.0, <128 128 128>, <128 128 128> ]

Show_if Cutting_machine_1.pieces_quant > 0
  line [ 30+Edge_cleaning_distance * 0.28, 230, 30+Edge_cleaning_distance * 0.28, 330, <0 0 0>]
  rect [ 30+Edge_cleaning_distance * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Edge_cleaning_distance * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Edge_cleaning_distance]
  text [ Edge_cleaning_distance * 0.28, 340, 35, 11, transparent, <0 0 0>, > 'A0']

  rect [ 30+Edge_cleaning_distance * 0.28 + 1, 280-Cut_out_result_1.req_diam/20.0,
			Cut_out_result_1.length * 0.28 - 1, Cut_out_result_1.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_1.accum_length * 0.28, 230, 30+Cut_out_result_1.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_1.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_1.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_1.accum_length]
  text [ Cut_out_result_1.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A1']
  text [ Cut_out_result_1.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_1.length]
  text [ Cut_out_result_1.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_1.cubic_m]
  text [ Cut_out_result_1.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_1.storage_code]

Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 1
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 2
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 3
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 4
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 6
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 8
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 0 and Cut_out_result_1.pieces_quant == 9
  bitmap [ 10+(Edge_cleaning_distance + Cut_out_result_1.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 1
  rect [ 30+Cut_out_result_1.accum_length * 0.28 + 1, 280-Cut_out_result_2.req_diam/20.0,
			Cut_out_result_2.length * 0.28 - 1, Cut_out_result_2.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_2.accum_length * 0.28, 230, 30+Cut_out_result_2.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_2.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_2.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_2.accum_length]
  text [ Cut_out_result_2.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A2']
  text [ Cut_out_result_2.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_2.length]
  text [ Cut_out_result_2.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_2.cubic_m]
  text [ Cut_out_result_2.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_2.storage_code]

Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 1 and Cut_out_result_2.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_1.accum_length + Cut_out_result_2.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 2
  rect [ 30+Cut_out_result_2.accum_length * 0.28 + 1, 280-Cut_out_result_3.req_diam/20.0,
			Cut_out_result_3.length * 0.28 - 1, Cut_out_result_3.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_3.accum_length * 0.28, 230, 30+Cut_out_result_3.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_3.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_3.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_3.accum_length]
  text [ Cut_out_result_3.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A3']
  text [ Cut_out_result_3.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_3.length]
  text [ Cut_out_result_3.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_3.cubic_m]
  text [ Cut_out_result_3.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_3.storage_code]

Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 2 and Cut_out_result_3.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_2.accum_length + Cut_out_result_3.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 3
  rect [ 30+Cut_out_result_3.accum_length * 0.28 + 1, 280-Cut_out_result_4.req_diam/20.0,
			Cut_out_result_4.length * 0.28 - 1, Cut_out_result_4.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_4.accum_length * 0.28, 230, 30+Cut_out_result_4.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_4.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_4.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_4.accum_length]
  text [ Cut_out_result_4.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A4']
  text [ Cut_out_result_4.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_4.length]
  text [ Cut_out_result_4.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_4.cubic_m]
  text [ Cut_out_result_4.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_4.storage_code]

Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 3 and Cut_out_result_4.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_3.accum_length + Cut_out_result_4.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 4
  rect [ 30+Cut_out_result_4.accum_length * 0.28 + 1, 280-Cut_out_result_5.req_diam/20.0,
			Cut_out_result_5.length * 0.28 - 1, Cut_out_result_5.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_5.accum_length * 0.28, 230, 30+Cut_out_result_5.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_5.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_5.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_5.accum_length]
  text [ Cut_out_result_5.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A5']
  text [ Cut_out_result_5.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_5.length]
  text [ Cut_out_result_5.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_5.cubic_m]
  text [ Cut_out_result_5.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_5.storage_code]

Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 4 and Cut_out_result_5.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_4.accum_length + Cut_out_result_5.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 5
  rect [ 30+Cut_out_result_5.accum_length * 0.28 + 1, 280-Cut_out_result_6.req_diam/20.0,
			Cut_out_result_6.length * 0.28 - 1, Cut_out_result_6.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_6.accum_length * 0.28, 230, 30+Cut_out_result_6.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_6.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_6.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_6.accum_length]
  text [ Cut_out_result_6.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A6']
  text [ Cut_out_result_6.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_6.length]
  text [ Cut_out_result_6.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_6.cubic_m]
  text [ Cut_out_result_6.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_6.storage_code]

Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 5 and Cut_out_result_6.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_5.accum_length + Cut_out_result_6.length/2) * 0.28, 200, cut9, cut_m]

Show_if Cutting_machine_1.pieces_quant > 6
  rect [ 30+Cut_out_result_6.accum_length * 0.28 + 1, 280-Cut_out_result_7.req_diam/20.0,
			Cut_out_result_7.length * 0.28 - 1, Cut_out_result_7.req_diam/10.0 + 1, transparent, <255 0 0>]
  line [ 30+Cut_out_result_7.accum_length * 0.28, 230, 30+Cut_out_result_7.accum_length * 0.28, 330, <0 0 0>]
  rect [ 30+Cut_out_result_7.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>]
  text [ 30+Cut_out_result_7.accum_length * 0.28 - 20, 216, 40, 14, transparent, <0 0 0>, = Cut_out_result_7.accum_length]
  text [ Cut_out_result_7.accum_length * 0.28 - 25, 340, 60, 11, transparent, <0 0 0>, > 'A7']
  text [ Cut_out_result_7.accum_length * 0.28 - 25, 360, 60, 11, transparent, <0 0 0>, > Cut_out_result_7.length]
  text [ Cut_out_result_7.accum_length * 0.28 - 25, 380, 60, 11, transparent, <0 0 0>, > Cut_out_result_7.cubic_m]
  text [ Cut_out_result_7.accum_length * 0.28 - 25, 400, 60, 18, transparent, <0 0 0>, > Cut_out_result_7.storage_code]

Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 1
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut1, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 2
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut2, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 3
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut3, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 4
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut4, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 6
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut6, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 8
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut8, cut_m]
Show_if Cutting_machine_1.pieces_quant > 6 and Cut_out_result_7.pieces_quant == 9
  bitmap [ 10+(Cut_out_result_6.accum_length + Cut_out_result_7.length/2) * 0.28, 200, cut9, cut_m]

$End

$Frame  Frame_3
$Back_picture = <127 127 127> fr4
Show_if Cutting_machine_1.pieces_quant > 0 and Cutting_machine_1.cur_piece_number <> 1
  text [ 10, 106,  20, 11, transparent, <0 0 0>, < 'A1']
  text [ 40, 106,  90, 18, transparent, <0 0 0>, < Cut_out_result_1.customer_name]
  text [150, 106,  20, 11, transparent, <0 0 0>, = Cut_out_result_1.order_number]
  text [177, 106,  30, 11, transparent, <0 0 0>, = Cut_out_result_1.position_number]
  text [220, 106,  20, 11, transparent, <0 0 0>, = Cut_out_result_1.quality]
  text [250, 106,  25, 11, transparent, <0 0 0>, = Cut_out_result_1.class]
  text [280, 106,  40, 11, transparent, <0 0 0>, < Cut_out_result_1.length]
  text [340, 106,  30, 11, transparent, <0 0 0>, < Cut_out_result_1.width]
  text [400, 106,  30, 11, transparent, <0 0 0>, < Cut_out_result_1.height]
  text [470, 106,  45, 11, transparent, <0 0 0>, = Cut_out_result_1.cur_diam]
  text [523, 106,  50, 11, transparent, <0 0 0>, = Cut_out_result_1.req_diam]
  text [590, 106,  30, 11, transparent, <0 0 0>, = Cut_out_result_1.pieces_quant]
  text [650, 106,  50, 18, transparent, <0 0 0>, < Cut_out_result_1.storage_code]
  text [710, 106,  70, 11, transparent, <0 0 0>, < Cut_out_result_1.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 0 and Cutting_machine_1.cur_piece_number == 1
  text [ 10, 106,  20, 18, <0 0 222>, <255 255 255>, < 'A1']
  text [ 40, 106,  90, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.customer_name]
  text [150, 106,  20, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.order_number]
  text [177, 106,  30, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.position_number]
  text [220, 106,  20, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.quality]
  text [250, 106,  25, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.class]
  text [280, 106,  40, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.length]
  text [340, 106,  30, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.width]
  text [400, 106,  30, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.height]
  text [470, 106,  45, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.cur_diam]
  text [523, 106,  50, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.req_diam]
  text [590, 106,  30, 18,  <0 0 222>, <255 255 255>, = Cut_out_result_1.pieces_quant]
  text [650, 106,  50, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.storage_code]
  text [710, 106,  70, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.cubic_m]

  text [450, 277,  50, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.storage_code]
  text [400, 360,  90, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.utilization * 100]
  text [400, 317,  90, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.termin]
  text [600, 320,  90, 18,  <0 0 222>, <255 255 255>, > Cut_out_result_1.soll]
  text [600, 340,  90, 18,  <0 0 222>, <255 255 255>, > Cut_out_result_1.lst]
  text [650, 360,  90, 18,  <0 0 222>, <255 255 255>, < Cut_out_result_1.lst * 100.0 / Cut_out_result_1.soll]

Show_if Cutting_machine_1.pieces_quant > 1 and Cutting_machine_1.cur_piece_number <> 2
  text [ 10, 126,  20, 11, transparent, <0 0 0>, < 'A2']
  text [ 40, 126,  90, 18, transparent, <0 0 0>, < Cut_out_result_2.customer_name]
  text [150, 126,  20, 11, transparent, <0 0 0>, = Cut_out_result_2.order_number]
  text [177, 126,  30, 11, transparent, <0 0 0>, = Cut_out_result_2.position_number]
  text [220, 126,  20, 11, transparent, <0 0 0>, = Cut_out_result_2.quality]
  text [250, 126,  25, 11, transparent, <0 0 0>, = Cut_out_result_2.class]
  text [280, 126,  40, 11, transparent, <0 0 0>, < Cut_out_result_2.length]
  text [340, 126,  30, 11, transparent, <0 0 0>, < Cut_out_result_2.width]
  text [400, 126,  30, 11, transparent, <0 0 0>, < Cut_out_result_2.height]
  text [470, 126,  45, 11, transparent, <0 0 0>, = Cut_out_result_2.cur_diam]
  text [523, 126,  50, 11, transparent, <0 0 0>, = Cut_out_result_2.req_diam]
  text [590, 126,  30, 11, transparent, <0 0 0>, = Cut_out_result_2.pieces_quant]
  text [650, 126,  50, 18, transparent, <0 0 0>, < Cut_out_result_2.storage_code]
  text [710, 126,  70, 11, transparent, <0 0 0>, < Cut_out_result_2.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 1 and Cutting_machine_1.cur_piece_number == 2
  text [ 10, 126,  20, 18, <0 0 222>, <255 255 255>, < 'A2']
  text [ 40, 126,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.customer_name]
  text [150, 126,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.order_number]
  text [177, 126,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.position_number]
  text [220, 126,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.quality]
  text [250, 126,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.class]
  text [280, 126,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.length]
  text [340, 126,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.width]
  text [400, 126,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.height]
  text [470, 126,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.cur_diam]
  text [523, 126,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.req_diam]
  text [590, 126,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_2.pieces_quant]
  text [650, 126,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.storage_code]
  text [710, 126,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_2.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_2.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_2.lst * 100.0 / Cut_out_result_2.soll]


Show_if Cutting_machine_1.pieces_quant > 2 and Cutting_machine_1.cur_piece_number <> 3
  text [ 10, 146,  20, 11, transparent, <0 0 0>, < 'A3']
  text [ 40, 146,  90, 18, transparent, <0 0 0>, < Cut_out_result_3.customer_name]
  text [150, 146,  20, 11, transparent, <0 0 0>, = Cut_out_result_3.order_number]
  text [177, 146,  30, 11, transparent, <0 0 0>, = Cut_out_result_3.position_number]
  text [220, 146,  20, 11, transparent, <0 0 0>, = Cut_out_result_3.quality]
  text [250, 146,  25, 11, transparent, <0 0 0>, = Cut_out_result_3.class]
  text [280, 146,  40, 11, transparent, <0 0 0>, < Cut_out_result_3.length]
  text [340, 146,  30, 11, transparent, <0 0 0>, < Cut_out_result_3.width]
  text [400, 146,  30, 11, transparent, <0 0 0>, < Cut_out_result_3.height]
  text [470, 146,  45, 11, transparent, <0 0 0>, = Cut_out_result_3.cur_diam]
  text [523, 146,  50, 11, transparent, <0 0 0>, = Cut_out_result_3.req_diam]
  text [590, 146,  30, 11, transparent, <0 0 0>, = Cut_out_result_3.pieces_quant]
  text [650, 146,  50, 18, transparent, <0 0 0>, < Cut_out_result_3.storage_code]
  text [710, 146,  70, 11, transparent, <0 0 0>, < Cut_out_result_3.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 2 and Cutting_machine_1.cur_piece_number == 3
  text [ 10, 146,  20, 18, <0 0 222>, <255 255 255>, < 'A3']
  text [ 40, 146,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.customer_name]
  text [150, 146,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.order_number]
  text [177, 146,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.position_number]
  text [220, 146,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.quality]
  text [250, 146,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.class]
  text [280, 146,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.length]
  text [340, 146,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.width]
  text [400, 146,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.height]
  text [470, 146,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.cur_diam]
  text [523, 146,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.req_diam]
  text [590, 146,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_3.pieces_quant]
  text [650, 146,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.storage_code]
  text [710, 146,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_3.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_3.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_3.lst * 100.0 / Cut_out_result_3.soll]

Show_if Cutting_machine_1.pieces_quant > 3 and Cutting_machine_1.cur_piece_number <> 4
  text [ 10, 166,  20, 11, transparent, <0 0 0>, < 'A4']
  text [ 40, 166,  90, 18, transparent, <0 0 0>, < Cut_out_result_4.customer_name]
  text [150, 166,  20, 11, transparent, <0 0 0>, = Cut_out_result_4.order_number]
  text [177, 166,  30, 11, transparent, <0 0 0>, = Cut_out_result_4.position_number]
  text [220, 166,  20, 11, transparent, <0 0 0>, = Cut_out_result_4.quality]
  text [250, 166,  25, 11, transparent, <0 0 0>, = Cut_out_result_4.class]
  text [280, 166,  40, 11, transparent, <0 0 0>, < Cut_out_result_4.length]
  text [340, 166,  30, 11, transparent, <0 0 0>, < Cut_out_result_4.width]
  text [400, 166,  30, 11, transparent, <0 0 0>, < Cut_out_result_4.height]
  text [470, 166,  45, 11, transparent, <0 0 0>, = Cut_out_result_4.cur_diam]
  text [523, 166,  50, 11, transparent, <0 0 0>, = Cut_out_result_4.req_diam]
  text [590, 166,  30, 11, transparent, <0 0 0>, = Cut_out_result_4.pieces_quant]
  text [650, 166,  50, 18, transparent, <0 0 0>, < Cut_out_result_4.storage_code]
  text [710, 166,  70, 11, transparent, <0 0 0>, < Cut_out_result_4.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 3 and Cutting_machine_1.cur_piece_number == 4
  text [ 10, 166,  20, 18, <0 0 222>, <255 255 255>, < 'A4']
  text [ 40, 166,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.customer_name]
  text [150, 166,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.order_number]
  text [177, 166,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.position_number]
  text [220, 166,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.quality]
  text [250, 166,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.class]
  text [280, 166,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.length]
  text [340, 166,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.width]
  text [400, 166,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.height]
  text [470, 166,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.cur_diam]
  text [523, 166,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.req_diam]
  text [590, 166,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_4.pieces_quant]
  text [650, 166,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.storage_code]
  text [710, 166,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_4.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_4.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_4.lst * 100.0 / Cut_out_result_4.soll]

Show_if Cutting_machine_1.pieces_quant > 4 and Cutting_machine_1.cur_piece_number <> 5
  text [ 10, 186,  20, 11, transparent, <0 0 0>, < 'A5']
  text [ 40, 186,  90, 18, transparent, <0 0 0>, < Cut_out_result_5.customer_name]
  text [150, 186,  20, 11, transparent, <0 0 0>, = Cut_out_result_5.order_number]
  text [177, 186,  30, 11, transparent, <0 0 0>, = Cut_out_result_5.position_number]
  text [220, 186,  20, 11, transparent, <0 0 0>, = Cut_out_result_5.quality]
  text [250, 186,  25, 11, transparent, <0 0 0>, = Cut_out_result_5.class]
  text [280, 186,  40, 11, transparent, <0 0 0>, < Cut_out_result_5.length]
  text [340, 186,  30, 11, transparent, <0 0 0>, < Cut_out_result_5.width]
  text [400, 186,  30, 11, transparent, <0 0 0>, < Cut_out_result_5.height]
  text [470, 186,  45, 11, transparent, <0 0 0>, = Cut_out_result_5.cur_diam]
  text [523, 186,  50, 11, transparent, <0 0 0>, = Cut_out_result_5.req_diam]
  text [590, 186,  30, 11, transparent, <0 0 0>, = Cut_out_result_5.pieces_quant]
  text [650, 186,  50, 18, transparent, <0 0 0>, < Cut_out_result_5.storage_code]
  text [710, 186,  70, 11, transparent, <0 0 0>, < Cut_out_result_5.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 4 and Cutting_machine_1.cur_piece_number == 5
  text [ 10, 186,  20, 18, <0 0 222>, <255 255 255>, < 'A5']
  text [ 40, 186,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.customer_name]
  text [150, 186,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.order_number]
  text [177, 186,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.position_number]
  text [220, 186,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.quality]
  text [250, 186,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.class]
  text [280, 186,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.length]
  text [340, 186,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.width]
  text [400, 186,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.height]
  text [470, 186,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.cur_diam]
  text [523, 186,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.req_diam]
  text [590, 186,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_5.pieces_quant]
  text [650, 186,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.storage_code]
  text [710, 186,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_5.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_5.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_5.lst * 100.0 / Cut_out_result_5.soll]

Show_if Cutting_machine_1.pieces_quant > 5 and Cutting_machine_1.cur_piece_number <> 6
  text [ 10, 206,  20, 11, transparent, <0 0 0>, < 'A6']
  text [ 40, 206,  90, 18, transparent, <0 0 0>, < Cut_out_result_6.customer_name]
  text [150, 206,  20, 11, transparent, <0 0 0>, = Cut_out_result_6.order_number]
  text [177, 206,  30, 11, transparent, <0 0 0>, = Cut_out_result_6.position_number]
  text [220, 206,  20, 11, transparent, <0 0 0>, = Cut_out_result_6.quality]
  text [250, 206,  25, 11, transparent, <0 0 0>, = Cut_out_result_6.class]
  text [280, 206,  40, 11, transparent, <0 0 0>, < Cut_out_result_6.length]
  text [340, 206,  30, 11, transparent, <0 0 0>, < Cut_out_result_6.width]
  text [400, 206,  30, 11, transparent, <0 0 0>, < Cut_out_result_6.height]
  text [470, 206,  45, 11, transparent, <0 0 0>, = Cut_out_result_6.cur_diam]
  text [523, 206,  50, 11, transparent, <0 0 0>, = Cut_out_result_6.req_diam]
  text [590, 206,  30, 11, transparent, <0 0 0>, = Cut_out_result_6.pieces_quant]
  text [650, 206,  50, 18, transparent, <0 0 0>, < Cut_out_result_6.storage_code]
  text [710, 206,  70, 11, transparent, <0 0 0>, < Cut_out_result_6.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 5 and Cutting_machine_1.cur_piece_number == 6
  text [ 10, 206,  20, 18, <0 0 222>, <255 255 255>, < 'A6']
  text [ 40, 206,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.customer_name]
  text [150, 206,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.order_number]
  text [177, 206,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.position_number]
  text [220, 206,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.quality]
  text [250, 206,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.class]
  text [280, 206,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.length]
  text [340, 206,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.width]
  text [400, 206,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.height]
  text [470, 206,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.cur_diam]
  text [523, 206,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.req_diam]
  text [590, 206,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_6.pieces_quant]
  text [650, 206,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.storage_code]
  text [710, 206,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_6.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_6.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_6.lst * 100.0 / Cut_out_result_6.soll]

Show_if Cutting_machine_1.pieces_quant > 6 and Cutting_machine_1.cur_piece_number <> 7
  text [ 10, 226,  20, 11, transparent, <0 0 0>, < 'A7']
  text [ 40, 226,  90, 18, transparent, <0 0 0>, < Cut_out_result_7.customer_name]
  text [150, 226,  20, 11, transparent, <0 0 0>, = Cut_out_result_7.order_number]
  text [177, 226,  30, 11, transparent, <0 0 0>, = Cut_out_result_7.position_number]
  text [220, 226,  20, 11, transparent, <0 0 0>, = Cut_out_result_7.quality]
  text [250, 226,  25, 11, transparent, <0 0 0>, = Cut_out_result_7.class]
  text [280, 226,  40, 11, transparent, <0 0 0>, < Cut_out_result_7.length]
  text [340, 226,  30, 11, transparent, <0 0 0>, < Cut_out_result_7.width]
  text [400, 226,  30, 11, transparent, <0 0 0>, < Cut_out_result_7.height]
  text [470, 226,  45, 11, transparent, <0 0 0>, = Cut_out_result_7.cur_diam]
  text [523, 226,  50, 11, transparent, <0 0 0>, = Cut_out_result_7.req_diam]
  text [590, 226,  30, 11, transparent, <0 0 0>, = Cut_out_result_7.pieces_quant]
  text [650, 226,  50, 18, transparent, <0 0 0>, < Cut_out_result_7.storage_code]
  text [710, 226,  70, 11, transparent, <0 0 0>, < Cut_out_result_7.cubic_m]

Show_if Cutting_machine_1.pieces_quant > 6 and Cutting_machine_1.cur_piece_number == 7
  text [ 10, 226,  20, 18, <0 0 222>, <255 255 255>, < 'A7']
  text [ 40, 226,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.customer_name]
  text [150, 226,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.order_number]
  text [177, 226,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.position_number]
  text [220, 226,  20, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.quality]
  text [250, 226,  25, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.class]
  text [280, 226,  40, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.length]
  text [340, 226,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.width]
  text [400, 226,  30, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.height]
  text [470, 226,  45, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.cur_diam]
  text [523, 226,  50, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.req_diam]
  text [590, 226,  30, 18, <0 0 222>, <255 255 255>, = Cut_out_result_7.pieces_quant]
  text [650, 226,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.storage_code]
  text [710, 226,  70, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.cubic_m]

  text [450, 277,  50, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.storage_code]
  text [400, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.utilization * 100]
  text [400, 317,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.termin]
  text [600, 320,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_7.soll]
  text [600, 340,  90, 18, <0 0 222>, <255 255 255>, > Cut_out_result_7.lst]
  text [650, 360,  90, 18, <0 0 222>, <255 255 255>, < Cut_out_result_7.lst * 100.0 / Cut_out_result_7.soll]

Show_if Cutting_machine_1.cur_piece_number > 0
  text [270, 280,  30, 11, transparent, <0 0 0>, > Cutting_machine_1.brutto_length]
  text [270, 300,  30, 11, transparent, <0 0 0>, > Cutting_machine_1.netto_length]
  text [650, 280,  20, 11, transparent, <0 0 0>, < Cutting_machine_1.brutto_cubic_m]
  text [650, 300,  20, 11, transparent, <0 0 0>, < Cutting_machine_1.netto_cubic_m]
  text [500, 297,  30, 11, transparent, <0 0 0>, < Cutting_machine_1.netto_cubic_m / Cutting_machine_1.brutto_cubic_m * 100]
$End

  $Frame  Frame_4
$Back_picture = <127 127 127> fr5
Show
 text [100, 106,  40, 19, transparent, <0 0 0>, < Order_1.storage]
 text [150, 106,  34, 15, transparent, <0 0 0>, > Order_1.priority]
 text [200, 106,  15, 15, transparent, <0 0 0>, > Order_1.quality]
 text [240, 106,  50, 15, transparent, <0 0 0>, < Order_1.due_date]
 text [337, 106,  30, 15, transparent, <0 0 0>, > Order_1.length]
 text [386, 106,  30, 15, transparent, <0 0 0>, > Order_1.width]
 text [425, 106,  30, 15, transparent, <0 0 0>, > Order_1.height]
 text [470, 106,  40, 15, transparent, <0 0 0>, = Order_1.quantity]
 text [590, 106,  30, 15, transparent, <0 0 0>, = Order_1.class]
 text [630, 106,  30, 19, transparent, <0 0 0>, = Order_1.wood_kind]
 text [690, 106,  50, 15, transparent, <0 0 0>, > Order_1.volume]

 text [100, 126,  40, 19, transparent, <0 0 0>, < Order_2.storage]
 text [150, 126,  34, 15, transparent, <0 0 0>, > Order_2.priority]
 text [200, 126,  15, 15, transparent, <0 0 0>, > Order_2.quality]
 text [240, 126,  50, 15, transparent, <0 0 0>, < Order_2.due_date]
 text [337, 126,  30, 15, transparent, <0 0 0>, > Order_2.length]
 text [386, 126,  30, 15, transparent, <0 0 0>, > Order_2.width]
 text [425, 126,  30, 15, transparent, <0 0 0>, > Order_2.height]
 text [470, 126,  40, 15, transparent, <0 0 0>, = Order_2.quantity]
 text [590, 126,  30, 15, transparent, <0 0 0>, = Order_2.class]
 text [630, 126,  30, 19, transparent, <0 0 0>, = Order_2.wood_kind]
 text [690, 126,  50, 15, transparent, <0 0 0>, > Order_2.volume]

  text [100, 146,  40, 19, transparent, <0 0 0>, < Order_3.storage]
 text [150, 146,  34, 15, transparent, <0 0 0>, > Order_3.priority]
 text [200, 146,  15, 15, transparent, <0 0 0>, > Order_3.quality]
 text [240, 146,  50, 15, transparent, <0 0 0>, < Order_3.due_date]
 text [337, 146,  30, 15, transparent, <0 0 0>, > Order_3.length]
 text [386, 146,  30, 15, transparent, <0 0 0>, > Order_3.width]
 text [425, 146,  30, 15, transparent, <0 0 0>, > Order_3.height]
 text [470, 146,  40, 15, transparent, <0 0 0>, = Order_3.quantity]
 text [590, 146,  30, 15, transparent, <0 0 0>, = Order_3.class]
 text [630, 146,  30, 19, transparent, <0 0 0>, = Order_3.wood_kind]
 text [690, 146,  50, 15, transparent, <0 0 0>, > Order_3.volume]

 text [100, 166,  40, 19, transparent, <0 0 0>, < Order_4.storage]
 text [150, 166,  34, 15, transparent, <0 0 0>, > Order_4.priority]
 text [200, 166,  15, 15, transparent, <0 0 0>, > Order_4.quality]
 text [240, 166,  50, 15, transparent, <0 0 0>, < Order_4.due_date]
 text [337, 166,  30, 15, transparent, <0 0 0>, > Order_4.length]
 text [386, 166,  30, 15, transparent, <0 0 0>, > Order_4.width]
 text [425, 166,  30, 15, transparent, <0 0 0>, > Order_4.height]
 text [470, 166,  40, 15, transparent, <0 0 0>, = Order_4.quantity]
 text [590, 166,  30, 15, transparent, <0 0 0>, = Order_4.class]
 text [630, 166,  30, 19, transparent, <0 0 0>, = Order_4.wood_kind]
 text [690, 166,  50, 15, transparent, <0 0 0>, > Order_4.volume]

 text [100, 186,  40, 19, transparent, <0 0 0>, < Order_5.storage]
 text [150, 186,  34, 15, transparent, <0 0 0>, > Order_5.priority]
 text [200, 186,  15, 15, transparent, <0 0 0>, > Order_5.quality]
 text [240, 186,  50, 15, transparent, <0 0 0>, < Order_5.due_date]
 text [337, 186,  30, 15, transparent, <0 0 0>, > Order_5.length]
 text [386, 186,  30, 15, transparent, <0 0 0>, > Order_5.width]
 text [425, 186,  30, 15, transparent, <0 0 0>, > Order_5.height]
 text [470, 186,  40, 15, transparent, <0 0 0>, = Order_5.quantity]
 text [590, 186,  30, 15, transparent, <0 0 0>, = Order_5.class]
 text [630, 186,  30, 19, transparent, <0 0 0>, = Order_5.wood_kind]
 text [690, 186,  50, 15, transparent, <0 0 0>, > Order_5.volume]

 text [100, 206,  40, 19, transparent, <0 0 0>, < Order_6.storage]
 text [150, 206,  34, 15, transparent, <0 0 0>, > Order_6.priority]
 text [200, 206,  15, 15, transparent, <0 0 0>, > Order_6.quality]
 text [240, 206,  50, 15, transparent, <0 0 0>, < Order_6.due_date]
 text [337, 206,  30, 15, transparent, <0 0 0>, > Order_6.length]
 text [386, 206,  30, 15, transparent, <0 0 0>, > Order_6.width]
 text [425, 206,  30, 15, transparent, <0 0 0>, > Order_6.height]
 text [470, 206,  40, 15, transparent, <0 0 0>, = Order_6.quantity]
 text [590, 206,  30, 15, transparent, <0 0 0>, = Order_6.class]
 text [630, 206,  30, 19, transparent, <0 0 0>, = Order_6.wood_kind]
 text [690, 206,  50, 15, transparent, <0 0 0>, > Order_6.volume]

 text [100, 226,  40, 19, transparent, <0 0 0>, < Order_7.storage]
 text [150, 226,  34, 15, transparent, <0 0 0>, > Order_7.priority]
 text [200, 226,  15, 15, transparent, <0 0 0>, > Order_7.quality]
 text [240, 226,  50, 15, transparent, <0 0 0>, < Order_7.due_date]
 text [337, 226,  30, 15, transparent, <0 0 0>, > Order_7.length]
 text [386, 226,  30, 15, transparent, <0 0 0>, > Order_7.width]
 text [425, 226,  30, 15, transparent, <0 0 0>, > Order_7.height]
 text [470, 226,  40, 15, transparent, <0 0 0>, = Order_7.quantity]
 text [590, 226,  30, 15, transparent, <0 0 0>, = Order_7.class]
 text [630, 226,  30, 19, transparent, <0 0 0>, = Order_7.wood_kind]
 text [690, 226,  50, 15, transparent, <0 0 0>, > Order_7.volume]

 text [100, 246,  40, 19, transparent, <0 0 0>, < Order_8.storage]
 text [150, 246,  34, 15, transparent, <0 0 0>, > Order_8.priority]
 text [200, 246,  15, 15, transparent, <0 0 0>, > Order_8.quality]
 text [240, 246,  50, 15, transparent, <0 0 0>, < Order_8.due_date]
 text [337, 246,  30, 15, transparent, <0 0 0>, > Order_8.length]
 text [386, 246,  30, 15, transparent, <0 0 0>, > Order_8.width]
 text [425, 246,  30, 15, transparent, <0 0 0>, > Order_8.height]
 text [470, 246,  40, 15, transparent, <0 0 0>, = Order_8.quantity]
 text [590, 246,  30, 15, transparent, <0 0 0>, = Order_8.class]
 text [630, 246,  30, 19, transparent, <0 0 0>, = Order_8.wood_kind]
 text [690, 246,  50, 15, transparent, <0 0 0>, > Order_8.volume]

 text [100, 266,  40, 19, transparent, <0 0 0>, < Order_9.storage]
 text [150, 266,  34, 15, transparent, <0 0 0>, > Order_9.priority]
 text [200, 266,  15, 15, transparent, <0 0 0>, > Order_9.quality]
 text [240, 266,  50, 15, transparent, <0 0 0>, < Order_9.due_date]
 text [337, 266,  30, 15, transparent, <0 0 0>, > Order_9.length]
 text [386, 266,  30, 15, transparent, <0 0 0>, > Order_9.width]
 text [425, 266,  30, 15, transparent, <0 0 0>, > Order_9.height]
 text [470, 266,  40, 15, transparent, <0 0 0>, = Order_9.quantity]
 text [590, 266,  30, 15, transparent, <0 0 0>, = Order_9.class]
 text [630, 266,  30, 19, transparent, <0 0 0>, = Order_9.wood_kind]
 text [690, 266,  50, 15, transparent, <0 0 0>, > Order_9.volume]

 text [100, 286,  40, 19, transparent, <0 0 0>, < Order_10.storage]
 text [150, 286,  34, 15, transparent, <0 0 0>, > Order_10.priority]
 text [200, 286,  15, 15, transparent, <0 0 0>, > Order_10.quality]
 text [240, 286,  50, 15, transparent, <0 0 0>, < Order_10.due_date]
 text [337, 286,  30, 15, transparent, <0 0 0>, > Order_10.length]
 text [386, 286,  30, 15, transparent, <0 0 0>, > Order_10.width]
 text [425, 286,  30, 15, transparent, <0 0 0>, > Order_10.height]
 text [470, 286,  40, 15, transparent, <0 0 0>, = Order_10.quantity]
 text [590, 286,  30, 15, transparent, <0 0 0>, = Order_10.class]
 text [630, 286,  30, 19, transparent, <0 0 0>, = Order_10.wood_kind]
 text [690, 286,  50, 15, transparent, <0 0 0>, > Order_10.volume]

 text [100, 306,  40, 19, transparent, <0 0 0>, < Order_11.storage]
 text [150, 306,  34, 15, transparent, <0 0 0>, > Order_11.priority]
 text [200, 306,  15, 15, transparent, <0 0 0>, > Order_11.quality]
 text [240, 306,  50, 15, transparent, <0 0 0>, < Order_11.due_date]
 text [337, 306,  30, 15, transparent, <0 0 0>, > Order_11.length]
 text [386, 306,  30, 15, transparent, <0 0 0>, > Order_11.width]
 text [425, 306,  30, 15, transparent, <0 0 0>, > Order_11.height]
 text [470, 306,  40, 15, transparent, <0 0 0>, = Order_11.quantity]
 text [590, 306,  30, 15, transparent, <0 0 0>, = Order_11.class]
 text [630, 306,  30, 19, transparent, <0 0 0>, = Order_11.wood_kind]
 text [690, 306,  50, 15, transparent, <0 0 0>, > Order_11.volume]

 text [100, 326,  40, 19, transparent, <0 0 0>, < Order_12.storage]
 text [150, 326,  34, 15, transparent, <0 0 0>, > Order_12.priority]
 text [200, 326,  15, 15, transparent, <0 0 0>, > Order_12.quality]
 text [240, 326,  50, 15, transparent, <0 0 0>, < Order_12.due_date]
 text [337, 326,  30, 15, transparent, <0 0 0>, > Order_12.length]
 text [386, 326,  30, 15, transparent, <0 0 0>, > Order_12.width]
 text [425, 326,  30, 15, transparent, <0 0 0>, > Order_12.height]
 text [470, 326,  40, 15, transparent, <0 0 0>, = Order_12.quantity]
 text [590, 326,  30, 15, transparent, <0 0 0>, = Order_12.class]
 text [630, 326,  30, 19, transparent, <0 0 0>, = Order_12.wood_kind]
 text [690, 326,  50, 15, transparent, <0 0 0>, > Order_12.volume]

 text [100, 346,  40, 19, transparent, <0 0 0>, < Order_13.storage]
 text [150, 346,  34, 15, transparent, <0 0 0>, > Order_13.priority]
 text [200, 346,  15, 15, transparent, <0 0 0>, > Order_13.quality]
 text [240, 346,  50, 15, transparent, <0 0 0>, < Order_13.due_date]
 text [337, 346,  30, 15, transparent, <0 0 0>, > Order_13.length]
 text [386, 346,  30, 15, transparent, <0 0 0>, > Order_13.width]
 text [425, 346,  30, 15, transparent, <0 0 0>, > Order_13.height]
 text [470, 346,  40, 15, transparent, <0 0 0>, = Order_13.quantity]
 text [590, 346,  30, 15, transparent, <0 0 0>, = Order_13.class]
 text [630, 346,  30, 19, transparent, <0 0 0>, = Order_13.wood_kind]
 text [690, 346,  50, 15, transparent, <0 0 0>, > Order_13.volume]

 text [100, 366,  40, 19, transparent, <0 0 0>, < Order_14.storage]
 text [150, 366,  34, 15, transparent, <0 0 0>, > Order_14.priority]
 text [200, 366,  15, 15, transparent, <0 0 0>, > Order_14.quality]
 text [240, 366,  50, 15, transparent, <0 0 0>, < Order_14.due_date]
 text [337, 366,  30, 15, transparent, <0 0 0>, > Order_14.length]
 text [386, 366,  30, 15, transparent, <0 0 0>, > Order_14.width]
 text [425, 366,  30, 15, transparent, <0 0 0>, > Order_14.height]
 text [470, 366,  40, 15, transparent, <0 0 0>, = Order_14.quantity]
 text [590, 366,  30, 15, transparent, <0 0 0>, = Order_14.class]
 text [630, 366,  30, 19, transparent, <0 0 0>, = Order_14.wood_kind]
 text [690, 366,  50, 15, transparent, <0 0 0>, > Order_14.volume]

 text [100, 386,  40, 19, transparent, <0 0 0>, < Order_15.storage]
 text [150, 386,  34, 15, transparent, <0 0 0>, > Order_15.priority]
 text [200, 386,  15, 15, transparent, <0 0 0>, > Order_15.quality]
 text [240, 386,  50, 19, transparent, <0 0 0>, < Order_15.due_date]
 text [337, 386,  30, 15, transparent, <0 0 0>, > Order_15.length]
 text [386, 386,  30, 15, transparent, <0 0 0>, > Order_15.width]
 text [425, 386,  30, 15, transparent, <0 0 0>, > Order_15.height]
 text [470, 386,  40, 15, transparent, <0 0 0>, = Order_15.quantity]
 text [590, 386,  30, 15, transparent, <0 0 0>, = Order_15.class]
 text [630, 386,  30, 19, transparent, <0 0 0>, = Order_15.wood_kind]
 text [690, 386,  50, 15, transparent, <0 0 0>, > Order_15.volume]

 text [100, 406,  40, 19, transparent, <0 0 0>, < Order_16.storage]
 text [150, 406,  34, 15, transparent, <0 0 0>, > Order_16.priority]
 text [200, 406,  15, 15, transparent, <0 0 0>, > Order_16.quality]
 text [240, 406,  50, 19, transparent, <0 0 0>, < Order_16.due_date]
 text [337, 406,  30, 15, transparent, <0 0 0>, > Order_16.length]
 text [386, 406,  30, 15, transparent, <0 0 0>, > Order_16.width]
 text [425, 406,  30, 15, transparent, <0 0 0>, > Order_16.height]
 text [470, 406,  40, 15, transparent, <0 0 0>, = Order_16.quantity]
 text [590, 406,  30, 15, transparent, <0 0 0>, = Order_16.class]
 text [630, 406,  30, 19, transparent, <0 0 0>, = Order_16.wood_kind]
 text [690, 406,  50, 15, transparent, <0 0 0>, > Order_16.volume]


  Show_if Order_1.ready_quant == 0 or Order_1.ready_quant <> Order_1.quantity
 text  [530, 106,  40, 19, transparent, <0 0 0>, = Order_1.ready_quant]
Show_if Order_1.ready_quant <> 0 and Order_1.ready_quant >= Order_1.quantity
 text  [530, 106,  50, 20,  <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_2.ready_quant == 0 or Order_2.ready_quant <> Order_2.quantity
 text  [530, 126,  40, 19, transparent, <0 0 0>, = Order_2.ready_quant]
Show_if Order_2.ready_quant <> 0 and Order_2.ready_quant >= Order_2.quantity
 text  [530, 126,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_3.ready_quant == 0 or Order_3.ready_quant <> Order_3.quantity
 text  [530, 146,  40, 19, transparent, <0 0 0>, = Order_3.ready_quant]
Show_if Order_3.ready_quant <> 0 and Order_3.ready_quant >= Order_3.quantity
 text  [530, 146,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_4.ready_quant == 0 or Order_4.ready_quant <> Order_4.quantity
 text  [530, 166,  40, 19, transparent, <0 0 0>, = Order_4.ready_quant]
Show_if Order_4.ready_quant <> 0 and Order_4.ready_quant >= Order_4.quantity
 text  [530, 166,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_5.ready_quant == 0 or Order_5.ready_quant <> Order_5.quantity
  text [530, 186,  40, 19, transparent, <0 0 0>, = Order_5.ready_quant]
Show_if Order_5.ready_quant <> 0 and Order_5.ready_quant >= Order_5.quantity
 text  [530, 186,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_6.ready_quant == 0 or Order_6.ready_quant <> Order_6.quantity
 text  [530, 206,  40, 19, transparent, <0 0 0>, = Order_6.ready_quant]
Show_if Order_6.ready_quant <> 0 and Order_6.ready_quant >= Order_6.quantity
 text  [530, 206,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_7.ready_quant == 0 or Order_7.ready_quant <> Order_7.quantity
 text  [530, 226,  40, 19, transparent, <0 0 0>, = Order_7.ready_quant]
Show_if Order_7.ready_quant <> 0 and Order_7.ready_quant >= Order_7.quantity
 text  [530, 226,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_8.ready_quant == 0 or Order_8.ready_quant <> Order_8.quantity
 text  [530, 246,  40, 19, transparent, <0 0 0>, = Order_8.ready_quant]
Show_if Order_8.ready_quant <> 0 and Order_8.ready_quant >= Order_8.quantity
 text  [530, 246,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_9.ready_quant == 0 or Order_9.ready_quant <> Order_9.quantity
 text  [530, 266,  40, 19, transparent, <0 0 0>, = Order_9.ready_quant]
Show_if Order_9.ready_quant <> 0 and Order_9.ready_quant >= Order_9.quantity
 text  [530, 266,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_10.ready_quant == 0 or Order_10.ready_quant <> Order_10.quantity
  text [530, 286,  40, 19, transparent, <0 0 0>, = Order_10.ready_quant]
Show_if Order_10.ready_quant <> 0 and Order_10.ready_quant >= Order_10.quantity
 text  [530, 286,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_11.ready_quant == 0 or Order_11.ready_quant <> Order_11.quantity
 text  [530, 306,  40, 19, transparent, <0 0 0>, = Order_11.ready_quant]
Show_if Order_11.ready_quant <> 0 and Order_11.ready_quant >= Order_11.quantity
 text  [530, 306, 50, 20, <255 0 0>, <255 255 255> , = 'ready']
Show_if Order_12.ready_quant == 0 or Order_12.ready_quant <> Order_12.quantity
 text  [530, 326,  40, 19, transparent, <0 0 0>, = Order_12.ready_quant]
Show_if Order_12.ready_quant <> 0 and Order_12.ready_quant >= Order_12.quantity
 text  [530, 326,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_13.ready_quant == 0 or Order_13.ready_quant <> Order_13.quantity
  text [530, 346,  40, 19, transparent, <0 0 0>, = Order_13.ready_quant]
Show_if Order_13.ready_quant <> 0 and Order_13.ready_quant >= Order_13.quantity
text   [530, 346,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_14.ready_quant == 0 or Order_14.ready_quant <> Order_14.quantity
 text  [530, 366,  40, 19, transparent, <0 0 0>, = Order_14.ready_quant]
Show_if Order_14.ready_quant <> 0 and Order_14.ready_quant >= Order_14.quantity
 text  [530, 366, 50, 20, <255 0 0>, <255 255 255> , ='ready']
Show_if Order_15.ready_quant == 0 or Order_15.ready_quant <> Order_15.quantity
 text  [530, 386,  40, 19, transparent, <0 0 0>, = Order_15.ready_quant]
Show_if Order_15.ready_quant <> 0 and Order_15.ready_quant >= Order_15.quantity
 text  [530, 386,  50, 20, <255 0 0>, <255 255 255>, = 'ready']
Show_if Order_16.ready_quant == 0 or Order_16.ready_quant <> Order_16.quantity
 text  [530, 406,  40, 19, transparent, <0 0 0>, = Order_16.ready_quant]
Show_if Order_16.ready_quant <> 0 and Order_16.ready_quant >= Order_16.quantity
 text  [530, 406,  50, 20, <255 0 0>, <255 255 255>, = 'ready']    
$End    