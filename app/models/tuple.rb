class Tuple < ActiveRecord::Base
  belongs_to :channel
  belongs_to :trigger
  belongs_to :action
  belongs_to :actionFields
  belongs_to :user
end
