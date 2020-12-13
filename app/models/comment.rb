class Comment < ApplicationRecord
    self.per_page = 15

    belongs_to :mission

    validates :name, presence: true, length: {maximum: 50}
    validates :team, presence: true
    validates :content, presence: true
    before_validation :strip_whitespace
    before_validation :force_names


    has_attached_file :avatar, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
    }

    has_attached_file :video, styles: { :medium => {
        :geometry => "640x480",
        :format => 'mp4'
        }, :thumb => ["100x100#", :jpg]}, :processors => [:transcoder]

    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :video, content_type: /\Avideo\/.*\z/


    def is_type_of_video?
        avatar.content_type =~ %r(video)
    end

    def is_type_of_image?
        avatar.content_type =~ %r(image)
    end

    private
    def strip_whitespace
        self.name = self.name.strip unless self.name.nil?
    end

    def force_names
        if self.name == "Kenny Kao"
            self.name = "Kenneth Kao"
        end

        if self.name == "Vina Nguyen-Ha"
            self.name = "Vina Nguyen Ha"
        end

        if self.name == "Diana Alcala-Davalos"
            self.name = "Diana Alcala Davalos"
        end

        if self.name == "Vanessa Zembrano"
            self.name = "Vanessa Zambrano"
        end

        if self.name == "Vanessa Zambranos"
            self.name = "Vanessa Zambrano"
        end
    end

end
