class MissingItem < ActiveRecord::Base
  belongs_to :missing_list
  def completed?
        	!completed_at.blank?
  end
end
