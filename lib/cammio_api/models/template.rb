=begin
#Cammio REST API

### Introduction This is the *live* documentation for the Cammio API. You use the API to invite candidates for a video interview. You can also retrieve information on completed video interviews. The API gives access to answer video streams which can be used in a custom video player. You may also request a *video CV* link with the API.  ## Notifications With notifications, ATS partners can be notified in real-time when candidates complete video interviews. Cammio supports both REST and SOAP/WSDL interfaces as call back methods. The parameters used for the callback can be defined by the ATS partner.  Notifications can only be used when invitations have been created with the Cammio API. As part of a candidate invitation, the ATS partner *may* provide **call back parameters** in the invitation message posted to Cammio. Our system stores these variables with the invitation. The variables are looked up when a candidate completes a video interview.  Before notifications can be used, it has to be configured by the Cammio team in the account settings. It is not necessary to use the notification system. ATS partners can also ‘poll’ the Cammio API to look for new values.  ## Authorization Click on the triangle below to see the authorization information. <details>   <summary>Authorization information</summary>    ### Basic Authentication (basicAuth)   Provide the API with your **username** (email address) and **password** for each call you make. Click the green button 'Authorize' to use set your details.    ### HMAC Authentication (bearerAuth)   Using this authentication method, you can login on behalf of a specific user (proxy in).   Generate a request token to get an access token. We use JSON Web Token (JWT) for token handling. There are libraries available for all major server-side programming languages.    You first generate a request token, with the **client_id** and the **client_secret** that have been given to you. You provide the JWT library with your **client_id**  the **email** address of the user and an **expiration timestamp**. You then sign the token with your **client_secret**. The generated token is valid for a limited time (up to 5 minutes), ensuring the security of the endpoint. JWT uses HMAC256 encryption for an even higher level of security.    For each programming language there are JWT libraries available. For more information on JWT, please visit [JWT.io](http://jwt.io/).    #### Generate Request Token   For PHP, we recommend using the PHP-JWT library, which can be found at [https://github.com/firebase/php-jwt](https://github.com/firebase/php-jwt). Below is an example on how to generate a request token:        use \\Firebase\\JWT\\JWT;       $timestamp = gmdate('U');       $claim = array(\"iss\" => \"put-your-client-id-here\", \"email\" => \"put-email-of-user-here\", \"exp\" => $timestamp);       $token = JWT::encode($claim, \"put-your-client-secret-here\");'    For .NET, we recommend using Jwt.Net from [NuGet](https://www.nuget.org/packages/JWT). More info and the download can be found at [https://github.com/jwt-dotnet/jwt](https://github.com/jwt-dotnet/jwt).        var token = new JwtBuilder()         .WithAlgorithm(new HMACSHA256Algorithm())         .WithSecret(\"put-your-client-secret-here\")         .AddClaim(\"exp\", DateTimeOffset.UtcNow.ToUnixTimeSeconds())         .AddClaim(\"email\", \"put-email-of-user-here\")         .AddClaim(\"iss\", \"put-your-client-id-here\")         .Build();    #### Request an Access Token   Once the request token is generated, this can be used to get an access token. This is done by **POSTING** a message the endpoint ***/token*** with the request token in the *ASSERTION* part of the request body. An access token has a set expiration time.    You use the returned **access_token** in the header of each API request. Click the green button 'Authorize' to set the token. </details> 

The version of the OpenAPI document: 2.0.0
Contact: api@cammio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'date'

