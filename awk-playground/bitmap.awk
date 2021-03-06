BEGIN {
  FS = "," # comma-separated fields
  # assign width and height of bitmap
  WIDTH = 12
  HEIGHT = 12
  # loop to load entire arry with "O"
  for (i = 1; i <= WIDTH; ++i)
    for (j = 1; j <= HEIGHT; ++j)
      bitmap[i, j] = "O"
}
# read input of the form x,y.
{
  # assign "X" to that element of array
  bitmap[$1, $2] = "X"
}
# at end output multidimensional array
END {
  for (i = 1; i <= WIDTH; ++i) {
    for (j = 1; j <= HEIGHT; ++j)
      printf("%s", bitmap[i, j])
    # after each row, print newline
    printf("\n")
  }
}
