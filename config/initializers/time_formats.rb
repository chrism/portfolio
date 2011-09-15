{ 
 :short_date  => "%x",              # 04/13/10
 :long_date   => "%B %d, %Y"    # Tuesaday April 13, 2010
}.each do |format_name, format_string|
  Time::DATE_FORMATS[format_name] = format_string
end