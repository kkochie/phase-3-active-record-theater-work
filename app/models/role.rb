class Role < ActiveRecord::Base
    has_many :auditions

    #returns an array of names from the actors associated with this role
    def actors
        actor_list = []
        self.auditions.each do |each_actor|
            actor_list << each_actor.actor
        end
        actor_list
    end

    #returns an array of locations from the auditions associated with this role
    def locations
        location_list = []
        self.auditions.each do |each_location|
            location_list << each_location.location
        end
        location_list
    end

    #returns the first instance of the audition that was hired for this role or returns a string "no actor has been hired for this role"
    def lead
        
        good_auditions = self.auditions.filter do |each_audition|
            each_audition.hired == true
        end

        if (good_auditions != 0 && good_auditions.count > 0)
            good_auditions.first
        else
            "no actor has been hired for this role"
        end
    end

    #returns the second instance of the audition that was hired for this role or returns a string "no actor has been hired for understudy for this role
    def understudy
        second_best = self.auditions.filter do |each_audition|
            each_audition.hired == true
        end

        if (second_best != 0 && second_best.count > 1)
            second_best.second
        else
            "no actor has been hired for understudy for this role"
        end
    end



end