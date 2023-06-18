namespace :respon_ticket do
    desc 'Migrasi Data'
    task :set_respon => [:environment] do
      Area.new.set_data
    end
end