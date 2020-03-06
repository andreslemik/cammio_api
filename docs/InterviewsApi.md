# CammioAPI::InterviewsApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_interview**](InterviewsApi.md#delete_interview) | **DELETE** /interviews/{interviewId} | Deletes an interview
[**delete_interview_review**](InterviewsApi.md#delete_interview_review) | **DELETE** /interviews/{interviewId}/reviews/{reviewId} | Delete a review for this interview
[**delete_interview_reviewer**](InterviewsApi.md#delete_interview_reviewer) | **DELETE** /interviews/{interviewId}/reviewers/{reviewerId} | Delete a reviewer for this interview
[**get_big_five_profile**](InterviewsApi.md#get_big_five_profile) | **GET** /interviews/{interviewId}/profile | Get the big five profile
[**get_interview_by_id**](InterviewsApi.md#get_interview_by_id) | **GET** /interviews/{interviewId} | Find interview by ID
[**get_interview_embed_code**](InterviewsApi.md#get_interview_embed_code) | **GET** /interviews/{interviewId}/embed_code | Get the player embed code
[**get_interview_review**](InterviewsApi.md#get_interview_review) | **GET** /interviews/{interviewId}/reviews/{reviewId} | Review for this interview
[**get_interview_reviewer**](InterviewsApi.md#get_interview_reviewer) | **GET** /interviews/{interviewId}/reviewers/{reviewerId} | Reviewer for this interview
[**get_interview_reviewers**](InterviewsApi.md#get_interview_reviewers) | **GET** /interviews/{interviewId}/reviewers | List of reviewers for this interview
[**get_interview_reviews**](InterviewsApi.md#get_interview_reviews) | **GET** /interviews/{interviewId}/reviews | List of reviews for the interview
[**get_interviews**](InterviewsApi.md#get_interviews) | **GET** /interviews | Returns a list of interviews
[**get_video_cv_link**](InterviewsApi.md#get_video_cv_link) | **GET** /interviews/{interviewId}/video_cv | Get a video CV link
[**post_interview_review**](InterviewsApi.md#post_interview_review) | **POST** /interviews/{interviewId}/reviews | Add a review for the interview
[**post_interview_reviewer**](InterviewsApi.md#post_interview_reviewer) | **POST** /interviews/{interviewId}/reviewers | Invite a reviewer for the interview



## delete_interview

> delete_interview(interview_id)

Deletes an interview

With this resource, you can delete a video interview. Use this resource with caution! 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | Invitation id to delete

begin
  #Deletes an interview
  api_instance.delete_interview(interview_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->delete_interview: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| Invitation id to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_interview_review

> delete_interview_review(interview_id, review_id)

Delete a review for this interview

Deletes a review by ID for this interview. Use with caution! 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
review_id = 56 # Integer | ID of the review

begin
  #Delete a review for this interview
  api_instance.delete_interview_review(interview_id, review_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->delete_interview_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **review_id** | **Integer**| ID of the review | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_interview_reviewer

> delete_interview_reviewer(interview_id, reviewer_id)

Delete a reviewer for this interview

Deletes a reviewer by ID for this interview. Use with caution! 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
reviewer_id = 56 # Integer | ID of the reviewer

begin
  #Delete a reviewer for this interview
  api_instance.delete_interview_reviewer(interview_id, reviewer_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->delete_interview_reviewer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **reviewer_id** | **Integer**| ID of the reviewer | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_big_five_profile

> Profile get_big_five_profile(interview_id)

Get the big five profile

This resource returns the big five personality profile, if available. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview

begin
  #Get the big five profile
  result = api_instance.get_big_five_profile(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_big_five_profile: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 

### Return type

[**Profile**](Profile.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interview_by_id

> Interview get_interview_by_id(interview_id)

Find interview by ID

With this resource, you can get the details of a completed video interview, including access to recorded video streams. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of interview to return

begin
  #Find interview by ID
  result = api_instance.get_interview_by_id(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of interview to return | 

### Return type

[**Interview**](Interview.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interview_embed_code

> String get_interview_embed_code(interview_id)

Get the player embed code

Get the player embed code for the interview. This code can be used to add a player to a web page. You will have to add your token manually. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview

begin
  #Get the player embed code
  result = api_instance.get_interview_embed_code(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_embed_code: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_interview_review

> Review get_interview_review(interview_id, review_id)

Review for this interview

Get the details for the selected review. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
review_id = 56 # Integer | ID of the review

begin
  #Review for this interview
  result = api_instance.get_interview_review(interview_id, review_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **review_id** | **Integer**| ID of the review | 

### Return type

[**Review**](Review.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interview_reviewer

> Reviewer get_interview_reviewer(interview_id, reviewer_id)

Reviewer for this interview

Returns a reviewer by ID for this interview. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
reviewer_id = 56 # Integer | ID of the reviewer

begin
  #Reviewer for this interview
  result = api_instance.get_interview_reviewer(interview_id, reviewer_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_reviewer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **reviewer_id** | **Integer**| ID of the reviewer | 

### Return type

[**Reviewer**](Reviewer.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interview_reviewers

> Array&lt;Reviewer&gt; get_interview_reviewers(interview_id)

List of reviewers for this interview

This resource returns a list of reviewers for this interview. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview

begin
  #List of reviewers for this interview
  result = api_instance.get_interview_reviewers(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_reviewers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 

### Return type

[**Array&lt;Reviewer&gt;**](Reviewer.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interview_reviews

> Array&lt;Review&gt; get_interview_reviews(interview_id)

List of reviews for the interview

Returns a list of reviews for the interview 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview

begin
  #List of reviews for the interview
  result = api_instance.get_interview_reviews(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interview_reviews: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 

### Return type

[**Array&lt;Review&gt;**](Review.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_interviews

> Array&lt;InlineResponse2001&gt; get_interviews(opts)

Returns a list of interviews

This resource returns a list of all completed video interviews. All parameters are optional. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
opts = {
  template_id: 56, # Integer | Invitations belonging to template
  first_name: 'first_name_example', # String | Query by first name
  last_name: 'last_name_example', # String | Query by last name
  email: 'email_example', # String | Query by email
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #Returns a list of interviews
  result = api_instance.get_interviews(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_interviews: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Invitations belonging to template | [optional] 
 **first_name** | **String**| Query by first name | [optional] 
 **last_name** | **String**| Query by last name | [optional] 
 **email** | [**String**](.md)| Query by email | [optional] 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_video_cv_link

> InlineResponse2002 get_video_cv_link(interview_id)

Get a video CV link

Get a video CV link for a completed interview. This link to the video interview is valid only 3 times and must be consumed within 3 days after which the link expires. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview

begin
  #Get a video CV link
  result = api_instance.get_video_cv_link(interview_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->get_video_cv_link: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_interview_review

> Review post_interview_review(interview_id, body)

Add a review for the interview

Add a review for the interview. A review consists of a rating and remarks. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
body = CammioAPI::InlineObject2.new # InlineObject2 | 

begin
  #Add a review for the interview
  result = api_instance.post_interview_review(interview_id, body)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->post_interview_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **body** | [**InlineObject2**](InlineObject2.md)|  | 

### Return type

[**Review**](Review.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_interview_reviewer

> Reviewer post_interview_reviewer(interview_id, body)

Invite a reviewer for the interview

Invite a reviewer to review the interview. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InterviewsApi.new
interview_id = 56 # Integer | ID of the interview
body = CammioAPI::InlineObject3.new # InlineObject3 | 

begin
  #Invite a reviewer for the interview
  result = api_instance.post_interview_reviewer(interview_id, body)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InterviewsApi->post_interview_reviewer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interview_id** | **Integer**| ID of the interview | 
 **body** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

[**Reviewer**](Reviewer.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

