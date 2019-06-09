%module skycoin
%include "typemaps.i"

%{
	#define SWIG_FILE_WITH_INIT
	#include "libskycoin.h"
	#include "swig.h"
	#include "skyerrors.h"
%}
%include "/gopath/src/github.com/skycoin/libskycoin/lib/swig/common/common.i"
%include "/gopath/src/github.com/skycoin/libskycoin/lib/swig/static/static.i"

%include "swig.h"
/* Find the modified copy of libskycoin */
%include "libskycoin.h"
%include "structs.i"
%include "skyerrors.h"

