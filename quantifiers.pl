#regex quantifiers

use Test::More;



my $string = qr/do?r/;


like( 'dr', $string, "matches");

like( 'dor', $string, "matches");






like( 'dooor', $string, "matches");

like( 'dr', $string, "doesn't match");







like( 'door', $string, "matches");

like( 'dooor', $string, "matches");

like( 'dr', $string, "matches");

like( 'dooooor', $string, "matches");

done_testing();