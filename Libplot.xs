#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include <plot.h>

#define LIBPLOTPERL_VERSION "1.6"

static int
not_here(s)
char *s;
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant(name, arg)
char *name;
int arg;
{
    errno = 0;
    switch (*name) {
    case 'A':
	break;
    case 'B':
	break;
    case 'C':
	break;
    case 'D':
	break;
    case 'E':
	break;
    case 'F':
	break;
    case 'G':
	break;
    case 'H':
	break;
    case 'I':
	break;
    case 'J':
	break;
    case 'K':
	break;
    case 'L':
	if (strEQ(name, "LIBPLOTPERL_VERSION"))
#ifdef LIBPLOTPERL_VERSION
/*	    return (LIBPLOTPERL_VERSION); */
#else
	    goto not_there;
#endif
	break;
    case 'M':
	break;
    case 'N':
	break;
    case 'O':
	break;
    case 'P':
	break;
    case 'Q':
	break;
    case 'R':
	break;
    case 'S':
	break;
    case 'T':
	break;
    case 'U':
	break;
    case 'V':
	break;
    case 'W':
	break;
    case 'X':
	break;
    case 'Y':
	break;
    case 'Z':
	break;
    case '_':
	if (strEQ(name, "__BEGIN_DECLS"))
#ifdef __BEGIN_DECLS
	    return __BEGIN_DECLS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "__END_DECLS"))
#ifdef __END_DECLS
	    return __END_DECLS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "___const"))
#ifdef ___const
	    return ___const;
#else
	    goto not_there;
#endif
	break;
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}


MODULE = Graphics::Libplot		PACKAGE = Graphics::Libplot


double
constant(name,arg)
	char *		name
	int		arg


#  int arc ___P ((int xc, int yc, int x0, int y0, int x1, int y1)); 
int
arc(xc,yc,x0,y0,x1,y1)
      int  xc
      int  yc
      int  x0
      int  y0
      int  x1
      int  y1


#  int box ___P ((int x0, int y0, int x1, int y1)); /* no op code, originally */ 
int
box(x0,y0,x1,y1)
      int  x0
      int  y0
      int  x1
      int  y1


#  int circle ___P ((int x, int y, int r)); 
int
circle(x,y,r)
      int  x
      int  y
      int  r


#  int closepl ___P ((void));	/* no op code, originally */ 
int
closepl()


#  int cont ___P ((int x, int y)); 
int
cont(x,y)
      int  x
      int  y


#  int erase ___P ((void)); 
int
erase()


#  int label ___P ((___const char *s)); 
int
label(s)
      char  *s


#  int line ___P ((int x0, int y0, int x1, int y1)); 
int
line(x0,y0,x1,y1)
      int  x0
      int  y0
      int  x1
      int  y1


#  int linemod ___P ((___const char *s)); 
int
linemod(s)
      char  *s


#  int move ___P ((int x, int y)); 
int
move(x,y)
      int  x
      int  y


#  int openpl ___P ((void));	/* no op code, originally */ 
int
openpl()


#  int point ___P ((int x, int y)); 
int
point(x,y)
      int  x
      int  y


#  int space ___P ((int x0, int y0, int x1, int y1)); 
int
space(x0,y0,x1,y1)
      int  x0
      int  y0
      int  x1
      int  y1


#  int alabel ___P ((int x_justify, int y_justify, ___const char *s)); 
int
alabel(x_justify,y_justify,s)
      int  x_justify
      int  y_justify
      char  *s


#  int arcrel ___P ((int dxc, int dyc, int dx0, int dy0, int dx1, int dy1)); 
int
arcrel(dxc,dyc,dx0,dy0,dx1,dy1)
      int  dxc
      int  dyc
      int  dx0
      int  dy0
      int  dx1
      int  dy1


#  int bgcolor ___P ((int red, int green, int blue)); 
int
bgcolor(red,green,blue)
      int  red
      int  green
      int  blue


#  int bgcolorname ___P ((___const char *name)); 
int
bgcolorname(name)
      char  *name


#  int boxrel ___P ((int dx0, int dy0, int dx1, int dy1)); 
int
boxrel(dx0,dy0,dx1,dy1)
      int  dx0
      int  dy0
      int  dx1
      int  dy1


#  int capmod ___P ((___const char *s)); 
int
capmod(s)
      char  *s


#  int circlerel ___P ((int dx, int dy, int r)); 
int
circlerel(dx,dy,r)
      int  dx
      int  dy
      int  r


#  int color ___P ((int red, int green, int blue)); 
int
color(red,green,blue)
      int  red
      int  green
      int  blue


#  int colorname ___P ((___const char *name)); 
int
colorname(name)
      char  *name


