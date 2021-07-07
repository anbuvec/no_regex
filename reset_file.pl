sub reset_file #clear the file if it is available else create the file
{
	my $s = shift;
	if (-e $s){
		open FR,">".$s;
		print FR "";
		close FR;
	}else{
		open FR,"<".$s;
		print FR "";
		close FR;
	}
}
