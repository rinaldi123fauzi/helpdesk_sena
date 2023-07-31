class NumberingTicketService  < ApplicationService
  def call
    ticket = Ticket.where("extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ? ", Time.current.strftime('%Y'), Time.current.strftime('%m')).last
    sequence_number = "001"
    if Ticket.exists? and (Time.current.strftime('%m') == ticket.created_at.strftime("%m"))
      sequence_number = ticket.no_ticket[6..8]
      int_sequence_number = Integer(sequence_number, 10) + 1
      zero_length = 3 - int_sequence_number.to_s.size
      i = 0
      sequence_number = ""
      while i < zero_length  do
        sequence_number += "0"
        i +=1
      end
      sequence_number += int_sequence_number.to_s
    end
    @no_ticket = Time.current.strftime('%Y%m').to_s + sequence_number
    return @no_ticket
  end
end