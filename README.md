# Cammio API

CammioAPI - the Ruby gem for the Cammio REST API

## Introduction
This is the *live* documentation for the Cammio API. You use the API to invite candidates for a video interview. You can also retrieve information on completed video interviews. The API gives access to answer video streams which can be used in a custom video player. You may also request a *video CV* link with the API.

## Notifications
With notifications, ATS partners can be notified in real-time when candidates complete video interviews. Cammio supports both REST and SOAP/WSDL interfaces as call back methods. The parameters used for the callback can be defined by the ATS partner.

Notifications can only be used when invitations have been created with the Cammio API. As part of a candidate invitation, the ATS partner *may* provide **call back parameters** in the invitation message posted to Cammio. Our system stores these variables with the invitation. The variables are looked up when a candidate completes a video interview.

Before notifications can be used, it has to be configured by the Cammio team in the account settings. It is not necessary to use the notification system. ATS partners can also ‘poll’ the Cammio API to look for new values.

## Authorization
Click on the triangle below to see the authorization information.
<details>
  <summary>Authorization information</summary>

  ### Basic Authentication (basicAuth)
  Provide the API with your **username** (email address) and **password** for each call you make. Click the green button 'Authorize' to use set your details.

  ### HMAC Authentication (bearerAuth)
  Using this authentication method, you can login on behalf of a specific user (proxy in).
  Generate a request token to get an access token. We use JSON Web Token (JWT) for token handling. There are libraries available for all major server-side programming languages.

  You first generate a request token, with the **client_id** and the **client_secret** that have been given to you. You provide the JWT library with your **client_id**  the **email** address of the user and an **expiration timestamp**. You then sign the token with your **client_secret**. The generated token is valid for a limited time (up to 5 minutes), ensuring the security of the endpoint. JWT uses HMAC256 encryption for an even higher level of security.

  For each programming language there are JWT libraries available. For more information on JWT, please visit [JWT.io](http://jwt.io/).

  #### Generate Request Token
  For PHP, we recommend using the PHP-JWT library, which can be found at [https://github.com/firebase/php-jwt](https://github.com/firebase/php-jwt). Below is an example on how to generate a request token:

      use \\Firebase\\JWT\\JWT;
      $timestamp = gmdate('U');
      $claim = array(\"iss\" => \"put-your-client-id-here\", \"email\" => \"put-email-of-user-here\", \"exp\" => $timestamp);
      $token = JWT::encode($claim, \"put-your-client-secret-here\");'

  For .NET, we recommend using Jwt.Net from [NuGet](https://www.nuget.org/packages/JWT). More info and the download can be found at [https://github.com/jwt-dotnet/jwt](https://github.com/jwt-dotnet/jwt).

      var token = new JwtBuilder()
        .WithAlgorithm(new HMACSHA256Algorithm())
        .WithSecret(\"put-your-client-secret-here\")
        .AddClaim(\"exp\", DateTimeOffset.UtcNow.ToUnixTimeSeconds())
        .AddClaim(\"email\", \"put-email-of-user-here\")
        .AddClaim(\"iss\", \"put-your-client-id-here\")
        .Build();

  #### Request an Access Token
  Once the request token is generated, this can be used to get an access token. This is done by **POSTING** a message the endpoint ***/token*** with the request token in the *ASSERTION* part of the request body. An access token has a set expiration time.

  You use the returned **access_token** in the header of each API request. Click the green button 'Authorize' to set the token.
</details>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build Cammio API.gemspec
```

Then either install the gem locally:

```shell
gem install ./Cammio API-1.0.0.gem
```

(for development, run `gem install --dev ./Cammio API-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'Cammio API', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'Cammio API', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'Cammio API'

# Setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::DashboardApi.new
opts = {
  from: Date.parse('2013-10-20'), # Date | From date
  to: Date.parse('2013-10-20') # Date | To date
}

begin
  #Account statistics
  result = api_instance.get_stats(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling DashboardApi->get_stats: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.cammio.me/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CammioAPI::DashboardApi* | [**get_stats**](docs/DashboardApi.md#get_stats) | **GET** /stats | Account statistics
*CammioAPI::InterviewsApi* | [**delete_interview**](docs/InterviewsApi.md#delete_interview) | **DELETE** /interviews/{interviewId} | Deletes an interview
*CammioAPI::InterviewsApi* | [**delete_interview_review**](docs/InterviewsApi.md#delete_interview_review) | **DELETE** /interviews/{interviewId}/reviews/{reviewId} | Delete a review for this interview
*CammioAPI::InterviewsApi* | [**delete_interview_reviewer**](docs/InterviewsApi.md#delete_interview_reviewer) | **DELETE** /interviews/{interviewId}/reviewers/{reviewerId} | Delete a reviewer for this interview
*CammioAPI::InterviewsApi* | [**get_big_five_profile**](docs/InterviewsApi.md#get_big_five_profile) | **GET** /interviews/{interviewId}/profile | Get the big five profile
*CammioAPI::InterviewsApi* | [**get_interview_by_id**](docs/InterviewsApi.md#get_interview_by_id) | **GET** /interviews/{interviewId} | Find interview by ID
*CammioAPI::InterviewsApi* | [**get_interview_embed_code**](docs/InterviewsApi.md#get_interview_embed_code) | **GET** /interviews/{interviewId}/embed_code | Get the player embed code
*CammioAPI::InterviewsApi* | [**get_interview_review**](docs/InterviewsApi.md#get_interview_review) | **GET** /interviews/{interviewId}/reviews/{reviewId} | Review for this interview
*CammioAPI::InterviewsApi* | [**get_interview_reviewer**](docs/InterviewsApi.md#get_interview_reviewer) | **GET** /interviews/{interviewId}/reviewers/{reviewerId} | Reviewer for this interview
*CammioAPI::InterviewsApi* | [**get_interview_reviewers**](docs/InterviewsApi.md#get_interview_reviewers) | **GET** /interviews/{interviewId}/reviewers | List of reviewers for this interview
*CammioAPI::InterviewsApi* | [**get_interview_reviews**](docs/InterviewsApi.md#get_interview_reviews) | **GET** /interviews/{interviewId}/reviews | List of reviews for the interview
*CammioAPI::InterviewsApi* | [**get_interviews**](docs/InterviewsApi.md#get_interviews) | **GET** /interviews | Returns a list of interviews
*CammioAPI::InterviewsApi* | [**get_video_cv_link**](docs/InterviewsApi.md#get_video_cv_link) | **GET** /interviews/{interviewId}/video_cv | Get a video CV link
*CammioAPI::InterviewsApi* | [**post_interview_review**](docs/InterviewsApi.md#post_interview_review) | **POST** /interviews/{interviewId}/reviews | Add a review for the interview
*CammioAPI::InterviewsApi* | [**post_interview_reviewer**](docs/InterviewsApi.md#post_interview_reviewer) | **POST** /interviews/{interviewId}/reviewers | Invite a reviewer for the interview
*CammioAPI::InvitationsApi* | [**add_invitation**](docs/InvitationsApi.md#add_invitation) | **POST** /invitations | Invite a candidate for a video interview
*CammioAPI::InvitationsApi* | [**delete_invitation**](docs/InvitationsApi.md#delete_invitation) | **DELETE** /invitations/{invitationId} | Delete an invitation
*CammioAPI::InvitationsApi* | [**get_invitation_by_id**](docs/InvitationsApi.md#get_invitation_by_id) | **GET** /invitations/{invitationId} | Find an invitation by ID
*CammioAPI::InvitationsApi* | [**get_invitations**](docs/InvitationsApi.md#get_invitations) | **GET** /invitations | Returns the list of invitations
*CammioAPI::PitchesApi* | [**get_pitch**](docs/PitchesApi.md#get_pitch) | **GET** /pitches/{pitchId} | Get a pitch by ID
*CammioAPI::PitchesApi* | [**get_pitches**](docs/PitchesApi.md#get_pitches) | **GET** /pitches | List all pitches
*CammioAPI::StoriesApi* | [**get_stories**](docs/StoriesApi.md#get_stories) | **GET** /stories | List the available stories
*CammioAPI::StoriesApi* | [**get_story**](docs/StoriesApi.md#get_story) | **GET** /stories/{storyId} | Get a story by ID
*CammioAPI::StoriesApi* | [**get_story_embed_code**](docs/StoriesApi.md#get_story_embed_code) | **GET** /stories/{storyId}/embed_code | Get the story embed code
*CammioAPI::TemplatesApi* | [**get_template**](docs/TemplatesApi.md#get_template) | **GET** /templates | Returns a list of templates
*CammioAPI::TemplatesApi* | [**get_template_by_id**](docs/TemplatesApi.md#get_template_by_id) | **GET** /templates/{templateId} | Find template by ID
*CammioAPI::TemplatesApi* | [**get_template_interviews**](docs/TemplatesApi.md#get_template_interviews) | **GET** /templates/{templateId}/interviews | List the interviews for this template
*CammioAPI::TemplatesApi* | [**get_template_invitations**](docs/TemplatesApi.md#get_template_invitations) | **GET** /templates/{templateId}/invitations | List the invitations for this template
*CammioAPI::TokenApi* | [**get_access_token**](docs/TokenApi.md#get_access_token) | **POST** /token | Get an access token


## Documentation for Models

 - [CammioAPI::Answer](docs/Answer.md)
 - [CammioAPI::Candidate](docs/Candidate.md)
 - [CammioAPI::Error](docs/Error.md)
 - [CammioAPI::Feedback](docs/Feedback.md)
 - [CammioAPI::InlineObject](docs/InlineObject.md)
 - [CammioAPI::InlineObject1](docs/InlineObject1.md)
 - [CammioAPI::InlineObject2](docs/InlineObject2.md)
 - [CammioAPI::InlineObject3](docs/InlineObject3.md)
 - [CammioAPI::InlineResponse200](docs/InlineResponse200.md)
 - [CammioAPI::InlineResponse2001](docs/InlineResponse2001.md)
 - [CammioAPI::InlineResponse2002](docs/InlineResponse2002.md)
 - [CammioAPI::Interview](docs/Interview.md)
 - [CammioAPI::Invitation](docs/Invitation.md)
 - [CammioAPI::InvitationsCallbackParams](docs/InvitationsCallbackParams.md)
 - [CammioAPI::Pitch](docs/Pitch.md)
 - [CammioAPI::Profile](docs/Profile.md)
 - [CammioAPI::ProfileAgreeableness](docs/ProfileAgreeableness.md)
 - [CammioAPI::ProfileAgreeablenessFacets](docs/ProfileAgreeablenessFacets.md)
 - [CammioAPI::ProfileConscientiousness](docs/ProfileConscientiousness.md)
 - [CammioAPI::ProfileConscientiousnessFacets](docs/ProfileConscientiousnessFacets.md)
 - [CammioAPI::ProfileExtraversion](docs/ProfileExtraversion.md)
 - [CammioAPI::ProfileExtraversionFacets](docs/ProfileExtraversionFacets.md)
 - [CammioAPI::ProfileNeuroticism](docs/ProfileNeuroticism.md)
 - [CammioAPI::ProfileNeuroticismFacets](docs/ProfileNeuroticismFacets.md)
 - [CammioAPI::ProfileOpenness](docs/ProfileOpenness.md)
 - [CammioAPI::ProfileOpennessFacets](docs/ProfileOpennessFacets.md)
 - [CammioAPI::Review](docs/Review.md)
 - [CammioAPI::Reviewer](docs/Reviewer.md)
 - [CammioAPI::Stats](docs/Stats.md)
 - [CammioAPI::StatsInterviews](docs/StatsInterviews.md)
 - [CammioAPI::StatsInterviewsAverages](docs/StatsInterviewsAverages.md)
 - [CammioAPI::StatsInterviewsCandidates](docs/StatsInterviewsCandidates.md)
 - [CammioAPI::StatsInterviewsFeedback](docs/StatsInterviewsFeedback.md)
 - [CammioAPI::StatsInterviewsForwarded](docs/StatsInterviewsForwarded.md)
 - [CammioAPI::StatsInterviewsPlatform](docs/StatsInterviewsPlatform.md)
 - [CammioAPI::StatsInterviewsReviewers](docs/StatsInterviewsReviewers.md)
 - [CammioAPI::StatsTemplates](docs/StatsTemplates.md)
 - [CammioAPI::StatsTemplatesActivity](docs/StatsTemplatesActivity.md)
 - [CammioAPI::Story](docs/Story.md)
 - [CammioAPI::Template](docs/Template.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication

### bearerAuth

- **Type**: Bearer authentication

