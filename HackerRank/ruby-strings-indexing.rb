def serial_average(str) 
  sss = str[0,3]
  zzzz = str[4,5]
  xxxx = str[-5,5]

  average = ((zzzz.to_f + xxxx.to_f) / 2).round(2)

  return "#{sss}-#{'%.2f' % average}"
end


puts format serial_average('002-10.00-20.00')