#  int contrel ___P ((int x, int y)); 
int
contrel(x,y)
      int  x
      int  y


#  int ellarc ___P ((int xc, int yc, int x0, int y0, int x1, int y1)); 
int
ellarc(xc,yc,x0,y0,x1,y1)
      int  xc
      int  yc
      int  x0
      int  y0
      int  x1
      int  y1


#  int ellarcrel ___P ((int dxc, int dyc, int dx0, int dy0, int dx1, int dy1)); 
int
ellarcrel(dxc,dyc,dx0,dy0,dx1,dy1)
      int  dxc
      int  dyc
      int  dx0
      int  dy0
      int  dx1
      int  dy1


#  int ellipse ___P ((int x, int y, int rx, int ry, int angle)); 
int
ellipse(x,y,rx,ry,angle)
      int  x
      int  y
      int  rx
      int  ry
      int  angle


#  int ellipserel ___P ((int dx, int dy, int rx, int ry, int angle)); 
int
ellipserel(dx,dy,rx,ry,angle)
      int  dx
      int  dy
      int  rx
      int  ry
      int  angle


#  int endpath ___P((void)); 
int
endpath()


#  int filltype ___P ((int level)); 
int
filltype(level)
      int  level


#  int fillcolor ___P ((int red, int green, int blue)); 
int
fillcolor(red,green,blue)
      int  red
      int  green
      int  blue


#  int fillcolorname ___P ((___const char *name)); 
int
fillcolorname(name)
      char  *name


#  int flushpl ___P ((void)); 
int
flushpl()


#  int fontname ___P ((___const char *s)); 
int
fontname(s)
      char  *s


#  int fontsize ___P ((int size)); 
int
fontsize(size)
      int  size


#  int havecap ___P ((___const char *s)); 
int
havecap(s)
      char  *s


#  int joinmod ___P ((___const char *s)); 
int
joinmod(s)
      char  *s


#  int labelwidth ___P ((___const char *s)); 
int
labelwidth(s)
      char  *s


#  int linerel ___P ((int dx0, int dy0, int dx1, int dy1)); 
int
linerel(dx0,dy0,dx1,dy1)
      int  dx0
      int  dy0
      int  dx1
      int  dy1


#  int linewidth ___P ((int size)); 
int
linewidth(size)
      int  size


#  int marker ___P ((int x, int y, int type, int size)); 
int
marker(x,y,type,size)
      int  x
      int  y
      int  type
      int  size


#  int markerrel ___P ((int dx, int dy, int type, int size)); 
int
markerrel(dx,dy,type,size)
      int  dx
      int  dy
      int  type
      int  size


#  int moverel ___P ((int x, int y)); 
int
moverel(x,y)
      int  x
      int  y


#  FILE* outfile ___P((FILE* newstream)); 
FILE*
outfile(newstream)
      FILE*  newstream


#  int pencolor ___P ((int red, int green, int blue)); 
int
pencolor(red,green,blue)
      int  red
      int  green
      int  blue


#  int pencolorname ___P ((___const char *name)); 
int
pencolorname(name)
      char  *name


#  int pointrel ___P ((int dx, int dy)); 
int
pointrel(dx,dy)
      int  dx
      int  dy


#  int restorestate ___P((void)); 
int
restorestate()


#  int savestate ___P((void)); 
int
savestate()


#  int space2 ___P ((int x0, int y0, int x1, int y1, int x2, int y2)); 
int
space2(x0,y0,x1,y1,x2,y2)
      int  x0
      int  y0
      int  x1
      int  y1
      int  x2
      int  y2


#  int textangle ___P ((int angle)); 
int
textangle(angle)
      int  angle


#  double ffontname ___P ((___const char *s)); 
double
ffontname(s)
      char  *s


#  double ffontsize ___P ((double size)); 
double
ffontsize(size)
      double  size


#  double flabelwidth ___P ((___const char *s)); 
double
flabelwidth(s)
      char  *s


#  double ftextangle ___P ((double angle)); 
double
ftextangle(angle)
      double  angle


#  int farc ___P ((double xc, double yc, double x0, double y0, double x1, double y1)); 
int
farc(xc,yc,x0,y0,x1,y1)
      double  xc
      double  yc
      double  x0
      double  y0
      double  x1
      double  y1


#  int farcrel ___P ((double dxc, double dyc, double dx0, double dy0, double dx1, double dy1)); 
int
farcrel(dxc,dyc,dx0,dy0,dx1,dy1)
      double  dxc
      double  dyc
      double  dx0
      double  dy0
      double  dx1
      double  dy1


