%% Creating Arrays
%
% James R. Haberland 19032003
% Enginerring Academy - 4th Period
% Ms. Harris
%
%% Learning 2
%
% Enter the following commands at the command line.  Comment on the results.
%
% vector3(15:end)
%
%   This command outputs the values from the array vector3, starting at the
%   15 value and going until the end.
%
% vector3(15:end-2)
%
%   This command outputs the values from the array vector3, starting at the
%   15 and going until the 21 value.
%
% matrix4(1,:)
%
%   This command output the values from the first row of matrix4.
%
% matrix4(2:4,3)
%
%   This command output the values from the second, third, and fourth row
%   in column 3.
%
%% Learning 3
%
% Enter the following commands at the command line.  Comment on the results.
%
% reshape(vector4,10,10)
%
%   This command vector4 into a 10x10 matrix, the first ten values were put
%   in the first column of the new matrix and the 2nd set of ten values in
%   the 2nd column...
%
% reshape(vector5,3,3)
%
%   This command did not work, because if it were to reshape vector5 into a
%   3x3 natrix there would be one extra value left over.
%
% reshape(matrix1,1,9)
%
%   This command took matrix1 which was a 3x3 and it turnd it into a 1x9
%   matrix
%
%% Learning 4
%
% Enter the following commands at the command line.  Comment on the results.
% 
% newmat1 = [matrix1(1:2,2:3); matrix3(3:4,2:3)]
%
%   This command takes the values from the first two rows and the 2nd and
%   3rd column from matrix1, this is the top 2x2 of the matrix. Then it
%   takes the values from the 3rd and 4th row, and the 2nd and 3rd column
%   and makes another 2x2 matrix and puts them ontop of eachother, to make
%   one large 4x2 matrix.
%
% newmat2 = [matrix1; matrix2]
%
%   This command does not work because, matrix1 and matrix2 have a
%   different number of columns.
%
% newmat3 = [matrix2; matrix3]
%
%   This command does not work because, matrix2 and matrix3 do not have the
%   same number of columns.
%
% newmat4 = [matrix2 matrix3]
%
%   This command takes matrix2 which is a 4x2 and puts it in front of
%   matrix3 which is a 4x4. That creates a new 4x6 matrix.
%
% newmat5 = [matrix3 matrix4]
%
%   This commandd takes matrix3 which is a 4x4 and matrix4 and puts matrix3
%   in front of matrix4 to create a new 4x8 matrix.
%
%% Learning 5
%
% Enter the command randArray = rand(4). Now, enter the following commands and comment on the results.
%
% diag1 = diag(randArray)
%
%   This command outputs the values in the diagonal of the matrix, starting
%   at the top right corner and ending at the bottom left.
%
% diag2 = diag(randArray,1)
%
%   This command outputs the values, of the diagonal when it is shifted up
%   one diagonal. The resulting matrix is a 3x1.
%
% diag3 = diag(randArray,-1)
%
%   This command outputs the values of the diagonal when it is shifed down
%   one place. The resulting matrix is a 3x1.
%
% diag4 = diag(randArray,2)
%
%   This command outputs the values when the diagonal, when it is shifted
%   up two spots. The resulting matris is a 2x1.
%
%% Learning 6
%
% Use the length and size functions on newmat1 through newmat5. 
% Try calling the size using both one and two output arguments. Answer the following:
%
% What information does the length function return for a multi-dimensional array versus a vector?
%
%   The length command take the size of the array, and it outputs the
%   largest value from the array. So the what ever the largest dimension of
%   the array is, is what it outputs.
%
% What information is output if the size function is called with a single output argument?
%
%   The size command out puts both the length and with of each arrays.
%
% What information is output if the size function is called with two output arguments?
%
%   The size command when it has two outputs, make the first output the
%   number of rows and the second output the number of columns.
%
%% Learning 7
%
% Enter array4d = rand(2,3,5,4) at the command prompt. Explain the results of entering each of the following commands.
%
% a4dlength = length(array4d)
%
%   This command output a length of 5 for the array, because it it the
%   larges dimension of the array.
%
% a4dsize = size(array4d)
%
%   This command output the all the dimensions of the array, not just the
%   maximum dimension
%
% [out1, out2] = size(array4d)
%
%   This outputs only two dimesnions, so it outputs the first dimension and
%   then it multiplies all the other ones together to get 60.
%
% [out1, out2, out3] = size(array4d)
%
%   This command outputs the first two dimensions of the arrays, and then
%   multiplies the last two together to get 30.
%
% [out1, out2, out3, out4] = size(array4d)
%
%   Thix command outputs every single dimension of the array, so none of
%   them are multiplied together.
%
% [out1, out2, out3, out4, out5] = size(array4d)
%
%   This comman output the sam info as the previous one, just the 5th
%   output was one, because there was no defined dimension, when the array
%   was created, so it is only one, unless it was created to have more.
%
%% Applying 8
%
% Enter the following commands at the command prompt.
%
% A = 3*ones(2,3);
%
% B = rand(4,3);
%
% C = diag(3:2:9) + diag(1:3,-1) + diag (-4:-2,1);
%
% D = linspace(10,20,11);
%
% E = rand(2,10);
%
%% Applying 9
%
% newmat10a = [B(1:2,:);A;B(3:4,:)]
%
% newmat10b = [C;E(1,1:4);E(1,5:8);E(1,9:10),E(2,1:2);E(2,3:6)]
%
% newmat10c = [D,transpose(B(:,1)),transpose(B(:,2)),transpose(B(:,3))]
%
% newmat10d = [B(1,:),C(1,:),E(1,1:5);B(2,:),C(2,:),E(1,6:10);B(3,:),C(3,:),E(2,1:5);B(4,:),C(4,:),E(2,6:10)]
%
% newmat10e = [D(1,10:11);transpose(E(:,4))]