def calculate_fixed_charges # вычисление фиксированных расходов
  OFFICE_RENT_CHARGE +
  TELEPHONY_CHARGE +
  INTERNET_ACCESS_CHARGE +
  ASSISTANT_SALARY +
  FINANCE_MANAGER_SALARY
end

def calculate_min_income_for_investments
  for income in MIN_INCOME..MAX_INCOME
    min_income = income
    income -= (income * MANAGER_PERCENT)
    income -= calculate_fixed_charges
    income -= (income * MAIN_TAX_PERCENT)
    if income >= MIN_INVESTMENTS_AMOUNT
      puts min_income
      break
    end
  end
end

MIN_INCOME = 200_000
MAX_INCOME = 900_000

OFFICE_RENT_CHARGE = 140_000
TELEPHONY_CHARGE = 12_000
INTERNET_ACCESS_CHARGE = 7200

ASSISTANT_SALARY = 45_000
FINANCE_MANAGER_SALARY = 90_000

MAIN_TAX_PERCENT = 0.24
MANAGER_PERCENT = 0.15

MIN_INVESTMENTS_AMOUNT = 100_000

def check_income_range(income) # проверка нижней и верхней границ
  if income < MIN_INCOME
    puts "Доход меньше нижней границы"
    false
  elsif income > MAX_INCOME
    puts "Доход выше верхней границы"
    false
  else
    true
  end
end

loop do
  calculate_min_income_for_investments
  puts "Введите сумму доходов компании за месяц (от 200 до 900 тысяч рублей): "
  income = gets.to_i
  next unless check_income_range(income) # вызов функции, если выдаст true то продолжится цикл, если нет начнется заново

  manager_salary = income * MANAGER_PERCENT # вычисление зп менеджера
  pure_income = income - manager_salary - calculate_fixed_charges # остаток дохода после выплаты зп и фиксированных расходов
  tax_amount = MAIN_TAX_PERCENT * pure_income # вычисление налогов
  pure_income_after_tax = pure_income - tax_amount # доход после выплаты налогов
  can_make_investments = pure_income_after_tax >= MIN_INVESTMENTS_AMOUNT # можем ли инвестировать
  puts "Зарплата менеджера: #{manager_salary}"
  puts "Общая сумма налогов: #{tax_amount.positive? ? tax_amount : 0}"
  puts "Компания может инвестировать: #{can_make_investments ? 'да' : 'нет'}"
  puts "Бюджет в минусе! Нужно срочно зарабатывать!" if pure_income.negative?
end