#  int fbox ___P ((double x0, double y0, double x1, double y1)); 
int
fbox(x0,y0,x1,y1)
      double  x0
      double  y0
      double  x1
      double  y1


#  int fboxrel ___P ((double dx0, double dy0, double dx1, double dy1)); 
int
fboxrel(dx0,dy0,dx1,dy1)
      double  dx0
      double  dy0
      double  dx1
      double  dy1


#  int fcircle ___P ((double x, double y, double r)); 
int
fcircle(x,y,r)
      double  x
      double  y
      double  r


#  int fcirclerel ___P ((double dx, double dy, double r)); 
int
fcirclerel(dx,dy,r)
      double  dx
      double  dy
      double  r


#  int fcont ___P ((double x, double y)); 
int
fcont(x,y)
      double  x
      double  y


#  int fcontrel ___P ((double x, double y)); 
int
fcontrel(x,y)
      double  x
      double  y


#  int fellarc ___P ((double xc, double yc, double x0, double y0, double x1, double y1)); 
int
fellarc(xc,yc,x0,y0,x1,y1)
      double  xc
      double  yc
      double  x0
      double  y0
      double  x1
      double  y1


#  int fellarcrel ___P ((double dxc, double dyc, double dx0, double dy0, double dx1, double dy1)); 
int
fellarcrel(dxc,dyc,dx0,dy0,dx1,dy1)
      double  dxc
      double  dyc
      double  dx0
      double  dy0
      double  dx1
      double  dy1


#  int fellipse ___P ((double x, double y, double rx, double ry, double angle)); 
int
fellipse(x,y,rx,ry,angle)
      double  x
      double  y
      double  rx
      double  ry
      double  angle


#  int fellipserel ___P ((double dx, double dy, double rx, double ry, double angle)); 
int
fellipserel(dx,dy,rx,ry,angle)
      double  dx
      double  dy
      double  rx
      double  ry
      double  angle


#  int fline ___P ((double x0, double y0, double x1, double y1)); 
int
fline(x0,y0,x1,y1)
      double  x0
      double  y0
      double  x1
      double  y1


#  int flinerel ___P ((double dx0, double dy0, double dx1, double dy1)); 
int
flinerel(dx0,dy0,dx1,dy1)
      double  dx0
      double  dy0
      double  dx1
      double  dy1


#  int flinewidth ___P ((double size)); 
int
flinewidth(size)
      double  size


#  int fmarker ___P ((double x, double y, int type, double size)); 
int
fmarker(x,y,type,size)
      double  x
      double  y
      int  type
      double  size


#  int fmarkerrel ___P ((double dx, double dy, int type, double size)); 
int
fmarkerrel(dx,dy,type,size)
      double  dx
      double  dy
      int  type
      double  size


#  int fmove ___P ((double x, double y)); 
int
fmove(x,y)
      double  x
      double  y


#  int fmoverel ___P ((double x, double y)); 
int
fmoverel(x,y)
      double  x
      double  y


#  int fpoint ___P ((double x, double y)); 
int
fpoint(x,y)
      double  x
      double  y


#  int fpointrel ___P ((double dx, double dy)); 
int
fpointrel(dx,dy)
      double  dx
      double  dy


#  int fspace ___P ((double x0, double y0, double x1, double y1)); 
int
fspace(x0,y0,x1,y1)
      double  x0
      double  y0
      double  x1
      double  y1


#  int fspace2 ___P ((double x0, double y0, double x1, double y1, double x2, double y2)); 
int
fspace2(x0,y0,x1,y1,x2,y2)
      double  x0
      double  y0
      double  x1
      double  y1
      double  x2
      double  y2


#  int fconcat ___P ((double m0, double m1, double m2, double m3, double m4, double m5)); 
int
fconcat(m0,m1,m2,m3,m4,m5)
      double  m0
      double  m1
      double  m2
      double  m3
      double  m4
      double  m5


#  int frotate ___P ((double theta)); 
int
frotate(theta)
      double  theta


#  int fscale ___P ((double x, double y)); 
int
fscale(x,y)
      double  x
      double  y


#  int ftranslate ___P ((double x, double y)); 
int
ftranslate(x,y)
      double  x
      double  y


#  int newpl ___P((___const char *type, FILE *instream, FILE *outstream, FILE *errstream)); 
int
newpl(type,instream,outstream,errstream)
      char  *type
      FILE  *instream
      FILE  *outstream
      FILE  *errstream


#  int selectpl ___P ((int handle)); 
int
selectpl(handle)
      int  handle


#  int deletepl ___P ((int handle)); 
int
deletepl(handle)
      int  handle


#  int parampl ___P ((___const char *parameter, char *value)); 
int
parampl(parameter,value)
      char  *parameter
      char  *value


