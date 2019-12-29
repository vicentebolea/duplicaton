AC_INIT([duplicaton], 
        [0.1.0],
        [vicente.bolea@gmail.com], 
        [], [])

AC_CHECK_PROG([ANSIBLE_CHECK], [ansible-playbook], [yes])
AC_CHECK_PROG([DUPLICITY_CHECK], [duplicity], [yes])

AS_IF([test x"$ANSIBLE_CHECK" != x"yes"], [AC_MSG_ERROR([Please install ansible before configuring.])])
AS_IF([test x"$DUPLICITY_CHECK" != x"yes"], [AC_MSG_ERROR([Please install duplicity before configuring.])])

AC_ARG_VAR([UUID], [UUID of the partition])

AC_CONFIG_FILES([edit-fstab.yml])
AC_CONFIG_FILES([run-media-backup.mount])
AC_OUTPUT
