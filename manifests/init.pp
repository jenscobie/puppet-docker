# Installs Docker
#
# Usage:
#
#   include docker
class docker (
  $ensure   = 'present',
  $version = '1.8.2b'
) {

  include boxen::config

  package { "DockerToolbox-${version}":
    ensure          => $ensure,
    provider        => 'pkgdmg',
    source          => "https://github.com/docker/toolbox/releases/download/v${version}/DockerToolbox-${version}.pkg",
    install_options => [
      '--appdir=/Applications',
      "--binarydir=${boxen::config::bindir}"
    ]
  }
}
