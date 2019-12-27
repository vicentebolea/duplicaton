AC_INIT([system-backup], 
        [0.10.0],
        [vicente.bolea@gmail.com], 
        [], [])

AC_ARG_VAR([USER], [User of the session])
AC_ARG_VAR([LABEL], [Name of the partition label to where store backups])

test -z $LABEL && LABEL=backup

AC_CONFIG_FILES([system-backup.service])
AC_OUTPUT
