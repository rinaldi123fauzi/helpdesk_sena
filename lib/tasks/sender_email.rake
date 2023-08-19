namespace :sender_email do
  desc 'Kirim Email'
  task :set_respon => [:environment] do
    SenderEmail.new.send
  end
end