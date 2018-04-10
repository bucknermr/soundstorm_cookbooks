default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:soundstorm][:git_repository] = "https://github.com/bucknermr/soundstorm"
default[:soundstorm][:git_revision] = "master"
default[:soundstorm][:path] = "/opt/soundstorm"

default[:soundstorm][:rails_env] = "production"
default[:soundstorm][:log_to_stdout] = "true"

default[:soundstorm][:environment] = {
  "SECRET_KEY_BASE": node[:soundstorm][:secret_key_base],
  "DATABASE_URL": node[:soundstorm][:database_url],
  "RAILS_ENV": node[:soundstorm][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:soundstorm][:log_to_stdout]
}

default[:soundstorm][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
