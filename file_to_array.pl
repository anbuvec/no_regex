sub file_to_array #converting file to array line by line
{
	my $fn = shift;
	open FH,"<".$fn;
	my @wa = <FH>;
	close FH;
	return @wa;
}
