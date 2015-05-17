default[:ruby_build][:upgrade] = true

default[:ruby_version] = '2.2.2'
default[:rbenv][:user_installs] = [{
  user: default[:user],
  rubies: [default[:ruby_version]],
  global: default[:ruby_version],
  gems: {
    default[:ruby_version] => [
      { name: 'bundler' },
      { name: 'rails', version: '4.2.1' }
    ]
  }
}]