module CammioAPI
  # A template defines to what video interview a candidate is invited. Templates are set up in the Cammio system. The templates need to be made available to external partnes, alllowing them to use it for inviting candidates. 
  class Template
    attr_accessor :id

    attr_accessor :title

    attr_accessor :language

    attr_accessor :type

    attr_accessor :reference_id

    attr_accessor :redirect_url

    # Values are seconds 
    attr_accessor :answer_time

    # 0 means autostart, -1 means unlimited 
    attr_accessor :max_recordings

    # Values are days 
    attr_accessor :expires_after

    # Values are days 
    attr_accessor :data_retention

    attr_accessor :private

    attr_accessor :continuous

    attr_accessor :prohibit_playback

    attr_accessor :allow_text_answers

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'language' => :'language',
        :'type' => :'type',
        :'reference_id' => :'reference_id',
        :'redirect_url' => :'redirect_url',
        :'answer_time' => :'answer_time',
        :'max_recordings' => :'max_recordings',
        :'expires_after' => :'expires_after',
        :'data_retention' => :'data_retention',
        :'private' => :'private',
        :'continuous' => :'continuous',
        :'prohibit_playback' => :'prohibit_playback',
        :'allow_text_answers' => :'allow_text_answers'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'language' => :'String',
        :'type' => :'String',
        :'reference_id' => :'String',
        :'redirect_url' => :'String',
        :'answer_time' => :'Integer',
        :'max_recordings' => :'Integer',
        :'expires_after' => :'Integer',
        :'data_retention' => :'Integer',
        :'private' => :'Boolean',
        :'continuous' => :'Boolean',
        :'prohibit_playback' => :'Boolean',
        :'allow_text_answers' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CammioAPI::Template` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CammioAPI::Template`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.key?(:'answer_time')
        self.answer_time = attributes[:'answer_time']
      else
        self.answer_time = 60
      end

      if attributes.key?(:'max_recordings')
        self.max_recordings = attributes[:'max_recordings']
      else
        self.max_recordings = 2
      end

      if attributes.key?(:'expires_after')
        self.expires_after = attributes[:'expires_after']
      else
        self.expires_after = 60
      end

      if attributes.key?(:'data_retention')
        self.data_retention = attributes[:'data_retention']
      else
        self.data_retention = 365
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      else
        self.private = false
      end

      if attributes.key?(:'continuous')
        self.continuous = attributes[:'continuous']
      else
        self.continuous = false
      end

      if attributes.key?(:'prohibit_playback')
        self.prohibit_playback = attributes[:'prohibit_playback']
      else
        self.prohibit_playback = false
      end

      if attributes.key?(:'allow_text_answers')
        self.allow_text_answers = attributes[:'allow_text_answers']
      else
        self.allow_text_answers = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@expires_after.nil? && @expires_after > 365
        invalid_properties.push('invalid value for "expires_after", must be smaller than or equal to 365.')
      end

      if !@expires_after.nil? && @expires_after < 1
        invalid_properties.push('invalid value for "expires_after", must be greater than or equal to 1.')
      end

      if !@data_retention.nil? && @data_retention < 1
        invalid_properties.push('invalid value for "data_retention", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      language_validator = EnumAttributeValidator.new('String', ["en", "de", "fr", "es", "it", "br", "nl", "fi", "tr", "pl", "ro", "ja", "zh"])
      return false unless language_validator.valid?(@language)
      type_validator = EnumAttributeValidator.new('String', ["automated", "live", "pitch"])
      return false unless type_validator.valid?(@type)
      answer_time_validator = EnumAttributeValidator.new('Integer', [30, 60, 120, 180, 240, 300, 600])
      return false unless answer_time_validator.valid?(@answer_time)
      max_recordings_validator = EnumAttributeValidator.new('Integer', [-1, 0, 1, 2, 3, 4, 5])
      return false unless max_recordings_validator.valid?(@max_recordings)
      return false if !@expires_after.nil? && @expires_after > 365
      return false if !@expires_after.nil? && @expires_after < 1
      return false if !@data_retention.nil? && @data_retention < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] language Object to be assigned
    def language=(language)
      validator = EnumAttributeValidator.new('String', ["en", "de", "fr", "es", "it", "br", "nl", "fi", "tr", "pl", "ro", "ja", "zh"])
      unless validator.valid?(language)
        fail ArgumentError, "invalid value for \"language\", must be one of #{validator.allowable_values}."
      end
      @language = language
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["automated", "live", "pitch"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] answer_time Object to be assigned
    def answer_time=(answer_time)
      validator = EnumAttributeValidator.new('Integer', [30, 60, 120, 180, 240, 300, 600])
      unless validator.valid?(answer_time)
        fail ArgumentError, "invalid value for \"answer_time\", must be one of #{validator.allowable_values}."
      end
      @answer_time = answer_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_recordings Object to be assigned
    def max_recordings=(max_recordings)
      validator = EnumAttributeValidator.new('Integer', [-1, 0, 1, 2, 3, 4, 5])
      unless validator.valid?(max_recordings)
        fail ArgumentError, "invalid value for \"max_recordings\", must be one of #{validator.allowable_values}."
      end
      @max_recordings = max_recordings
    end

    # Custom attribute writer method with validation
    # @param [Object] expires_after Value to be assigned
    def expires_after=(expires_after)
      if !expires_after.nil? && expires_after > 365
        fail ArgumentError, 'invalid value for "expires_after", must be smaller than or equal to 365.'
      end

      if !expires_after.nil? && expires_after < 1
        fail ArgumentError, 'invalid value for "expires_after", must be greater than or equal to 1.'
      end

      @expires_after = expires_after
    end

    # Custom attribute writer method with validation
    # @param [Object] data_retention Value to be assigned
    def data_retention=(data_retention)
      if !data_retention.nil? && data_retention < 1
        fail ArgumentError, 'invalid value for "data_retention", must be greater than or equal to 1.'
      end

      @data_retention = data_retention
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          language == o.language &&
          type == o.type &&
          reference_id == o.reference_id &&
          redirect_url == o.redirect_url &&
          answer_time == o.answer_time &&
          max_recordings == o.max_recordings &&
          expires_after == o.expires_after &&
          data_retention == o.data_retention &&
          private == o.private &&
          continuous == o.continuous &&
          prohibit_playback == o.prohibit_playback &&
          allow_text_answers == o.allow_text_answers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, language, type, reference_id, redirect_url, answer_time, max_recordings, expires_after, data_retention, private, continuous, prohibit_playback, allow_text_answers].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        CammioAPI.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
