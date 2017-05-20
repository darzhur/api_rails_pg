class Company < ApplicationRecord
  has_many :jobs

  def delete_company
    #множество вариантов update см. здесь
    self.update(deleted: true)
  end
end
