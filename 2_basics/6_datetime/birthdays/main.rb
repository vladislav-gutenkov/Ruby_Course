def collect_birthdays(year, month, day)
  birthday = Time.new(year, month, day)
  date_birthday = birthday
  age = 0
  while birthday <= Time.now
    if birthday.month == date_birthday.month && birthday.day == date_birthday.day
      puts "#{age} -  #{birthday.strftime('%d, %m, %Y - %A')}"
      age += 1
    end
    birthday += DAY_SECONDS
  end
end
DAY_SECONDS = 60 * 60 * 24

collect_birthdays(1998, 2, 19)
