$Pattern �������_�������� : operation
$Relevant_resources
	_��������������: �������������� Keep NoChange
	_������        : �������        Keep Erase
	_����������    : �����������    Keep Keep
	_������� : ������� Keep NoChange
$Time = ������������_������������( _����������.������������_min, _����������.������������_max )
$Body
_��������������
	Choice from _��������������.����������_�_������� > 0
	Convert_begin
		����������_�_�������--;

_������
	Choice from _������.��������� == ������
	Convert_begin
		��������� = �����_�������;

_����������
	Choice from _����������.���������_����������� == �������� and _����������.���_������� == _������.���
	with_min( _����������.����������_����������� )
	Convert_begin
		���������_�����������  = �����;
	Convert_end
		���������_�����������  = ��������;
		����������_�����������++;
		
_�������
	Choice from _�������.������_1_r<200//��� ������� ����� �������� ��� �������? ��� ��������������?
	Convert_begin
		������_1_m =num - _�������.������_1_r/(R*2/num);
		������_2_m =num - _�������.������_2_r/(R*2/num);
		������_3_m =num - _�������.������_3_r/(R*2/num);
		�����=(_�������.������_1_m + _�������.������_2_m + _�������.������_3_m);
		�������=_�������.�����/3;
		������������=IMax(IMax(_�������.������_1_m,_�������.������_2_m),IMax(_�������.������_1_m,_�������.������_3_m));
$End
