/*
10 january 2018
witten by pouya mhb
DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.
*/

#include <iostream>

using namespace std;

void Menu();
int temp2, temp, i, j, matrix[100][100];  // size of array is 100 and array is 2D
int m;  // m*m

void Matrix()
{
	cout << "Plz enter matrix m*m : ";
	cin >> m;
	cout << "-----------------------------" << endl;

	cout << "plz enter rows and coulmns : " << endl;
	for (i = 0; i < m; i++) // raws 
	{
		for (j = 0; j < m; j++) //coulmns
		{
			cout << "Enter Grade" << "[" << i + 1 << "]" << "[" << j + 1 << "]" << " :";
			/*
			(i,j) + 1 is just for showing the right grade
			and have no other value
			for example : grade [1][1]
			without i+1 it's like : grade [0][1] that is wrong in math !!
			beacuse in array start from 0 not 1!!!
			*/

			cin >> matrix[i][j];
			cout << endl;
		}
	}

	cout << "-----------------------------" << endl;
	// printing matrix 
	for (i = 0; i < m; i++)
	{
		for (j = 0; j < m; j++)
			cout << matrix[i][j] << "\t";
		cout << endl;
	}
}

void ChangeRow()
{
	// process replace row A with row B
	int A, B;
	cout << "\n Now choose row A and row B to change with each other ";
	cout << "\n 0 <= A,B <= m";
	cout << endl << "A: ";
	cin >> A;

	cout << "B: ";
	cin >> B;
	cout << endl;

	for (i = A; i <= B; i++)
	{
		temp = matrix[A][i];
		matrix[A][i] = matrix[B][i];
		matrix[B][i] = temp;
	}

	//print matrix after changing 
	cout << endl;
	for (i = 0; i < m; i++)
	{
		for (j = 0; j < m; j++)
			cout << matrix[i][j] << "\t";
		cout << endl;
	}
}

void ChangeColumn()
{
	// process replace col C with col D
	int C, D;
	cout << "\n Now choose column C and column D to change with each other ";
	cout << "\n 0 <= C,D <= m";
	cout << endl << "C: ";
	cin >> C;
	cout << "D: ";
	cin >> D;
	cout << endl;

	for (i = C; i <= D; i++)
	{
		temp2 = matrix[i][C];
		matrix[i][C] = matrix[i][D];
		matrix[i][D] = temp2;
	}

	//print matrix after changing 
	cout << endl;
	for (i = 0; i < m; i++)
	{
		for (j = 0; j < m; j++)
			cout << matrix[i][j] << "\t";
		cout << endl;
	}
}

int main()
{
	Menu();
	cin.get();
	cin.get();
	return 0;
}

void Menu()
{
	cout << endl;
	cout << "	 Menu 	     " << endl
		<< "=================" << endl
		<< " 1- Show Matrix  " << endl
		<< " 2- Change Rows  " << endl
		<< " 3- Change column" << endl;

	int  choice;
	cin >> choice;
	if (true)
	{
		switch (choice)
		{
		case 1: Matrix();
			break;
		case 2: ChangeRow();
			break;
		case 3: ChangeColumn();
			break;
		}
	}

	main();
}