# sort function -- sort numbers in ascending order
function sort(ARRAY, ELEMENTS,   temp, i, j) {
  for ( i = 2; i <= ELEMENTS; ++i)
    for (j = i; ARRAY[j-1] > ARRAY[j]; --j) {
      temp = ARRAY[j]
      ARRAY[j] = ARRAY[j-1]
      ARRAY[j-1] = temp
    }
  return
}
