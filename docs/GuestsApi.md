# CammioAPI::GuestsApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_guest**](GuestsApi.md#add_guest) | **POST** /guests | Invite a guest for a video interview
[**get_guests**](GuestsApi.md#get_guests) | **GET** /guests | List of guests for the invitation



## add_guest

> InlineResponse2005 add_guest(body)

Invite a guest for a video interview

With this resource you can invite a guest for a video interview by posting a message body. The response contains the URL to join the interview. 

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

api_instance = CammioAPI::GuestsApi.new
body = CammioAPI::InlineObject10.new # InlineObject10 | 

begin
  #Invite a guest for a video interview
  result = api_instance.add_guest(body)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling GuestsApi->add_guest: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_guests

> Array&lt;InlineResponse2005&gt; get_guests(invitation_id)

List of guests for the invitation

This resource returns the invited guests for the invitation 

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

api_instance = CammioAPI::GuestsApi.new
invitation_id = 3.4 # Float | ID of the invitation

begin
  #List of guests for the invitation
  result = api_instance.get_guests(invitation_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling GuestsApi->get_guests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **Float**| ID of the invitation | 

### Return type

[**Array&lt;InlineResponse2005&gt;**](InlineResponse2005.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

