#greediness of * and +




say $1 if 'it was a good day' =~ $greedy;




my $less_greedy = qr/(it.*?good)/;



say $1 if 'it was good, too good' =~ $less_greedy;





say $1 if 'it was good, too good' =~ $greedy1;




say $1 if 'it was a good day' =~ $less_greedy1;

say $1 if 'it was good, too good' =~ $less_greedy1;