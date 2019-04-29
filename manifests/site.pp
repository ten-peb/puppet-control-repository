########################################################################
## site.pp

# Set up a path for exec
Exec{
  path => '/bin:/usr/bin:/usr/sbin:/sbin/:/usr/local/bin'
}

# catchall to start the ball rolling with classification
hiera_include('classes')
