use Spreadsheet::ParseXLSX;

my $parser = Spreadsheet::ParseXLSX->new;
my $workbook = $parser->parse("input.xlsx");
my $op = "";
for my $worksheet ( $workbook->worksheets() ) { 
    my ( $row_min, $row_max ) = $worksheet->row_range();    
    my ( $col_min, $col_max ) = $worksheet->col_range();    
    for my $row ( ($row_min) .. $row_max ) {
        my $colv = 0;
        for my $col ( $col_min .. $col_max ) {            
            my $cell = $worksheet->get_cell( $row, $col );
            next unless $cell;
            my $cv = clean_lbl($cell->value());
            if($colv == 0){
                $op = "$op$cv";                
            }else{
                $op = "$op\t$cv";
            }
            $colv++; 
        }
        $op = "$op\n";
    }    
}

sub clean_lbl #function for removing line break from cell value if it is a big paragraph or html content
{
    my $s = shift;
    my @j = split("\n",$s);
    my $op = "";
    for my $j(@j){
        $op = "$op$j";
    }
    return rs($op);
}
