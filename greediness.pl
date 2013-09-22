#greediness of * and +
use Modern::Perl 2011;
my $greedy = qr/(it.*good)/;
say "Greedy *";

say $1 if 'it was a good day' =~ $greedy;
say $1 if 'it was good, too good' =~ $greedy;

#make it less greedy by adding ?

my $less_greedy = qr/(it.*?good)/;
say "\nLessGreedy *";
say $1 if 'it was a good day' =~ $less_greedy;

say $1 if 'it was good, too good' =~ $less_greedy;

my $greedy1 = qr/(it.+good)/;
say "\nGreedy +";
say $1 if 'it was a good day' =~ $greedy1;

say $1 if 'it was good, too good' =~ $greedy1;

my $less_greedy1 = qr/(it.+?good)/;
say "\nLessGreedy +";

say $1 if 'it was a good day' =~ $less_greedy1;

say $1 if 'it was good, too good' =~ $less_greedy1;