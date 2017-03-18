dnl $Id$
dnl config.m4 for extension modsecurity

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(modsecurity, for modsecurity support,
dnl Make sure that the comment is aligned:
dnl [  --with-modsecurity             Include modsecurity support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(modsecurity, whether to enable modsecurity support,
dnl Make sure that the comment is aligned:
dnl [  --enable-modsecurity           Enable modsecurity support])

if test "$PHP_MODSECURITY" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-modsecurity -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/modsecurity.h"  # you most likely want to change this
  dnl if test -r $PHP_MODSECURITY/$SEARCH_FOR; then # path given as parameter
  dnl   MODSECURITY_DIR=$PHP_MODSECURITY
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for modsecurity files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       MODSECURITY_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$MODSECURITY_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the modsecurity distribution])
  dnl fi

  dnl # --with-modsecurity -> add include path
  dnl PHP_ADD_INCLUDE($MODSECURITY_DIR/include)

  dnl # --with-modsecurity -> check for lib and symbol presence
  dnl LIBNAME=modsecurity # you may want to change this
  dnl LIBSYMBOL=modsecurity # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $MODSECURITY_DIR/$PHP_LIBDIR, MODSECURITY_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_MODSECURITYLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong modsecurity lib version or lib not found])
  dnl ],[
  dnl   -L$MODSECURITY_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(MODSECURITY_SHARED_LIBADD)

  PHP_NEW_EXTENSION(modsecurity, modsecurity.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
