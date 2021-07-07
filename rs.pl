sub rs #remove trailing and following spaces from a string only ascii 32
{
	my $str = shift;
	my $fs = " ";
	my $ls = " ";
	my $c = -1;
	my $l = length($str);
	while ($ls eq " ")
	{
		$c++;
		$ls = substr($str,$l-($c+1),1);
	}
	my $strn = substr($str,0,($l-$c));	
	$l = length($strn);
	$c = -1;
	while ($fs eq " ")
	{
		$c++;
		$fs = substr($strn,$c,1);
	}
	$strn = substr($strn,$c,($l-$c));
	return $strn;	
}
