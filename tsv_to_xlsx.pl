use Excel::Writer::XLSX;

sub tsv_to_xlsx
{    
    my $inp = shift;
    my $out = shift;
    my $workbook = Excel::Writer::XLSX->new($out);
    my $worksheet = $workbook->add_worksheet("output");
    my $row = 0;
    my @a = file_to_array($inp);
    for $a(@a){
        my @rdata = split("\t",$a);
        write_xlsx($worksheet, $row, @rdata);
        $row++;
    }
}

sub write_xlsx #writing to xlsx
{
    my ($worksheet, $tem_row, @row) = @_;
    for(my $i = 0; $i < @row; ++$i){
        $worksheet->write( $tem_row, $i, $ele[$i]);
    }
}
