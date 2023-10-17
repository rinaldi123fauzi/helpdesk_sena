namespace :pull_data_ldap do
    desc 'Respon Pull'
    task :set_respon => [:environment] do
      User.new.pullDataLdap
    end
end