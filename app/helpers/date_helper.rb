module DateHelper

  # formats a date to fit the following example: 'Sun, January 1, 2013'
  def format_date(d)
    d.to_datetime.strftime('%a, %B %d, %Y')
  end
end