namespace :ts do
  desc 'Start the Sphinx daemon'
  task start: :remote_environment do
    comment "Starting Sphinx"
    in_path fetch(:current_path) do
      command "RACK_ENV=#{fetch(:rails_env)} #{fetch(:bundle_bin)} exec rake ts:start"
    end
  end

  desc 'Stop the Sphinx daemon'
  task stop: :remote_environment do
    comment "Stopping Sphinx"
    in_path fetch(:current_path) do
      command "RACK_ENV=#{fetch(:rails_env)} #{fetch(:bundle_bin)} exec rake ts:stop"
    end
  end

  desc 'Restart the Sphinx daemon'
  task restart: :remote_environment do
    comment "Restarting Sphinx"
    in_path fetch(:current_path) do
      command "RACK_ENV=#{fetch(:rails_env)} #{fetch(:bundle_bin)} exec rake ts:restart"
    end
  end

  desc 'Delete and regenerate Sphinx files, restart the daemon'
  task rebuild: :remote_environment do
    comment "Rebuilding indices"
    in_path fetch(:current_path) do
      command "RACK_ENV=#{fetch(:rails_env)} #{fetch(:bundle_bin)} exec rake ts:rebuild"
    end
  end

  namespace :rt do
    desc 'Delete and regenerate real-time Sphinx files, restart the daemon'
    task rebuild: :remote_environment do
      comment "Rebuilding real-time indices"
      in_path fetch(:current_path) do
        command "RACK_ENV=#{fetch(:rails_env)} #{fetch(:bundle_bin)} exec rake ts:rt:rebuild"
      end
    end
  end
end
