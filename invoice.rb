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
      
    end
    
    def view_invoice
      CSV.foreach("./hours.csv") do |row|
        row.each do |item|
          print item + " "
        end
        puts
      end
    end
  end
end