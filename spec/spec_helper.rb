=begin
#Cammio REST API

### Introduction This is the *live* documentation for the Cammio API. You use the API to invite candidates for a video interview. You can also retrieve information on completed video interviews. The API gives access to answer video streams which can be used in a custom video player. You may also request a *video CV* link with the API.  ## Notifications With notifications, ATS partners can be notified in real-time when candidates complete video interviews. Cammio supports both REST and SOAP/WSDL interfaces as call back methods. The parameters used for the callback can be defined by the ATS partner.  Notifications can only be used when invitations have been created with the Cammio API. As part of a candidate invitation, the ATS partner *may* provide **call back parameters** in the invitation message posted to Cammio. Our system stores these variables with the invitation. The variables are looked up when a candidate completes a video interview.  Before notifications can be used, it has to be configured by the Cammio team in the account settings. It is not necessary to use the notification system. ATS partners can also ‘poll’ the Cammio API to look for new values.  ## Authorization Click on the triangle below to see the authorization information. <details>   <summary>Authorization information</summary>    ### Basic Authentication (basicAuth)   Provide the API with your **username** (email address) and **password** for each call you make. Click the green button 'Authorize' to use set your details.    ### HMAC Authentication (bearerAuth)   Using this authentication method, you can login on behalf of a specific user (proxy in).   Generate a request token to get an access token. We use JSON Web Token (JWT) for token handling. There are libraries available for all major server-side programming languages.    You first generate a request token, with the **client_id** and the **client_secret** that have been given to you. You provide the JWT library with your **client_id**  the **email** address of the user and an **expiration timestamp**. You then sign the token with your **client_secret**. The generated token is valid for a limited time (up to 5 minutes), ensuring the security of the endpoint. JWT uses HMAC256 encryption for an even higher level of security.    For each programming language there are JWT libraries available. For more information on JWT, please visit [JWT.io](http://jwt.io/).    #### Generate Request Token   For PHP, we recommend using the PHP-JWT library, which can be found at [https://github.com/firebase/php-jwt](https://github.com/firebase/php-jwt). Below is an example on how to generate a request token:        use \\Firebase\\JWT\\JWT;       $timestamp = gmdate('U');       $claim = array(\"iss\" => \"put-your-client-id-here\", \"email\" => \"put-email-of-user-here\", \"exp\" => $timestamp);       $token = JWT::encode($claim, \"put-your-client-secret-here\");'    For .NET, we recommend using Jwt.Net from [NuGet](https://www.nuget.org/packages/JWT). More info and the download can be found at [https://github.com/jwt-dotnet/jwt](https://github.com/jwt-dotnet/jwt).        var token = new JwtBuilder()         .WithAlgorithm(new HMACSHA256Algorithm())         .WithSecret(\"put-your-client-secret-here\")         .AddClaim(\"exp\", DateTimeOffset.UtcNow.ToUnixTimeSeconds())         .AddClaim(\"email\", \"put-email-of-user-here\")         .AddClaim(\"iss\", \"put-your-client-id-here\")         .Build();    #### Request an Access Token   Once the request token is generated, this can be used to get an access token. This is done by **POSTING** a message the endpoint ***/token*** with the request token in the *ASSERTION* part of the request body. An access token has a set expiration time.    You use the returned **access_token** in the header of each API request. Click the green button 'Authorize' to set the token. </details> 

The version of the OpenAPI document: 2.0.0
Contact: api@cammio.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

# load the gem
require 'cammio_api'

# The following  was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# The `.rspec` file also contains a few flags that are not defaults but that
# users commonly want.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
  # These two settings work together to allow you to limit a spec run
  # to individual examples or groups you care about by tagging them with
  # `:focus` metadata. When nothing is tagged with `:focus`, all examples
  # get run.
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Limits the available syntax to the non-monkey patched syntax that is
  # recommended. For more details, see:
  #   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
  #   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
  #   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
  config.disable_monkey_patching!

  # This setting enables warnings. It's recommended, but in some cases may
  # be too noisy due to issues in dependencies.
  config.warnings = true

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = 'doc'
  end

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  Kernel.srand config.seed
=end
end
