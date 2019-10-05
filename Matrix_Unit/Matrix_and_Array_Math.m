%% Matix & Array Math
%
% James R. Haberland 19032003
% Enginerring Academy - 4th Period
% Ms. Harris
%
%% Learning 2
%
% Enter the following commands at the command line.  Be able to correctly interpret the output.
%
% vector1 + vector2
%
%   This command does element-by-element addition for each value in the 1x8
%   array
%
% vector1 - vector2
%
%   This command does element-by-element subtraction for each value in which, each element is
%   vector1 is subtracted by the corresponding element in vector2.
%
% vector1 * vector2
%
%   This command has an error, because the inner dimensions of the two
%   arrays are not the same.
%
% vector1 .* vector2
%
%   This command does element-by-element multipliction for each element in
%   the array
%
%% Learning 3
%
% Enter the following commands at the command line.  Be able to correctly interpret the output.
%
% vector7 + vector8
%
%   This command does not work, because one array is a 1x5 and the other is
%   a 1x6. Arrays must have the same diemensions to do element-by-element
%   operations.
%
% vector7 * vector8
%
%   This command also does not work, because the inner dimesniosn of the
%   two arrays must the be same.
%
% vector7 .* vector8
%
%   This does not work because the two arrays, must have the same exact
%   dimensions to do element-by-element operations
%
% Rate .* Time
%
%   This command works, because both of the arrays have the same exact
%   dimensions
%
%% Learning 4
%
% Enter the following commands at the command line.  Be able to correctly interpret the output.
%
% matrix2 + matrix3
%
%   The dimensions of both the matrix are not the same, so the command di
%   not work.
%
% matrix2 * matrix3
%
%   The inner dimensions of the two matrices are not the same, so the
%   command did not work.
%
% matrix3 - matrix4
%
%   This command worked, because both of the matrices have the exact same
%   dimensions.
%
% matrix4^2
%
%   This command worked because matrix4 is a square matrix. You can only
%   square square matrices.
%
% matrix4.^2
%
%   This command outputs the same as the last, because the are both 4x4
%   matrices. But thi time, it just queared each element by itself, instead
%   of the whole matrix.
%
% matrix3 * array3
%
%   This command did not work because the two matrices that were being
%   multiplied together did not have the same inner dimensions.
%
%% Learning 5
%
% Make sure that the Workspace is clear and then create the following matrices.
%
% A = [9,8,7;6,5,4;3,2,1]
%
% B = [1;2;3]
%
% C = [4:6;1:3]
%
% D = [-1;1]
%
% E = [1,-2;3,5]
%
% F = [0,1;1,0]
%
%% Learning 6
%
% Enter the following commands at the command line.  Be able to correctly interpret
% the resulting values or explain the error messages.
%
% A/B
%
%   B needs to be a square matrix and A needs to be a column vector, but
%   they are not thus why it did not work.
%
% A\B
%
%   This command multiplied matrix B by the inverse of matix A. It only
%   worked because matrix A is a aquare matrix and matrix B is a column
%   vector.
%
% C/B
%
%   Thic command did not work because B is not a square matrix and C is not
%   a column vector.
%
% C\B
%
%   This command did not work because matrix C is not a square matrix, and
%   it needs to be for this calculation to be succesful.
%
% E/D
%
%   Thic command did not work because E is not a column vector and D is not
%   a square matrix.
%
% E\D
%
%   This command multiplied matrix D by the inverse of matix E. It only
%   worked because matrix E is a aquare matrix and matrix D is a column
%   vector.
%
% E/F
%
%   This command multiplied matrix E by the inverse of matix F. It worked
%   because both of them are square matrices.
%
% E\F
%
%   This command multiplied Matrix F by the inverse of matrix E. It worked
%   because both of them are square matrices.
%
% F/D
%
%   Thic command did not work because F is not a column vector and D is not
%   a square matrix.
%
% F\D
%
%   This command worked because F was a square matrix and D is a column
%   vector. This show output of matrix D being multiplied by the inverse of
%   matrix F.
%
%% Applying 9
%
%   Filename: Matix_and_Array_Math.m
% ------------------------------------------------------------------------
%   Orginazation: Hoover High School
%   Teacher: Ms. Harris
%
%   Start Date: Sept 19, 2019
%   Last Revised On: Sept 19, 2019
%
%   Purpose: To take users inputs to make two matrices and then use them to
%   do math.
%
%   Pseudocode:
%   1. Get user input
%   2. Generate two matrix using the users input
%   3. Add two matrices togerther and output certain info
%   4. Do matrix multiplication and output certain info
%   5. Do array multiplication and output certain info
%
%   Variables:
%       
%
%   Functions Called: (beyond built-in function)
%                       none
%
% ------------------------------------------------------------------------
%
% Input
n = input('How big do you want your square matrix to be? (Value must be greater than 3 and less than or equal to 25)');
if n>25
    disp('The number you entered is too big.')
    return
