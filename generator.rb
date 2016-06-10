require 'csv'
require './invoice.rb'

# p ARGV

case ARGV[0]
when 'add_time'
  InvoiceGenerator.add_time
when 'send_invoice'
  
end