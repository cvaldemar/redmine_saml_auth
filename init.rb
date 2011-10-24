require 'redmine'
require 'ruby-saml'

Redmine::Plugin.register :redmine_saml_auth do
  name 'Redmine SAML auth plugin'
  author 'Casper Valdemar Poulsen'
  description 'Enables authentication using SAML'
  version '0.1.0'
end
