# Add tasks for managing systemd services.

# Usage example:
#   invoke :'systemctl:start[SERVICE-NAME]'

namespace :systemd do
  desc "Start a systemd service"
  task :start, [:service] do |t, args|
    command %[sudo systemctl start #{args[:service]}]
  end

  desc "Restart a systemd service"
  task :restart, [:service] do |t, args|
    command %[sudo systemctl restart #{args[:service]}]
  end

  desc "Stop a systemd service"
  task :stop, [:service] do |t, args|
    command %[sudo systemctl stop #{args[:service]}]
  end

  desc "Get status of a systemd service"
  task :status, [:service] do |t, args|
    command %[sudo systemctl status #{args[:service]}]
  end
end
