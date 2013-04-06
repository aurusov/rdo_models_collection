$Frame Frame1
$Back_picture = white 608 464

integer i,j;

integer bx = 214, by = 269; 													// �������� ����� ������� ���������

integer curY = by - 250 + 8, cSize = 15, contX = bx + 183 + 12, ordX = bx - 189 + 12, ordY = by - 250 + 8;

if(�����.��������� == ��������� or �����.��������� == ��������)
	bitmap (bx - 25, by + 50, sail_p, sail_m);
else
	bitmap (bx, by, load_p, load_m);
	
rect (bx + 186, by - 247, 180, 310, <180,180,180>, transparent);
rect (bx + 183, by - 250, 180, 310, <245,245,245>, black);						// ������ �������� �����������
text(bx + 183 + 15, curY, 160, 12, transparent, black, '���������� �����:');
curY+= 12 + 10;

rect (bx - 186, by - 247, 140, 420, <180,180,180>, transparent);
rect (bx - 189, by - 250, 140, 420, <245,245,245>, black);						// ������ �������
text(ordX, ordY, 160, 12, transparent, black, '������ �������:');
ordY+= 12 + 10;

rect (bx - 30, by - 247, 200, 60, <180,180,180>, transparent);
rect (bx - 33, by - 250, 200, 60, <245,245,245>, black);						// ��������� 1
text(bx - 21, by - 242, 163, 12, transparent, black, 'Cargo Loader 2000');
text(bx - 16, by - 242, 173, 12, transparent, black, > '1�2');
text(bx - 16, by - 226, 173, 12, transparent, black, > '1�3');
text(bx - 16, by - 210, 173, 12, transparent, black, > '1�4');

rect (bx - 30, by - 177, 200, 76, <180,180,180>, transparent);
rect (bx - 33, by - 180, 200, 76, <245,245,245>, black);						// ��������� 2
text(bx - 21, by - 172, 163, 12, transparent, black, 'Cargo Loader 3000');
text(bx - 16, by - 172, 173, 12, transparent, black, > '1�2');
text(bx - 16, by - 156, 173, 12, transparent, black, > '1�3');
text(bx - 16, by - 140, 173, 12, transparent, black, > '1�4');
text(bx - 16, by - 124, 173, 12, transparent, black, > '2�2');

rect (bx - 30, by - 91, 200, 111, <180,180,180>, transparent);					// ��� ��������� �����
rect (bx - 33, by - 94, 200, 111, <245,245,245>, black);	
text(bx - 18, by - 86, 173, 12, transparent, black, '��������� �����:');
text(bx - 22, by - 68, 173, 12, transparent, black, '��������� �����:');
text(bx - 28, by - 68, 183, 12, transparent, black, > �����.���������);
text(bx - 22, by - 52, 173, 12, transparent, black, '����� �����������:');
text(bx - 28, by - 52, 183, 12, transparent, black, > �����.�����_�����������);
text(bx - 22, by - 36, 173, 12, transparent, black, '����� �� �������:');
text(bx - 28, by - 36, 183, 12, transparent, black, > �����.�����);
text(bx - 22, by - 20, 173, 12, transparent, black, '������� �� �������:');
text(bx - 28, by - 20, 183, 12, transparent, black, > �����.�������_��_�������);
text(bx - 22, by -  4, 173, 12, transparent, black, '����� �� ���������:');
text(bx - 28, by -  4, 183, 12, transparent, black, > �����.�����_��_���������);

integer R, G, B;
integer boundary_flag = 1;

array<����������>A=Select(���������� : ����������.��������� != �������).getArray();
for ( i = 0; i < A.Size; i++ )
{// --------------------------------------- ������ �������� ����������� -----------------------------------------------
	R = A[i].cR; G = A[i].cG; B = A[i].cB;
	text(contX + A[i].�����*cSize + 4, curY + A[i].������*0.5*cSize - 6, 10, 12, transparent, black, > A[i].������);
	text(contX + A[i].�����*cSize + 12, curY + A[i].������*0.5*cSize - 6, 10, 12, transparent, black, > 'x');
	text(contX + A[i].�����*cSize + 20, curY + A[i].������*0.5*cSize - 6, 10, 12, transparent, black, > A[i].�����);
	text(contX + 4, curY + A[i].������*0.5*cSize - 6, 153, 12, transparent, black, > A[i].���������);
	
	rect (contX, curY, A[i].�����*cSize, A[i].������*cSize, <R, G, B>, black);
	rect (contX + 1, curY + 1, A[i].�����*cSize - 2, A[i].������*cSize - 2, <R, G, B>, black);
	for ( j = 0; j < A[i].�����*3 - 1; j++ )
		rect(contX + 5*(j + 1) - 1, curY + 1, 2, A[i].������*cSize - 2, transparent ,<R + 30, G + 30, B + 30>);
	curY+= 10 + A[i].������*cSize ;
}// -------------------------------------------------------------------------------------------------------------------

