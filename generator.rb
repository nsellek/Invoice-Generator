require 'csv'
require "time"
require './invoice.rb'

case ARGV[0]
when 'add_time'
  InvoiceGenerator.add_time
when 'send_invoice'
  InvoiceGenerator.send_invoice
when 'view_invoice'
  InvoiceGenerator.view_invoice
end