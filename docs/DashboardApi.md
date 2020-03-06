# CammioAPI::DashboardApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_stats**](DashboardApi.md#get_stats) | **GET** /stats | Account statistics



## get_stats

> Stats get_stats(opts)

Account statistics

This resource returns the statistics of the account 

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

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| From date | [optional] 
 **to** | **Date**| To date | [optional] 

### Return type

[**Stats**](Stats.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

