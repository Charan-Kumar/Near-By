# These defaults are used in Geokit::Mappable.distance_to and in acts_as_mappable
    Geokit::default_units = :miles # others :kms, :nms, :meters
    Geokit::default_formula = :sphere

    # This is the timeout value in seconds to be used for calls to the geocoder web
    # services.  For no timeout at all, comment out the setting.  The timeout unit
    # is in seconds.
    Geokit::Geocoders::request_timeout = 3

    # This setting can be used if web service calls must be routed through a proxy.
    # These setting can be nil if not needed, otherwise, a valid URI must be
    # filled in at a minimum.  If the proxy requires authentication, the username
    # and password can be provided as well.
    Geokit::Geocoders::proxy = nil

    # This is your yahoo application key for the Yahoo Geocoder.
    # See http://developer.yahoo.com/faq/index.html#appid
    # and http://developer.yahoo.com/maps/rest/V1/geocode.html
    

    # This is your Google Maps geocoder keys (all optional).
    # See http://www.google.com/apis/maps/signup.html
    # and http://www.google.com/apis/maps/documentation/#Geocoding_Examples
    Geokit::Geocoders::GoogleGeocoder.client_id = '1011737962375-0nukrrmvafsfiroe3sl9i1d1rjtcq12k.apps.googleusercontent.com'
    Geokit::Geocoders::GoogleGeocoder.cryptographic_key = 'UyYUiv_aFyGKvbb1m5U2C-2L'
    Geokit::Geocoders::GoogleGeocoder.channel = ''

    # You can also use the free API key instead of signed requests
    # See https://developers.google.com/maps/documentation/geocoding/#api_key
    Geokit::Geocoders::GoogleGeocoder.api_key = 'AIzaSyAiHjDPlaZrDdahPxmoE4ACfTc_7bApGaE'

    # You can also set multiple API KEYS for different domains that may be directed to this same application.
    # The domain from which the current user is being directed will automatically be updated for Geokit via
    # the GeocoderControl class, which gets it's begin filter mixed into the ActionController.
    # You define these keys with a Hash as follows:
    #Geokit::Geocoders::google = { 'rubyonrails.org' => 'RUBY_ON_RAILS_API_KEY', 'ruby-docs.org' => 'RUBY_DOCS_API_KEY' }

    # This is your username and password for geocoder.us.
    # To use the free service, the value can be set to nil or false.  For
    # usage tied to an account, the value should be set to username:password.
    # See http://geocoder.us
    # and http://geocoder.us/user/signup
    Geokit::Geocoders::UsGeocoder.key = nil

    # This is your authorization key for geocoder.ca.
    # To use the free service, the value can be set to nil or false.  For
    # usage tied to an account, set the value to the key obtained from
    # Geocoder.ca.
    # See http://geocoder.ca
    # and http://geocoder.ca/?register=1
    Geokit::Geocoders::CaGeocoder.key = nil

    # This is your username key for geonames.
    # To use this service either free or premium, you must register a key.
    # See http://www.geonames.org
   

    
    # Geonames has a free service and a premium service, each using a different URL
    # GeonamesGeocoder.premium = true will use http://ws.geonames.net (premium)
    # GeonamesGeocoder.premium = false will use http://api.geonames.org (free)
    Geokit::Geocoders::GeonamesGeocoder.premium = false

    # require "external_geocoder.rb"
    # Please see the section "writing your own geocoders" for more information.
    # Geokit::Geocoders::external_key = 'REPLACE_WITH_YOUR_API_KEY'

    # This is the order in which the geocoders are called in a failover scenario
    # If you only want to use a single geocoder, put a single symbol in the array.
    # Valid symbols are :google, :yahoo, :us, and :ca.
    # Be aware that there are Terms of Use restrictions on how you can use the
    # various geocoders.  Make sure you read up on relevant Terms of Use for each
    # geocoder you are going to use.
    Geokit::Geocoders::provider_order = [:google,:us]

    # The IP provider order. Valid symbols are :ip,:geo_plugin.
    # As before, make sure you read up on relevant Terms of Use for each.
    # Geokit::Geocoders::ip_provider_order = [:external,:geo_plugin,:ip]

    # Disable HTTPS globally.  This option can also be set on individual
    # geocoder classes.
    Geokit::Geocoders::secure = false

    # Control verification of the server certificate for geocoders using HTTPS
    #Geokit::Geocoders::ssl_verify_mode = OpenSSL::SSL::VERIFY_(PEER/NONE)
    # Setting this to VERIFY_NONE may be needed on systems that don't have
    # a complete or up to date root certificate store. Only applies to
    # the Net::HTTP adapter.