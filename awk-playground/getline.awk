# getline.awk -- test getline function
/^\.SH "?Name"?/ {
  getline # get next line
  print $1 # print $1 of new line.
}
