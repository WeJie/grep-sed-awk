# argv.awk - print command-line paarameters
BEGIN {
  for (x = 0; x < ARGC; ++x)
    print ARGV[x]
  print ARGC
}
