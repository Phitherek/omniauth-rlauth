require 'omniauth-oauth2'

module OmniAuth
    module Strategies
        class RLAuth < OmniAuth::Strategies::OAuth2
            option :name, "rlauth"

            option :client_options, {:site => "https://rlauth.deira.phitherek.me"}

            uid { raw_info['user']['id'] }

            info do
                {
                    :callsign => raw_info['user']['callsign'],
                    :email => raw_info['user']['email']
                }
            end

            extra do
                {
                    'raw_info' => raw_info
                }
            end

            def raw_info
                @raw_info ||= access_token.get('/api/user_data').parsed
            end
        end
    end
end