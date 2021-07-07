sub write_file #write to file with different mode can be specified when calling function
{
    my $con = shift;
    my $fname = shift;
    my $mode = shift;
    open FD,$mode.$fname;
    print FD $con;
    close FD;

}
