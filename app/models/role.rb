class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        actors=[]
        self.auditions.map do |t|
            actors<<t.actor
        end
        actors
    end
    
    def locations
        locations=[]
        self.auditions.map do |t|
            locations<<t.location
        end
        locations
    end

    def lead
        if self.auditions.find do |t|
                t.hired===true
            end
        else "no actor has been hired for this role"
        end
    end

    def understudy
        hired=[]
        if self.auditions.filter do |t|
                if t.hired===true
                    hired<<t
                end
                return hired
            end
        else "no actor has been hired for this role"
        end
    end

end