use Modern::Perl 2011;


my $string = 'some address 987456789';

if ($string =~ /(?<phone>\d{9})/)
{
	say $+{phone};
}


#numbered captures

if ($string =~ /(\d{9})/)
{
	say $1;
}



my $name = 'mr john';

$name =~ s/mr (\w+)/mister $1/;

say $name;