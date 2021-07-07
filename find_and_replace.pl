sub replace #replace input string to output string from a string 
{
my $str=shift;
my $find=shift;
my $replace=shift;
my $pos=index($str,$find);
	while($pos != -1)
	{
	  substr($str,$pos,length($find),$replace);
	  $pos=index($str,$find,$pos+length($replace));
	}
	return $str;
}
