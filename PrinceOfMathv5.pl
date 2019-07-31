#!/usr/bin/perl -w
##########################################################################################################################################
#  Author   :  Ahmad Rifky Idrus 
#  DATE     : 2017-03-07
#  COMPANY  : PRIVATE
#  ABOUT    : Gauss Seidel
# Example:
#					10,-1,2,0=6;0;
#					-1,11,-1,3=25;0;
#					2,-1,10,-1=-11;0;
#					0,3,-1,8=15;0;
# Meaning 
#                  10x-1y+2z+0v=6  dengan initial value 0
#				   -1x+11y-1z+3v=25  dengan initial value 0
#					2x-1y+10z-1v=-11  dengan initial value 0
#					0x+3y-1z+8v=15  dengan initial value 0
##########################################################################################################################################


my   $inputlist=shift or die;  ### ini buat ngasih tahu filenya

my @hasil =  qw /no/ ;
$totaliterasi = 4 ;

$totaliterasi += 1;

my $precisionnya = "%.3f" ;  #### ini  buat akurasi decimalnya

open my $fh1, '<', $inputlist or die "unable to open file '$inputlist' for reading : $!";

while( my $Gaussku=<$fh1>) {

@ParsingGauss = split(/[\=|\;]/,$Gaussku) ;


$xyzdll{$ParsingGauss[0]} = $ParsingGauss[2]  ;
$Constanta{$ParsingGauss[0]} = $ParsingGauss[1];
push @Kumpulanxyzdll, $ParsingGauss[0] ;

}


$jumlahannya  = @Kumpulanxyzdll ;

print " jumlahan $jumlahannya  @Kumpulanxyzdll \n " ;

foreach $matrixxxx (keys %xyzdll) {
print " $matrixxxx  initial2nya $xyzdll{$matrixxxx} constantanya $Constanta{$matrixxxx}  \n" ;

}


# while  (($iterasiku=10)&&($toleransi))  {


  for (my $iterasiku = 0 ; $iterasiku < $totaliterasi; $iterasiku+=1)  {  ###iterasi

print " iterasi $iterasiku \n"; 
undef @hasil ;
#foreach $matrixx (keys %xyzdll) {
my $thedivider = 0 ;

 

foreach $matrixx (@Kumpulanxyzdll) {   #######  the Heart of Gauss-Siedel

#print " $matrixx  initial2nya $xyzdll{$matrixx} constantanya $Constanta{$matrixx}  \n" ;
print " process $matrixx    \n" ;
### ngedegeneratif 

@Aslisplit = split(",",$matrixx) ;

my $hasilbaru = 0 ;
$JumlahSplit = @Aslisplit ;

######  mining hasilnya ###########

for (my $saya=0 ; $saya<$JumlahSplit ;$saya++) {
#$xyzdll{$matrixx} = 





				if (($matrixx ne $Kumpulanxyzdll[$saya])) {

					$hasilbaru  = $hasilbaru + ($Aslisplit[$saya]*$xyzdll{$Kumpulanxyzdll[$saya]})/(-1*$Aslisplit[$thedivider]) ;
					  }
}

$xyzdll{$matrixx} = $hasilbaru + $Constanta{$matrixx}/$Aslisplit[$thedivider] ;
$xyzdll{$matrixx} = sprintf($precisionnya,$xyzdll{$matrixx}) ;
print " hasil $matrixx xyz = $xyzdll{$matrixx} constanta $Constanta{$matrixx} divider $Aslisplit[$thedivider] \n" ;
print " \n \n \n" ;

push @hasil, $xyzdll{$matrixx} ;

$thedivider++ ;

$thedivider =0  if ($thedivider> ($JumlahSplit-1)) ;

}

print " the divider $thedivider \n \n";

#print " next iterasi $iterasiku \n " ;

}  #######  the Heart of Gauss-Siedel
 
my $ke = 1 ;
print "the value of the variable as result from iterations  (variables 1,2,3,4,....n  respectively) \n" ;

foreach $yeah (@hasil) {

#print 'the value of the '.$ke.'st/nd/rd ';

print  " the value of the ".&hasilKe($ke)." variable " ;

print $yeah ;
print "\n" ;

$ke += 1;

}

sub hasilKe {

    my ( $text) = @_;

    # Format $text to $text_width somehow.
chomp $text;

$nilai =  $text.'th' ;

$nilai =  $text.'st'  if ($text == "1") ;


$nilai =  $text.'nd'   if ($text == "2") ;


$nilai =  $text.'rd'   if ($text == "3") ;

=pod

=cut
    return   $nilai;
}
