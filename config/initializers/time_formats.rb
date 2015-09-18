date_formats = {
  month_day_year: '%B %d, %Y' # September 11, 2015
}

Time::DATE_FORMATS.merge! date_formats
Date::DATE_FORMATS.merge! date_formats
