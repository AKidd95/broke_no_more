class Expense < ApplicationRecord

  def total_expenses
    binding.pry
    Expense.where(id: user_id).sum('rent + insurance + transportation + education + food +
                                    other + leisure_activities + cultural_activities +
                                    holidays + eating_out + sport + beauty + various')
    return total_expenses
  end

  def income
    income = Income.new(amount)
  end

  def remaining_money
    income - total_expenses
    return remaining_money
  end

end
