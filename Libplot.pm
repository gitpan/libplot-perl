package Graphics::Libplot;

use strict;
use Carp;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS $AUTOLOAD 
  @INTLOWLEVEL @FLOATLOWLEVEL @DEVICECONTROL @MAPPING @ATTRIBUTES @GENERAL 
  @ALLBUTDRAW
);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
#@EXPORT = qw(
#	LIBPLOT_VERSION
#	__BEGIN_DECLS
#	__END_DECLS
#	___const
#);
$VERSION = '2.1.6.1';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
		croak "Your vendor has not defined Libplot macro $constname";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}


@DEVICECONTROL = qw(
newpl
selectpl
deletepl
parampl
closepl
openpl
flushpl
   );

@MAPPING = qw (
fconcat
frotate
fscale
ftranslate
	       );

@ATTRIBUTES = qw (
bgcolor
bgcolorname
linemod
capmod
color
colorname
filltype
fillcolor
fillcolorname
fontname
fontsize
havecap
joinmod
pencolor
pencolorname
linewidth
labelwidth	  
restorestate
savestate
textangle

);

@GENERAL = qw(
label
erase
outfile
endpath
     );

@INTLOWLEVEL = qw (
arc
box
circle
cont
line
move
point
space
alabel
arcrel
boxrel
circlerel
contrel
ellarc
ellarcrel
ellipse
ellipserel
linerel
marker
markerrel
moverel
pointrel
space2
);

@FLOATLOWLEVEL = qw (
ffontname
ffontsize
flabelwidth
ftextangle
farc
farcrel
fbox
fboxrel
fcircle
fcirclerel
fcont
fcontrel
fellarc
fellarcrel
fellipse
fellipserel
fline
flinerel
flinewidth
fmarker
fmarkerrel
fmove
fmoverel
fpoint
fpointrel
fspace
fspace2
);



@EXPORT_OK = ( 
@INTLOWLEVEL, @FLOATLOWLEVEL, @DEVICECONTROL, @MAPPING, @ATTRIBUTES, @GENERAL
 );
@EXPORT = ();
@ALLBUTDRAW=(@DEVICECONTROL, @MAPPING, @ATTRIBUTES, @GENERAL);

%EXPORT_TAGS = ('INTEGERLOW' => [@ALLBUTDRAW, @INTLOWLEVEL],
              'FLOATLOW' => [@ALLBUTDRAW, @FLOATLOWLEVEL]
		);
$EXPORT_TAGS{'ALL'} = [@ALLBUTDRAW,@FLOATLOWLEVEL,@INTLOWLEVEL
		      ];

bootstrap Graphics::Libplot $VERSION;

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is the stub of documentation for your module. You better edit it!

=head1 NAME

Graphics::Libplot - Perl extension for libplot plotting library

=head1 SYNOPSIS

  use Graphics::Libplot ':All';

=head1 DESCRIPTION

This module lets you create plots by calling the routines in the libplot
library.  The libplot library is included in the  plotutils package.
Wrappers for each published C function are present. So the section of 
the plotutils info pages  on programming in C should be your main reference.
There are a few possible confusions, which are noted below.

Some of the C routines require character constants rather than strings.
When using the equivalent perl function, you must wrap the character with
the 'ord' function. For instance,
 alabel(ord 'c', ord 'c', "some text");  ,
will write some centered text.

=head1 EXPORTING FUNCTIONS

None of the libplot functions is exported by default. If you do not 
import any functions 
you must prepend the module name to each function.  To call the openpl() 
function you would give,

Graphics::Libplot::openpl();


However, if you include the library with
 
 use Graphics::Libplot ':All'

then all of the functions will be exported, and you do not need to prepend the
module name.  In this case you need to be careful because there are many
function names which may collide with others in your program.

On the other hand you can use one of

 use Graphics::Libplot ':INTEGERLOW'
 use Graphics::Libplot ':FLOATLOW'

to get just integer or just floating point plotting.

Be aware that the interface is still under development so more names will
be added, and your scripts may need to be changed.

=head1 EXAMPLES

There are additional examples included in the source distribution.
This example draws a spiraling box pattern.

 use Graphics::Libplot ':ALL';
 $SIZE=100;
 parampl ("BITMAPSIZE", "700x700");
 $handle = newpl("X", stdin, stdout, stderr); # open xwindow display
 selectpl($handle); 
 openpl();
 fspace(-$SIZE,-$SIZE, $SIZE, $SIZE); # specify user coord system 
 pencolorname ("blue");
 fontname("HersheySerif");
 $s = 10;
 $f = 10;
 $sf = 1- .0012;
 for($i=1;$i<3000;$i++){
     fscale($sf,$sf);
     fbox(60+$s*sin($i/$f),
	  60+$s*sin($i/$f),
	  75-$s*cos($i/$f),
	  75-$s*cos($i/$f));
    frotate(1);
 }
 closepl();
 selectpl(0);
 deletepl($handle);

Substituting "ps" for "X" in the above example produces postscript
on the standard output stream.

=head1 


=head1 AUTHOR

John Lapeyre <lapeyre@physics.arizona.edu> wrote this
perl interface.

The libplot C library is developed by Robert Maier.

=head1 COPYRIGHT

libplot-perl is copyrighted by John Lapeyre and may
be distributed only under the terms of either
the Gnu General Public License, or of the perl
Artistic License.

=head1 SEE ALSO

perl(1).

=cut
