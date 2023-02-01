module Streak
  class Contact < StreakObject
    def self.find(key)
      res = Streak.request(:get, "/v2/contacts/#{key}")
      convert_to_streak_object(res, Contact)
    end
  end
end