array<����������> Z=Select(���������� : ����������.��������� == ������� or ����������.��������� == ��������).getArray();
for ( i = 0; i < Z.Size; i++ )
{
	if (ordY + Z[i].������*cSize < by + 163)
	{//--------------------------------------------- ������ ������� --------------------------------------------------- 
		text(ordX + Z[i].�����*cSize + 4, ordY + Z[i].������*0.5*cSize - 6, 10, 12, transparent, black, > Z[i].������);
		text(ordX + Z[i].�����*cSize + 12, ordY + Z[i].������*0.5*cSize - 6, 10, 12, transparent, black, > 'x');
		text(ordX + Z[i].�����*cSize + 20, ordY + Z[i].������*0.5*cSize - 6, 10, 12, transparent, black, > Z[i].�����);
		if (Z[i].��������� != 0)
		{
			text(ordX + 4, ordY + Z[i].������*0.5*cSize - 6, 104, 12, transparent, black, > '�');
			text(ordX + 108, ordY + Z[i].������*0.5*cSize - 6, 10, 12, transparent, black, < Z[i].���������);
		}
		
		R = Z[i].cR; G = Z[i].cG; B = Z[i].cB;
		rect (ordX, ordY, Z[i].�����*cSize, Z[i].������*cSize, <R, G, B>, black);
		rect (ordX + 1, ordY + 1, Z[i].�����*cSize - 2, Z[i].������*cSize - 2, <R, G, B>, black);
		for ( j = 0; j < Z[i].�����*3 - 1; j++ )
			rect(ordX + 5*(j + 1) - 1, ordY + 1, 2, Z[i].������*cSize - 2, transparent ,<R + 30, G + 30, B + 30>);
		ordY+= 10 + Z[i].������*cSize ;
	}// ---------------------------------------------------------------------------------------------------------------
	else
		if (boundary_flag == 1)
		{//--------------------------------- ����� �� ������� ������ ������� ------------------------------------------
			rect (ordX + 15, by + 162, 2, 2, black, black);
			rect (ordX + 10, by + 162, 2, 2, black, black);
			rect (ordX +  5, by + 162, 2, 2, black, black);
			boundary_flag = 0;
		}// -----------------------------------------------------------------------------------------------------------
}
text (ordX +  100, by + 152, 20, 12, transparent, black, > i);

array<����������> P=Select(���������� : ����������.��������� == ��������).getArray();
for ( i = 0; i < P.Size; i++ )
{
		R = P[i].cR; G = P[i].cG; B = P[i].cB;
		if(P[i].��������� == ��������)
			if (P[i].��������� == 1)
			{//-------------------------------------- ��������� ���������� 1 ----------------------------------------------
				text(bx - 19, by - 243 + 16*(P[i].����� - 2), 153, 12, transparent, black, > 'o');
				text(bx - 14, by - 217, 100, 12, transparent, black, '��������:');
				rect (bx + 53, by - 218, P[i].�����*cSize, 15, <R, G, B>, black);
				rect (bx + 54, by - 217, P[i].�����*cSize - 2, 13, <R, G, B>, black);
				for ( j = 0; j < P[i].�����*3 - 1; j++ )
					rect(bx + 57 + 5*j, by - 217, 2, P[i].������*cSize - 2, transparent ,<R + 30, G + 30, B + 30>);
			}// -----------------------------------------------------------------------------------------------------------
			else
			{//-------------------------------------- ��������� ���������� 2 ----------------------------------------------
				text(bx - 19, by - 250 + 70 + 7 + 16*(P[i].����� - 2 + (P[i].������ - 1)*3), 153, 12, transparent, black, > 'o');
				text(bx - 14, by - 245 + 70 + 28 + 8, 100, 12, transparent, black, '��������:');
				rect (bx + 53, by - 133 - 0.5*P[i].������*cSize, P[i].�����*cSize, P[i].������*cSize, <R, G, B>, black);
				rect (bx + 54, by - 132 - 0.5*P[i].������*cSize, P[i].�����*cSize - 2, P[i].������*cSize - 2, <R, G, B>, black);
				for ( j = 0; j < P[i].�����*3 - 1; j++ )
					rect(bx + 57 + 5*j, by - 132 - 0.5*P[i].������*cSize, 2, P[i].������*cSize - 2, transparent ,<R + 30, G + 30, B + 30>);
			}// -----------------------------------------------------------------------------------------------------------
}

$End
