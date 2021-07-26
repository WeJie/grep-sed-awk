# number.awk - test command-line parameters
BEGIN {
  for (x = 1; x < ARGC; ++x)
    if (ARGB[x] !~ /^[0-9]+$) {
      print ARGV[x], "is not an integer."
      exit 1
    }
}