end
if n<=3
    disp('The number you entered is too small.')
    return
end
%
% Initial Calculations
PrimeNums = primes(4637);
OrigPrime = reshape(PrimeNums,25,25);
n2 = 10*n;
nsqr = n^2;
%
% Output Matrices
PrimeMat1 = OrigPrime(1:n^2);
PrimeMat2 = transpose(reshape(PrimeMat1,n,n));
PrimeMat2Txt = sprintf('This is the %2.0f square matrix created with %3.0f prime numbers in it.',n,nsqr);
disp(PrimeMat2Txt)
disp(PrimeMat2)
RandMatTxt = sprintf('This is the %2.0f square matrix created with %3.0f random numbers in it.',n,nsqr);
RandMat = randi(n2,n);
disp(RandMatTxt)
disp(RandMat)
disp('Press any key to continue')
pause;
%
%
% Matrix and Array Addition
disp('Matrix and Array Addition')
MatAdd = PrimeMat2+RandMat;
MatAddOut = MatAdd(1:3,1:4);
MatAddOutTxt = sprintf('This is first 3 rows and 4 columns from the matrix after adding the two matrices together.');
disp(MatAddOutTxt)
disp(MatAddOut)
pause(3)
%
% Average
MatAddAvg = mean(MatAdd,"all");
MatAddAvgTxt = sprintf('This is the average of all the values in the matrix that results from adding them together.');
disp(MatAddAvgTxt)
disp(MatAddAvg)
pause(3)
%
% Total
MatAddSum = sum(sum(MatAdd));
MatAddSumTxt = sprintf('This is the sum of all the values in the matrix that results from adding them together.');
disp(MatAddSumTxt)
disp(MatAddSum)
disp('Press any key to continue')
pause;
%
%
% Matrix Multiplication
disp('Matrix Multiplication')
MatProd = PrimeMat2*RandMat;
MatProdOut = MatProd(1:3,1:4);
MatProdOutTxt = sprintf('This is first 3 rows and 4 columns from the matrix after using matrix multiplication two matrices together.');
disp(MatProdOutTxt)
disp(MatProdOut)
pause(3)
%
% Matrix Multiplication Average
MatProdAvg = mean(MatProd,"all");
MatProdAvgTxt = sprintf('This is the average of all the values in the matrix that results from multiplying them together.');
disp(MatProdAvgTxt)
disp(MatProdAvg)
pause(3)
%
% Matrix Multiplication Total Sum
MatProdSum = sum(sum(MatProd));
MatProdSumTxt = sprintf('This is the sum of all the values in the matrix that results from adding them together.');
disp(MatProdSumTxt)
disp(MatProdSum)
disp('Press any key to continue')
pause;
%
%
% Array Multiplication
disp('Array Multiplication')
ArrProd = PrimeMat2.*RandMat;
ArrProdOut = ArrProd(1:3,1:4);
ArrProdOutTxt = sprintf('This is first 3 rows and 4 columns from the matrix after using array multiplication two matrices together.');
disp(ArrProdOutTxt)
disp(ArrProdOut)
pause(3)
%
% Array Multiplication Average
ArrProdAvg = mean(ArrProd,"all");
ArrProdAvgTxt = sprintf('This is the average of all the values in the matrix that results from multiplying them together.');
disp(ArrProdAvgTxt)
disp(ArrProdAvg)
pause(3)
%
% Array Nultiplication Sum
ArrProdSum = sum(sum(ArrProd));
ArrProdSumTxt = sprintf('This is the sum of all the values in the matrix that results from multiplying them together.');
disp(ArrProdSumTxt)
disp(ArrProdSum)