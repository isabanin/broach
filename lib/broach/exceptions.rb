module Broach
  # Raised when something unexpected happened during communication with Campfire
  class APIError < RuntimeError
    attr_accessor :response
  end
  
  # Raised when the credentials were incorrect
  class AuthenticationError < APIError; end
  
  # Raised when the credentials were correct, but the resource could not be accessed
  class AuthorizationError < APIError; end
  
  # Raised when trying to access https:// when SSL is disabled and vice versa.
  class RedirectionError < APIError
    
    attr_accessor :destination
    
    def initialize(destination)
      @destination = destination
    end
    
    def message
      "Redirected to #{destination}."
    end
    
  end
end