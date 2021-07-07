sub file_to_string #converting file to running string
{
	my $fn = shift;
	open FH,"<".$fn;
	my @wa = <FH>;
	close FH;
	return "@wa";
}
