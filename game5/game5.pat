$Pattern �����������_����� : rule
$Parameters
  ����_����������: such_as �����_�����
  ��_�������_����������: integer
$Relevant_resources
  _�����: �����   Keep
  _�����: �����_t Keep
$Body
  _�����
    Choice from ���_�����(_�����.��������������) == ����_����������
    first
      Convert_rule �������������� += ��_�������_����������;
  _�����
    Choice NoCheck
    first
      Convert_rule ����� -= ��_�������_����������;
$End
