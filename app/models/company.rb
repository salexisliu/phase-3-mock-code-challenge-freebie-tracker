class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(dev_id: dev.id, company_id: self.id, item_name: item_name, value: value)
  end

  def self.oldest_company
    # self.order(:founding_year).limit(1) #my answer
    # Company.all.order(:founding_year).first #solution
    self.all.min_by {|company| company.founding_year }
  end
end
