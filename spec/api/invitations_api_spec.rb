=begin
#Cammio REST API

### Introduction This is the *live* documentation for the Cammio API. You use the API to invite candidates for a video interview. You can also retrieve information on completed video interviews. The API gives access to answer video streams which can be used in a custom video player. You may also request a *video CV* link with the API.  ## Notifications With notifications, ATS partners can be notified in real-time when candidates complete video interviews. Cammio supports both REST and SOAP/WSDL interfaces as call back methods. The parameters used for the callback can be defined by the ATS partner.  Notifications can only be used when invitations have been created with the Cammio API. As part of a candidate invitation, the ATS partner *may* provide **call back parameters** in the invitation message posted to Cammio. Our system stores these variables with the invitation. The variables are looked up when a candidate completes a video interview.  Before notifications can be used, it has to be configured by the Cammio team in the account settings. It is not necessary to use the notification system. ATS partners can also ‘poll’ the Cammio API to look for new values.  ## Authorization Click on the triangle below to see the authorization information. <details>   <summary>Authorization information</summary>    ### Basic Authentication (basicAuth)   Provide the API with your **username** (email address) and **password** for each call you make. Click the green button 'Authorize' to use set your details.    ### HMAC Authentication (bearerAuth)   Using this authentication method, you can login on behalf of a specific user (proxy in).   Generate a request token to get an access token. We use JSON Web Token (JWT) for token handling. There are libraries available for all major server-side programming languages.    You first generate a request token, with the **client_id** and the **client_secret** that have been given to you. You provide the JWT library with your **client_id**  the **email** address of the user and an **expiration timestamp**. You then sign the token with your **client_secret**. The generated token is valid for a limited time (up to 5 minutes), ensuring the security of the endpoint. JWT uses HMAC256 encryption for an even higher level of security.    For each programming language there are JWT libraries available. For more information on JWT, please visit [JWT.io](http://jwt.io/).    #### Generate Request Token   For PHP, we recommend using the PHP-JWT library, which can be found at [https://github.com/firebase/php-jwt](https://github.com/firebase/php-jwt). Below is an example on how to generate a request token:        use \\Firebase\\JWT\\JWT;       $timestamp = gmdate('U');       $claim = array(\"iss\" => \"put-your-client-id-here\", \"email\" => \"put-email-of-user-here\", \"exp\" => $timestamp);       $token = JWT::encode($claim, \"put-your-client-secret-here\");'    For .NET, we recommend using Jwt.Net from [NuGet](https://www.nuget.org/packages/JWT). More info and the download can be found at [https://github.com/jwt-dotnet/jwt](https://github.com/jwt-dotnet/jwt).        var token = new JwtBuilder()         .WithAlgorithm(new HMACSHA256Algorithm())         .WithSecret(\"put-your-client-secret-here\")         .AddClaim(\"exp\", DateTimeOffset.UtcNow.ToUnixTimeSeconds())         .AddClaim(\"email\", \"put-email-of-user-here\")         .AddClaim(\"iss\", \"put-your-client-id-here\")         .Build();    #### Request an Access Token   Once the request token is generated, this can be used to get an access token. This is done by **POSTING** a message the endpoint ***/token*** with the request token in the *ASSERTION* part of the request body. An access token has a set expiration time.    You use the returned **access_token** in the header of each API request. Click the green button 'Authorize' to set the token. </details> 

The version of the OpenAPI document: 2.0.0
Contact: api@cammio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CammioAPI::InvitationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InvitationsApi' do
  before do
    # run before each test
    @api_instance = CammioAPI::InvitationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvitationsApi' do
    it 'should create an instance of InvitationsApi' do
      expect(@api_instance).to be_instance_of(CammioAPI::InvitationsApi)
    end
  end

  # unit tests for add_invitation
  # Invite a candidate for a video interview
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Invitation]
  describe 'add_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_invitation
  # Delete an invitation
  # With this resource, you can delete an invitation, which effectively un-invites a candidate. Use with caution! 
  # @param invitation_id Invitation id to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invitation_by_id
  # Find an invitation by ID
  # With this resource you can get the details of an invitation. 
  # @param invitation_id ID of invitation to return
  # @param [Hash] opts the optional parameters
  # @return [Invitation]
  describe 'get_invitation_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invitations
  # Returns the list of invitations
  # This resource returns all invitations within Cammio. When a candidate completes an interview, the invitation will be removed from the list. All parameters are optional. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :template_id Invitations belonging to template
  # @option opts [String] :first_name Query by first name
  # @option opts [String] :last_name Query by last name
  # @option opts [String] :email Query by email
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Integer] :limit The numbers of items to return.
  # @return [Array<Invitation>]
  describe 'get_invitations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
