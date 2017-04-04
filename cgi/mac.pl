use Net::Ifconfig::Wrapper;
$Info = Net::Ifconfig::Wrapper::Ifconfig('list', '', '', '') or die $@;
while( ($key,$value) = each %{$Info} ) {
    if( exists $value->{'inet'} ) {
        $hostid = $value->{'ether'};
        $hostid =~ s/://g;
        last;
    }
}
print "$hostid\n"
