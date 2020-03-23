# CammioAPI::StoriesApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_stories**](StoriesApi.md#get_stories) | **GET** /stories | List the available stories
[**get_story**](StoriesApi.md#get_story) | **GET** /stories/{storyId} | Get a story by ID
[**get_story_embed_code**](StoriesApi.md#get_story_embed_code) | **GET** /stories/{storyId}/embed_code | Get the story embed code



## get_stories

> Array&lt;Story&gt; get_stories(opts)

List the available stories

This resource returns a list of all published Stories. 

### Example

```ruby
# load the gem
require 'cammio_api'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::StoriesApi.new
opts = {
  from: Date.parse('2013-10-20'), # Date | Published from date
  to: Date.parse('2013-10-20'), # Date | Published to date
  name: 'name_example', # String | Query by name
  language: 'language_example', # String | Query by language
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #List the available stories
  result = api_instance.get_stories(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling StoriesApi->get_stories: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| Published from date | [optional] 
 **to** | **Date**| Published to date | [optional] 
 **name** | **String**| Query by name | [optional] 
 **language** | **String**| Query by language | [optional] 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Story&gt;**](Story.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_story

> Story get_story(story_id)

Get a story by ID

This resource returns the details of a specific Story. 

### Example

```ruby
# load the gem
require 'cammio_api'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::StoriesApi.new
story_id = 56 # Integer | ID of the story

begin
  #Get a story by ID
  result = api_instance.get_story(story_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling StoriesApi->get_story: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **story_id** | **Integer**| ID of the story | 

### Return type

[**Story**](Story.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_story_embed_code

> String get_story_embed_code(story_id)

Get the story embed code

Get the embed code for the story. This code can be used to add a story to a web page. 

### Example

```ruby
# load the gem
require 'cammio_api'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::StoriesApi.new
story_id = 56 # Integer | ID of the story

begin
  #Get the story embed code
  result = api_instance.get_story_embed_code(story_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling StoriesApi->get_story_embed_code: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **story_id** | **Integer**| ID of the story | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

