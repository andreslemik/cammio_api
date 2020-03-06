# CammioAPI::TemplatesApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_template**](TemplatesApi.md#get_template) | **GET** /templates | Returns a list of templates
[**get_template_by_id**](TemplatesApi.md#get_template_by_id) | **GET** /templates/{templateId} | Find template by ID
[**get_template_interviews**](TemplatesApi.md#get_template_interviews) | **GET** /templates/{templateId}/interviews | List the interviews for this template
[**get_template_invitations**](TemplatesApi.md#get_template_invitations) | **GET** /templates/{templateId}/invitations | List the invitations for this template



## get_template

> Array&lt;Template&gt; get_template(opts)

Returns a list of templates

This resource returns a list of all available templates. 

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

api_instance = CammioAPI::TemplatesApi.new
opts = {
  title: 'title_example', # String | Query by title
  language: 'language_example', # String | Query by language
  type: 'type_example', # String | Query by type
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #Returns a list of templates
  result = api_instance.get_template(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Query by title | [optional] 
 **language** | **String**| Query by language | [optional] 
 **type** | **String**| Query by type | [optional] 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Template&gt;**](Template.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_by_id

> Template get_template_by_id(template_id)

Find template by ID

This resource returns the details of a template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of template to return

begin
  #Find template by ID
  result = api_instance.get_template_by_id(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of template to return | 

### Return type

[**Template**](Template.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_interviews

> Array&lt;Interview&gt; get_template_interviews(template_id, opts)

List the interviews for this template

Returns a list of interviews for this template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of the template
opts = {
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #List the interviews for this template
  result = api_instance.get_template_interviews(template_id, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_interviews: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of the template | 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Interview&gt;**](Interview.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_invitations

> Array&lt;Invitation&gt; get_template_invitations(template_id, opts)

List the invitations for this template

Returns a list of invitations for this template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of the template
opts = {
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #List the invitations for this template
  result = api_instance.get_template_invitations(template_id, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_invitations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of the template | 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Invitation&gt;**](Invitation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

