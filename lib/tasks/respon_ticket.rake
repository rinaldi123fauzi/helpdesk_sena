namespace :respon_ticket do
    desc 'Respon Tiket'
    task :set_respon => [:environment] do
      Ticket.new.set_overdue
    end
end