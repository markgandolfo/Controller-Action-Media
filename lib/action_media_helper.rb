module ActionMediaHelper

  # If the controller/action.css file exists load it, 
  # 
  # Example
  # In your layout file (or whever you have your <head></head> tags) add
  # <%= controller_action_stylesheet %> 
  #
  # For :controller => "posts", :action => index it would generate
  # <%= stylesheet_link_tag '/posts/index.css' %>
  # Only if the file exists.
  #
  def controller_action_stylesheet
  	if( File.exists?(RAILS_ROOT + '/public/stylesheets/' + params['controller'] + '/' + params['action'] +'.css') )
  	  return stylesheet_link_tag( params['controller'] + '/' + params['action'] +'.css' )
  	end    
  end

  # If the controller/action.js file exists load it, 
  # 
  # Example
  # :controller => "posts", :action => index it would generate
  # <%= javascript_include_tag '/posts/index.js' %>
  #  
  def controller_action_javascript
    if( File.exists?(RAILS_ROOT + '/public/javascripts/' + params['controller'] + '/' + params['action'] +'.js') )
      return javascript_include_tag( params['controller'] + '/' + params['action'] +'.js' )
    end
  end

end
