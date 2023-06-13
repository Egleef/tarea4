class ApiKey < ApplicationRecord
    before_create :generar_access_token
   
private 
def generar_access_token 
  begin self .access_token = SecureRandom .hex
     end while self .class.exists?( access_token: access_token)
   end 
end
