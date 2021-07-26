# phonelist.awk -- print name and phone number.
# input file -- name, company, street, city, state and zip, phone
# BEGIN { FS = "," }  # comma-delimited fields
# $5 !~ /MA/ { print $1 ", " $6 }
# $6 ~ /1?(-| )?\(?[0-9]+\)?( |-)?[0-9]+-[0-9]+/

BEGIN {
  FS = ", *"  # comma-delimited fields
  OFS = "\t"
}
{ print $1 ", " $6 }
END {
  print " "
  print NR, "records processed."
}
