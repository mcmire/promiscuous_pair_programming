class Location < ActiveRecord::Base
  [ :raw_location,
    :lat,
    :lng,
    :city,
    :province,
    :state,
    :zip,
    :country,
    :country_code,
    :accuracy,
    :precision,
    :suggested_bounds,
    :provider
  ].each do |attr|
    validates attr, :presence => true
  end
  
  validate :accuracy_cannot_be_zero
  validate :precision_cannot_be_unknown
  
private
  # The error messages here aren't that meaningful, but it doesn't matter since aren't using them anyway
  def accuracy_cannot_be_zero
    self.errors.add(:accuracy, "cannot be zero") if accuracy == 0
  end
  def precision_cannot_be_unknown
    self.errors.add(:precision, "cannot be unknown") if precision == "unknown"
  end
end