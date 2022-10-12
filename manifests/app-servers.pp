# Default configurations for nodes if node definition not found for them

node default {
  notify { 'checkpoint_1':
    message => "
      CHECKPOINT_1

      Applying Default Block
      Looks like there is no definition for the node.
    ",
  }
}

# This is node definition file
node 'puppetagent01.example.com' {
  notify { '***** AGENT01 Block ****': }
#  include tomcat # This will use default classes defined in ini.pp, makes code more clean
  include prefs
}

# This is node definition file
#node 'puppetagent02.example.com' {
#  notify { '***** AGENT02 Block ****': }
#  include java::install
#  include tomact::install
#  include tomact::service
#}
