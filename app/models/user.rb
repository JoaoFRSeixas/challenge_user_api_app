class User < ApplicationRecord
  #this file is responsible to run some functions to my model, like validations.
    validates_uniqueness_of :email
end
