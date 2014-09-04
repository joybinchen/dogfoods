#!/usr/bin/env perl
use Digest::MD5;
$argc = @ARGV;
my $seed;
my $plaintext;
if ( $argc > 0 ) {
    $seed = @ARGV[0];
} else {
    $t = time;
    my $seedd5 = Digest::MD5->new;
    $seed = $seedd5->md5_base64($t);
}

if ( $argc > 1 ) {
    $plaintext = @ARGV[1];
} else {
    $plaintext = <STDIN>;
    $plaintext =~ s/[\r\n]//g; 
}
print crypt($plaintext, q($1$) . $seed),"\n"; 

