# Installs Docker
#
# Usage:
#
#   include docker
class docker (
  $ensure   = 'present',
  $version = '1.8.2b'
) {

  package { "DockerToolbox-${version}":
    ensure   => $ensure,
    provider => 'apple',
    source   => "https://github.com/docker/toolbox/releases/download/v${version}/DockerToolbox-${version}.pkg"
  }
}
