class InvoiceGenerator
  class << self
    def add_time
      total_time = total_day_hours

      time_entry = [ARGV[1..3], total_time].flatten

      CSV.open("./hours.csv", "a+") do |csv|
        csv << time_entry
      end
      puts "Time Added"
    end

    def total_day_hours
      start_time = Time.parse(ARGV[2])
      end_time = Time.parse(ARGV[3])

      ((end_time - start_time)/3600)
    end

    def send_invoice
      # need customerId
      # need invoiceNumber
      # need invoiceDate
      # need dueDate
      # need quantity
      # need amount

    end

    def view_invoice
      hours = []
      CSV.foreach("./hours.csv") do |row|
        hours << row.last.to_f
        row.each do |item|
          print item + " "
        end
        puts
      end
      puts "Total Hours: " + hours.inject(0, :+).to_s
    end
  end
end
