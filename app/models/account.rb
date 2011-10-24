require 'onelogin/saml'

class Account < ActiveRecord::Base
  def Account.get_saml_settings

    options = YAML::load(ERB.new(IO.read(File.join(Rails.root, 'config', 'saml_auth.yml'))).result)
    settings = Onelogin::Saml::Settings.new

    settings.assertion_consumer_service_url = options[Rails.env]['assertion_consumer_service_url']
    settings.issuer                         = options[Rails.env]['issuer']
    settings.idp_sso_target_url             = options[Rails.env]['idp_sso_target_url']
    settings.idp_cert_fingerprint           = options[Rails.env]['idp_cert_fingerprint']
    settings.name_identifier_format         = options[Rails.env]['name_identifier_format']

    settings
  end
end
