class Bus < ApplicationRecord
    after_create :balanco
    
    
    def balanco
        self.power_balance = self.maximum_transmission_power + self.baud_rate 
        self.save
    end
    

end
