# Gauss-Seidel
Perl script to run and solve the linear equation with multidimentional Matrix by running the Perl Script.
I know that ussually MathLab has the solution 

Prerequisite: full understanding of Liebeman method and Gauss-Seidel

<b> History </b>

In abbreviated explanation, Liebeman created the method in linear equation to solve the matrix of multidimention
factor.
However The prince of Mathematician, Gauss'  and Seidel invented new way to solve the linear question that shorter and easier war 

<b> Prerequisite :</b>
- Any OS that able to running perl, for windows can gain it by installing the Strawberry perl
- Perl version 5.10 above

<b> How : </b>

1.Decide which equations that need to be solved,  any variables will do as long as the total of Variables will entail the same total of the equations
example, for the "x"  and "y"  variables that means we need two equations.

2.Decide how many iterations , by change this variable inside the script '$totaliterasi = 4' default is '4'.

3.Decide hoa many precisions of the decimal by change this "%.3f" (Default 3 before zero), if four 'zero's' 

below are the example of four variables with four equations.

1. create input file from the equations:
     
     10x-1y+2z+0v=6;
     -1x+11y-1z+3v=25;
     2x-1y+10z-1v=-11;
     0x+3y-1z+8v=15;

in file format would be like this:

    10,-1,2,0=6;0;
    -1,11,-1,3=25;0;
    2,-1,10,-1=-11;0;
    0,3,-1,8=15;0;

save it as any name you like, example <b>myinput.txt</b>

<b> Run </b>

just run the script <b> "perl PrinceOfMathv5.pl myinput.txt" </b>

<b> Output : </b>

example, of the output.
the value of the variable as result from iterations  (variables 1,2,3,4,....n  respectively)
'
 the value of the 1st variable 1.000

the value of the 2nd variable 2.000

the value of the 3rd variable -1.000

the value of the 4th variable 1.000 '

in this case the 'x'  will equal to "1", 'y' equal to "2", 'z' equal to "-1" and v equal to "1"

