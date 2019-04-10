
# Puppet Control Repo 

A Puppet Control Repo is used to control the behavior of the Puppet and
the r10k environment deployer.  Each branch in the Git repository represents
a particular environment at Tenna.  Only the branch(es) that represent what
a Puppet master is orchestrating should be deployed to a given Puppet master.


# Components

## hiera.conf

Hiera is used to classify Puppet "nodes" or the systems that Puppet is
orchestrating.  As such the behavior of Hiera is controlled by the contents
of /etc/hiera.conf on the global level and hiera.conf in individual
environments.

## manifests/site.pp

Provides a means to provide global behavior to Puppet that affects all
end nodes.

## Puppetfile

The Puppetfile provides a list of Puppet modules and their sources, branches
and or tags for r10k to retrieve and install from either Puppet Forge or
Git Hub.

