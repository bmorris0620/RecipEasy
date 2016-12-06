require 'httparty'

class Recipe
    include HTTParty

    #define API base URL and key for project
    ENV['FOOD2FORK_API_KEY'] = 'cd9872776e3e9b099a47c6ca92ea738c'
    base_uri 'http://food2fork.com/api'
    default_params key: ENV['FOOD2FORK_API_KEY']
    format :json

    #search method
    def self.for term        
        get('/search', query: { q: term }) ["recipes"]
    end

    #show method
    def self.find term
    	get('/get', query: { rId: term }) ["recipe"]
	end
	
	def self.browse term
		get('/browse', query: { q: term }) ["recipes"]
	end

    def self.faves term
        get('/get', query: { rId: term }) ["recipes"]
    end


end
