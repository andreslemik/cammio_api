# CammioAPI::TokenApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_access_token**](TokenApi.md#get_access_token) | **POST** /token | Get an access token



## get_access_token

> InlineResponse200 get_access_token(inline_object)

Get an access token

With this resource, you can request an access token. You will need to generate a JWT request token first, and post this in the message body. 

### Example

```ruby
# load the gem
require 'Cammio API'

api_instance = CammioAPI::TokenApi.new
inline_object = CammioAPI::InlineObject.new # InlineObject | 

begin
  #Get an access token
  result = api_instance.get_access_token(inline_object)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TokenApi->get_access_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

