require "csv"

class Movements
  attr_reader :expense_sum, :income_sum, :sum

  def initialize(path)
    @path = path
    @expense_sum = 0
    @income_sum = 0
    @file_csv = CSV.read(@path, headers: true)
    @expense_company = []
    @sum = {}
    @expense = @file_csv["Расход"]
    @income = @file_csv["Приход"]
    @description_opertion = @file_csv["Описание операции"]
  end

  def get_expense_sum
    @expense_sum = element_to_f(@expense).inject(:+)
  end

  def get_expense_company
    @description_opertion.each do |string|
      string = matching(string)
      @expense_company << string
    end
    sum_expense = @expense_company.zip(element_to_f(@expense)).select {|string| (string[1]).positive? }
    expense_for_company(sum_expense)
  end

  def get_income_sum
    @income_sum = element_to_f(@income).inject(:+)
  end

  private

  def matching(string)
    string = string.match(%r{\w+\s+\w*\\*\d*/*\\*(.+\s)\s\d{2}\.\d{2}\.})[1]
    string.gsub(/\s/, "")
  end

  def expense_for_company(sum_expense)
    @sum.default = 0
    sum_expense.each {|key, value| @sum[key] += value }
  end

  def element_to_f(object_variable)
    object_variable.map do |string|
      string = string.gsub(/,/, ".")
      string.to_f
    end
  end
end