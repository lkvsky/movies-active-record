class Address < ActiveRecord::Base
  set_table_name(:address)
  set_primary_key(:address_id)

  has_one :store
  has_many :customers
  has_one :city
  has_one :country, :through => :city
end