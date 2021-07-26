# block.awk - print first and last fields
# $1 = name; $NF = phone number
BEGIN { FS = "\n"; RS = ""; OFS = "\n"; ORS = "\n\n" }
{ print $1, $NF }
