#metacharacters

use Modern::Perl 2011;

# . matches any character except newline

say 'matches' if 'duck' =~ /d..k/;


#\w matches all alphanumeric characters and underscore

say 'matches' if 'duck' =~ /\w{4}/;


#\d matches digits

say 'found number' if 'xcvb8889yuis' =~ /\d{4}/;


#\s matches space - literal space, tab, newline, form-feed

say 'found space' if "\nsomething" =~ /\s/;


# negated forms
#\W matches anything but an alphanumeric character
#\D matches anything but a digit
#\S matches anything except a space character