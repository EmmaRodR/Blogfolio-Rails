class Post < ApplicationRecord
    extend FriendlyId

    before_save :update_slug
    before_validation :update_slug, on: [:create, :update]


    friendly_id :title, use: :slugged

    has_rich_text :content

    validates :title, presence: true, length: {maximum: 50}

    
    after_initialize :set_defaults, if: :new_record?
    
    enum :category, {
        generic: 0,
        skills: 1,
        work: 2,
        education: 3
    }

    private 



    def set_defaults
        self.published_at ||= Time.current
        self.category ||= :generic
    end

    def should_generate_new_friendly_id?
        title_changed? || slug.blank?
    end

    def update_slug
        self.slug = title.parameterize if self.slug.blank?
    end
  

end
