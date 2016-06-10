class InvoiceGenerator
  
  def self.add_time
    # p ARGV
    CSV.open("./hours.csv", "a") do |csv|
      csv << ARGV[1..3]
    end
  end
end