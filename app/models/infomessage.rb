class Infomessage < ActiveRecord::Base
  mount_uploader :image, InfoimageUploader

  before_save :set_priority

  default_scope { order(:priority) }

private
  def set_priority
    if self.priority == nil
      if Infomessage.count > 0
        self.priority = Infomessage.first.priority - 1
      else
        self.priority = 0
      end
    end
  end

end
