class InvoiceGenerator
  
  def self.add_time
    total_time = InvoiceGenerator.total_day_hours
    
    time_entry = [ARGV[1..3], total_time].flatten
    
    CSV.open("./hours.csv", "a") do |csv|
      csv << time_entry
    end
  end
  
  def self.total_day_hours
    start_time = Time.parse(ARGV[2])
    end_time = Time.parse(ARGV[3])

    ((end_time - start_time)/3600)
  end
end