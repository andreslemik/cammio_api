# CammioAPI::PitchesApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_pitch**](PitchesApi.md#get_pitch) | **GET** /pitches/{pitchId} | Get a pitch by ID
[**get_pitches**](PitchesApi.md#get_pitches) | **GET** /pitches | List all pitches



## get_pitch

> Pitch get_pitch(pitch_id)

Get a pitch by ID

This resource returns the details of a pitch. 

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

api_instance = CammioAPI::PitchesApi.new
pitch_id = 56 # Integer | ID of the pitch

begin
  #Get a pitch by ID
  result = api_instance.get_pitch(pitch_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling PitchesApi->get_pitch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pitch_id** | **Integer**| ID of the pitch | 

### Return type

[**Pitch**](Pitch.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pitches

> Array&lt;Pitch&gt; get_pitches(opts)

List all pitches

This resource returns a list of all pitches. 

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

api_instance = CammioAPI::PitchesApi.new
opts = {
  from: Date.parse('2013-10-20'), # Date | From date
  to: Date.parse('2013-10-20'), # Date | To date
  title: 'title_example', # String | Query by title
  language: 'language_example', # String | Query by language
  filter: 'filter_example', # String | Query by filter (external id)
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #List all pitches
  result = api_instance.get_pitches(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling PitchesApi->get_pitches: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| From date | [optional] 
 **to** | **Date**| To date | [optional] 
 **title** | **String**| Query by title | [optional] 
 **language** | **String**| Query by language | [optional] 
 **filter** | **String**| Query by filter (external id) | [optional] 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Pitch&gt;**](Pitch.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

