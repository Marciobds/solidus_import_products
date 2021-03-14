# frozen_string_literal: true
module SolidusImportProduct
	module Spree
		module PermissionSets
			module ProductManagementDecorator
			  	# Create an alias_method for the original activate! method as we need to execute it as it is
			  	# alias_method :super_activate!, :activate!

			  	# Extends the behaviour of the activate! method by calling the original method and adding an extra permission set for Spree::ProductImport
			  	def activate!
			    	super
			    	can :manage, Spree::ProductImport
			  	end
			
				::Spree::PermissionSets::ProductManagement.prepend self
			end
		end
	end
end