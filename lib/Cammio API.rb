=begin
#Cammio REST API

### Introduction This is the *live* documentation for the Cammio API. You use the API to invite candidates for a video interview. You can also retrieve information on completed video interviews. The API gives access to answer video streams which can be used in a custom video player. You may also request a *video CV* link with the API.  ## Notifications With notifications, ATS partners can be notified in real-time when candidates complete video interviews. Cammio supports both REST and SOAP/WSDL interfaces as call back methods. The parameters used for the callback can be defined by the ATS partner.  Notifications can only be used when invitations have been created with the Cammio API. As part of a candidate invitation, the ATS partner *may* provide **call back parameters** in the invitation message posted to Cammio. Our system stores these variables with the invitation. The variables are looked up when a candidate completes a video interview.  Before notifications can be used, it has to be configured by the Cammio team in the account settings. It is not necessary to use the notification system. ATS partners can also ‘poll’ the Cammio API to look for new values.  ## Authorization Click on the triangle below to see the authorization information. <details>   <summary>Authorization information</summary>    ### Basic Authentication (basicAuth)   Provide the API with your **username** (email address) and **password** for each call you make. Click the green button 'Authorize' to use set your details.    ### HMAC Authentication (bearerAuth)   Using this authentication method, you can login on behalf of a specific user (proxy in).   Generate a request token to get an access token. We use JSON Web Token (JWT) for token handling. There are libraries available for all major server-side programming languages.    You first generate a request token, with the **client_id** and the **client_secret** that have been given to you. You provide the JWT library with your **client_id**  the **email** address of the user and an **expiration timestamp**. You then sign the token with your **client_secret**. The generated token is valid for a limited time (up to 5 minutes), ensuring the security of the endpoint. JWT uses HMAC256 encryption for an even higher level of security.    For each programming language there are JWT libraries available. For more information on JWT, please visit [JWT.io](http://jwt.io/).    #### Generate Request Token   For PHP, we recommend using the PHP-JWT library, which can be found at [https://github.com/firebase/php-jwt](https://github.com/firebase/php-jwt). Below is an example on how to generate a request token:        use \\Firebase\\JWT\\JWT;       $timestamp = gmdate('U');       $claim = array(\"iss\" => \"put-your-client-id-here\", \"email\" => \"put-email-of-user-here\", \"exp\" => $timestamp);       $token = JWT::encode($claim, \"put-your-client-secret-here\");'    For .NET, we recommend using Jwt.Net from [NuGet](https://www.nuget.org/packages/JWT). More info and the download can be found at [https://github.com/jwt-dotnet/jwt](https://github.com/jwt-dotnet/jwt).        var token = new JwtBuilder()         .WithAlgorithm(new HMACSHA256Algorithm())         .WithSecret(\"put-your-client-secret-here\")         .AddClaim(\"exp\", DateTimeOffset.UtcNow.ToUnixTimeSeconds())         .AddClaim(\"email\", \"put-email-of-user-here\")         .AddClaim(\"iss\", \"put-your-client-id-here\")         .Build();    #### Request an Access Token   Once the request token is generated, this can be used to get an access token. This is done by **POSTING** a message the endpoint ***/token*** with the request token in the *ASSERTION* part of the request body. An access token has a set expiration time.    You use the returned **access_token** in the header of each API request. Click the green button 'Authorize' to set the token. </details> 

The version of the OpenAPI document: 2.0.0
Contact: api@cammio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

# Common files
require 'Cammio API/api_client'
require 'Cammio API/api_error'
require 'Cammio API/version'
require 'Cammio API/configuration'

# Models
require 'Cammio API/models/answer'
require 'Cammio API/models/candidate'
require 'Cammio API/models/error'
require 'Cammio API/models/feedback'
require 'Cammio API/models/inline_object'
require 'Cammio API/models/inline_object1'
require 'Cammio API/models/inline_object2'
require 'Cammio API/models/inline_object3'
require 'Cammio API/models/inline_response200'
require 'Cammio API/models/inline_response2001'
require 'Cammio API/models/inline_response2002'
require 'Cammio API/models/interview'
require 'Cammio API/models/invitation'
require 'Cammio API/models/invitations_callback_params'
require 'Cammio API/models/pitch'
require 'Cammio API/models/profile'
require 'Cammio API/models/profile_agreeableness'
require 'Cammio API/models/profile_agreeableness_facets'
require 'Cammio API/models/profile_conscientiousness'
require 'Cammio API/models/profile_conscientiousness_facets'
require 'Cammio API/models/profile_extraversion'
require 'Cammio API/models/profile_extraversion_facets'
require 'Cammio API/models/profile_neuroticism'
require 'Cammio API/models/profile_neuroticism_facets'
require 'Cammio API/models/profile_openness'
require 'Cammio API/models/profile_openness_facets'
require 'Cammio API/models/review'
require 'Cammio API/models/reviewer'
require 'Cammio API/models/stats'
require 'Cammio API/models/stats_interviews'
require 'Cammio API/models/stats_interviews_averages'
require 'Cammio API/models/stats_interviews_candidates'
require 'Cammio API/models/stats_interviews_feedback'
require 'Cammio API/models/stats_interviews_forwarded'
require 'Cammio API/models/stats_interviews_platform'
require 'Cammio API/models/stats_interviews_reviewers'
require 'Cammio API/models/stats_templates'
require 'Cammio API/models/stats_templates_activity'
require 'Cammio API/models/story'
require 'Cammio API/models/template'

# APIs
require 'Cammio API/api/dashboard_api'
require 'Cammio API/api/interviews_api'
require 'Cammio API/api/invitations_api'
require 'Cammio API/api/pitches_api'
require 'Cammio API/api/stories_api'
require 'Cammio API/api/templates_api'
require 'Cammio API/api/token_api'

module CammioAPI
  class << self
    # Customize default settings for the SDK using block.
    #   CammioAPI.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end