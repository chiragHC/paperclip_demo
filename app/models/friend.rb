class Friend < ActiveRecord::Base
  validates :name, presence: true
  validates :tag, presence: false
  enum tag: [:tag1,:tag2]
  validates :avatar,
            attachment_content_type: { content_type: 'application/pdf' },
            attachment_size: { less_than: 5.megabytes }

  has_attached_file :avatar, styles: {
                               thumb: '100x100>',
                               square: '200x200#',
                               medium: '300x300>'
                           }

  def avatar_url
    avatar.url(:medium)
  end
end
