require_relative "journey"

class JourneyLog
    
    attr_reader :journey_list
        def initialize
          @journey_list = [] #journeys
          @current_journey = Journey.new
        end
      
      def current_journey
        @current_journey.complete? ? @current_journey = Journey.new : @current_journey
      end
      #creates a new journey
      #this is how they describe current_journey: a private method #current_journey should return an incomplete journey or create a new journey



      #start
      #update the entry station

      #finish
      #update the exit station
      #add the journey to the @journeys array
      #erases the current journey
end

