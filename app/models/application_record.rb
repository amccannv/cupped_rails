class ApplicationRecord < ActiveRecord::Base
  class << self
    attr_accessor :nil_if_blank_fields
  end
  
  self.abstract_class = true
end
