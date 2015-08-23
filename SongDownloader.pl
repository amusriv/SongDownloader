use strict;
use warnings;

my $options = "youtube-dl -x --audio-format \"mp3\"";
my $choice  = 0;
print "How do you wish to download?\n[1] Use url\n[2] Use TODL.txt\n";

my $opt = <STDIN>;
chomp $opt;

if ( $opt eq 1 )

{
    print "Enter video url";
    my $url = <STDIN>;
    chomp $url;
    my $run = `$options $url`;    #don't use dots for concatenation in here
    print $run;
}

elsif ( $opt eq 2 ) {
    my $songfile = 'TODL.txt';
    open( my $fh, '<:encoding(UTF-8)', $songfile )
      or die "Could not open file '$songfile' $!";

    while ( my $url = <$fh> ) {
        chomp $url;

        #print "$row\n";

        #print "Enter youtube song url\n";

        my $run = `$options $url`;    #don't use dots for concatenation in here
        print $run;
    }
}