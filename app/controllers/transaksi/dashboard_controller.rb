class Transaksi::DashboardController < ApplicationController 
  def getAll

    if params[:tahun].present?
      @tahun = params[:tahun]
    else
      @tahun = Time.now.strftime('%Y')
    end

    # open
    @open1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '01')
    @open2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '02')
    @open3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '03')
    @open4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '04')
    @open5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '05')
    @open6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '06') 
    @open7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '07')
    @open8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '08')
    @open9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '09')
    @open10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '10')
    @open11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '11')
    @open12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, '12')

    # approval
    @approval1 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '01')
    @approval2 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '02')
    @approval3 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '03')
    @approval4 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '04')
    @approval5 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '05')
    @approval6 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '06') 
    @approval7 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '07')
    @approval8 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '08')
    @approval9 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '09')
    @approval10 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '10')
    @approval11 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '11')
    @approval12 = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2'], @tahun, '12')

    # overdue
    @overdue1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '01')
    @overdue2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '02')
    @overdue3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '03')
    @overdue4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '04')
    @overdue5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '05')
    @overdue6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '06') 
    @overdue7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '07')
    @overdue8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '08')
    @overdue9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '09')
    @overdue10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '10')
    @overdue11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '11')
    @overdue12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, '12')

    # inprogress
    @inprogress1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '01')
    @inprogress2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '02')
    @inprogress3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '03')
    @inprogress4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '04')
    @inprogress5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '05')
    @inprogress6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '06') 
    @inprogress7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '07')
    @inprogress8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '08')
    @inprogress9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '09')
    @inprogress10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '10')
    @inprogress11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '11')
    @inprogress12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, '12')

    # created
    @created1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '01')
    @created2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '02')
    @created3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '03')
    @created4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '04')
    @created5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '05')
    @created6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '06') 
    @created7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '07')
    @created8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '08')
    @created9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '09')
    @created10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '10')
    @created11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '11')
    @created12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, '12')

    # closed
    @closed1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '01')
    @closed2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '02')
    @closed3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '03')
    @closed4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '04')
    @closed5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '05')
    @closed6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '06') 
    @closed7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '07')
    @closed8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '08')
    @closed9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '09')
    @closed10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '10')
    @closed11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '11')
    @closed12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, '12')

    # rejected
    @rejected1 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '01')
    @rejected2 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '02')
    @rejected3 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '03')
    @rejected4 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '04')
    @rejected5 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '05')
    @rejected6 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '06') 
    @rejected7 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '07')
    @rejected8 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '08')
    @rejected9 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '09')
    @rejected10 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '10')
    @rejected11 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '11')
    @rejected12 = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, '12')

    render json: {
      data_dashboard:{
        closed:{
          bulan1:{
            jumlah: @closed1.count,
          },
          bulan2:{
            jumlah: @closed2.count,
          },
          bulan3:{
            jumlah: @closed3.count,
          },
          bulan4:{
            jumlah: @closed4.count,
          },
          bulan5:{
            jumlah: @closed5.count,
          },
          bulan6:{
            jumlah: @closed6.count,
          },
          bulan7:{
            jumlah: @closed7.count,
          },
          bulan8:{
            jumlah: @closed8.count,
          },
          bulan9:{
            jumlah: @closed9.count,
          },
          bulan10:{
            jumlah: @closed10.count,
          },
          bulan11:{
            jumlah: @closed11.count,
          },
          bulan12:{
            jumlah: @closed12.count,
          },
        },
        created:{
          bulan1:{
            jumlah: @created1.count,
          },
          bulan2:{
            jumlah: @created2.count,
          },
          bulan3:{
            jumlah: @created3.count,
          },
          bulan4:{
            jumlah: @created4.count,
          },
          bulan5:{
            jumlah: @created5.count,
          },
          bulan6:{
            jumlah: @created6.count,
          },
          bulan7:{
            jumlah: @created7.count,
          },
          bulan8:{
            jumlah: @created8.count,
          },
          bulan9:{
            jumlah: @created9.count,
          },
          bulan10:{
            jumlah: @created10.count,
          },
          bulan11:{
            jumlah: @created11.count,
          },
          bulan12:{
            jumlah: @created12.count,
          },
        },
        inprogress:{
          bulan1:{
            jumlah: @inprogress1.count,
          },
          bulan2:{
            jumlah: @inprogress2.count,
          },
          bulan3:{
            jumlah: @inprogress3.count,
          },
          bulan4:{
            jumlah: @inprogress4.count,
          },
          bulan5:{
            jumlah: @inprogress5.count,
          },
          bulan6:{
            jumlah: @inprogress6.count,
          },
          bulan7:{
            jumlah: @inprogress7.count,
          },
          bulan8:{
            jumlah: @inprogress8.count,
          },
          bulan9:{
            jumlah: @inprogress9.count,
          },
          bulan10:{
            jumlah: @inprogress10.count,
          },
          bulan11:{
            jumlah: @inprogress11.count,
          },
          bulan12:{
            jumlah: @inprogress12.count,
          },
        },
        overdue:{
          bulan1:{
            jumlah: @overdue1.count,
          },
          bulan2:{
            jumlah: @overdue2.count,
          },
          bulan3:{
            jumlah: @overdue3.count,
          },
          bulan4:{
            jumlah: @overdue4.count,
          },
          bulan5:{
            jumlah: @overdue5.count,
          },
          bulan6:{
            jumlah: @overdue6.count,
          },
          bulan7:{
            jumlah: @overdue7.count,
          },
          bulan8:{
            jumlah: @overdue8.count,
          },
          bulan9:{
            jumlah: @overdue9.count,
          },
          bulan10:{
            jumlah: @overdue10.count,
          },
          bulan11:{
            jumlah: @overdue11.count,
          },
          bulan12:{
            jumlah: @overdue12.count,
          },
        },
        approval:{
          bulan1:{
            jumlah: @approval1.count,
          },
          bulan2:{
            jumlah: @approval2.count,
          },
          bulan3:{
            jumlah: @approval3.count,
          },
          bulan4:{
            jumlah: @approval4.count,
          },
          bulan5:{
            jumlah: @approval5.count,
          },
          bulan6:{
            jumlah: @approval6.count,
          },
          bulan7:{
            jumlah: @approval7.count,
          },
          bulan8:{
            jumlah: @approval8.count,
          },
          bulan9:{
            jumlah: @approval9.count,
          },
          bulan10:{
            jumlah: @approval10.count,
          },
          bulan11:{
            jumlah: @approval11.count,
          },
          bulan12:{
            jumlah: @approval12.count,
          },
        },
        open:{
          bulan1:{
            jumlah: @open1.count,
          },
          bulan2:{
            jumlah: @open2.count,
          },
          bulan3:{
            jumlah: @open3.count,
          },
          bulan4:{
            jumlah: @open4.count,
          },
          bulan5:{
            jumlah: @open5.count,
          },
          bulan6:{
            jumlah: @open6.count,
          },
          bulan7:{
            jumlah: @open7.count,
          },
          bulan8:{
            jumlah: @open8.count,
          },
          bulan9:{
            jumlah: @open9.count,
          },
          bulan10:{
            jumlah: @open10.count,
          },
          bulan11:{
            jumlah: @open11.count,
          },
          bulan12:{
            jumlah: @open12.count,
          },
        },
        rejected:{
          bulan1:{
            jumlah: @rejected1.count,
          },
          bulan2:{
            jumlah: @rejected2.count,
          },
          bulan3:{
            jumlah: @rejected3.count,
          },
          bulan4:{
            jumlah: @rejected4.count,
          },
          bulan5:{
            jumlah: @rejected5.count,
          },
          bulan6:{
            jumlah: @rejected6.count,
          },
          bulan7:{
            jumlah: @rejected7.count,
          },
          bulan8:{
            jumlah: @rejected8.count,
          },
          bulan9:{
            jumlah: @rejected9.count,
          },
          bulan10:{
            jumlah: @rejected10.count,
          },
          bulan11:{
            jumlah: @rejected11.count,
          },
          bulan12:{
            jumlah: @rejected12.count,
          },
        },
      }
    }
  end
end