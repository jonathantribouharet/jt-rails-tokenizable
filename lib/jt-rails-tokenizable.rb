module JT
	module Rails
		module Tokenizable
		end
	end
end

require 'tokenize'

module JT::Rails::Tokenizable

	class Railtie < Rails::Railtie
		initializer 'jt_rails_tokenizable.insert_into_active_record' do |app|
			ActiveSupport.on_load :active_record do
				ActiveRecord::Base.send(:include, JT::Rails::Tokenizable::Tokenize)
			end
		end

	end
end
