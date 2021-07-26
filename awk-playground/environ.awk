# environ.awk - priint environment variable
BEGIN {
  for(env in ENVIRON)
    print env "=" ENVIRON[env]
}
