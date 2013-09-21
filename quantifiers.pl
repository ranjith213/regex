#regex quantifiers
use Modern::Perl;
use Test::More;

# the ? matches zero or one of the previous character

my $string = qr/do?r/;


like( 'dr', $string, "matches");like( 'door', $string, "doesn't match");

like( 'dor', $string, "matches");


# the + matches one or more of the previous character
$string = qr/do+r/;
like( 'door', $string, "matches");

like( 'dooor', $string, "matches");

like( 'dr', $string, "doesn't match");
like( 'dooooor', $string, "matches");


# the * matches zero or more of the previous character
$string = qr/do*r/;


like( 'door', $string, "matches");

like( 'dooor', $string, "matches");

like( 'dr', $string, "matches");

like( 'dooooor', $string, "matches");

done_testing();