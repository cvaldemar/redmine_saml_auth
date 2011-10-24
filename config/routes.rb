ActionController::Routing::Routes.draw do |map|
  map.saml_login 'auth/saml', :controller => 'saml', :action => 'index'
  map.saml_consume 'auth/saml/consume', :controller => 'saml', :action => 'consume'
end
