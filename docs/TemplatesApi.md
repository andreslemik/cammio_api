# CammioAPI::TemplatesApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_template**](TemplatesApi.md#add_template) | **POST** /templates | Create a video interview template
[**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Deletes a template
[**get_template**](TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Find template by ID
[**get_template_interviews**](TemplatesApi.md#get_template_interviews) | **GET** /templates/{templateId}/interviews | List the interviews for this template
[**get_template_invitations**](TemplatesApi.md#get_template_invitations) | **GET** /templates/{templateId}/invitations | List the invitations for this template
[**get_template_killer_questions**](TemplatesApi.md#get_template_killer_questions) | **GET** /templates/{templateId}/killer_questions | List the killer question for this template
[**get_template_questions**](TemplatesApi.md#get_template_questions) | **GET** /templates/{templateId}/questions | List the question for this template
[**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | Returns a list of templates
[**update_template**](TemplatesApi.md#update_template) | **PATCH** /templates/{templateId} | Edit a template by ID



## add_template

> Template add_template(title, type, opts)

Create a video interview template

With this resource you can create a video interview template. 

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

api_instance = CammioAPI::TemplatesApi.new
title = 'title_example' # String | 
type = 'automated' # String | 
opts = {
  language: 'en', # String | 
  reference_id: 'reference_id_example', # String | 
  redirect_url: 'redirect_url_example', # String | 
  answer_time: 120, # Integer | Values are seconds 
  max_recordings: 2, # Integer | 0 means autostart, -1 means unlimited 
  expires_after: 14, # Integer | Values are days 
  data_retention: 365, # Integer | Values are days 
  private: false, # Boolean | 
  continuous: false, # Boolean | 
  prohibit_playback: false, # Boolean | 
  allow_text_answers: false # Boolean | 
}

begin
  #Create a video interview template
  result = api_instance.add_template(title, type, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->add_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**|  | 
 **type** | **String**|  | [default to &#39;automated&#39;]
 **language** | **String**|  | [optional] [default to &#39;en&#39;]
 **reference_id** | **String**|  | [optional] 
 **redirect_url** | **String**|  | [optional] 
 **answer_time** | **Integer**| Values are seconds  | [optional] [default to 120]
 **max_recordings** | **Integer**| 0 means autostart, -1 means unlimited  | [optional] [default to 2]
 **expires_after** | **Integer**| Values are days  | [optional] [default to 14]
 **data_retention** | **Integer**| Values are days  | [optional] [default to 365]
 **private** | **Boolean**|  | [optional] [default to false]
 **continuous** | **Boolean**|  | [optional] [default to false]
 **prohibit_playback** | **Boolean**|  | [optional] [default to false]
 **allow_text_answers** | **Boolean**|  | [optional] [default to false]

### Return type

[**Template**](Template.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## delete_template

> delete_template(template_id)

Deletes a template

With this resource, you can delete a template. Only templates without invitations and interviews can be deleted 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | Template id to delete

begin
  #Deletes a template
  api_instance.delete_template(template_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->delete_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template id to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> Template get_template(template_id)

Find template by ID

This resource returns the details of a template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of template to return

begin
  #Find template by ID
  result = api_instance.get_template(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template: #{e}"
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

> Array&lt;InlineResponse2002&gt; get_template_interviews(template_id, opts)

List the interviews for this template

Returns a list of interviews for this template. 

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

[**Array&lt;InlineResponse2002&gt;**](InlineResponse2002.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_invitations

> Array&lt;InlineResponse2001&gt; get_template_invitations(template_id, opts)

List the invitations for this template

Returns a list of invitations for this template. 

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

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_killer_questions

> Array&lt;KillerQuestion&gt; get_template_killer_questions(template_id)

List the killer question for this template

Returns a list of killer questions for this template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of the template

begin
  #List the killer question for this template
  result = api_instance.get_template_killer_questions(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_killer_questions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of the template | 

### Return type

[**Array&lt;KillerQuestion&gt;**](KillerQuestion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_questions

> Array&lt;Question&gt; get_template_questions(template_id)

List the question for this template

Returns a list of questions for this template. 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of the template

begin
  #List the question for this template
  result = api_instance.get_template_questions(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_questions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of the template | 

### Return type

[**Array&lt;Question&gt;**](Question.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> Array&lt;InlineResponse2004&gt; get_templates(opts)

Returns a list of templates

This resource returns a list of all available templates. 

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
  result = api_instance.get_templates(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->get_templates: #{e}"
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

[**Array&lt;InlineResponse2004&gt;**](InlineResponse2004.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_template

> Template update_template(template_id, opts)

Edit a template by ID

With this resource, you can update an existing template 

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

api_instance = CammioAPI::TemplatesApi.new
template_id = 56 # Integer | ID of template to return
opts = {
  title: 'title_example', # String | 
  language: 'language_example', # String | 
  reference_id: 'reference_id_example', # String | 
  redirect_url: 'redirect_url_example', # String | 
  answer_time: 60, # Integer | Values are seconds 
  max_recordings: 2, # Integer | 0 means autostart, -1 means unlimited 
  expires_after: 60, # Integer | Values are days 
  data_retention: 365, # Integer | Values are days 
  private: false, # Boolean | 
  continuous: false, # Boolean | 
  prohibit_playback: false, # Boolean | 
  allow_text_answers: false # Boolean | 
}

begin
  #Edit a template by ID
  result = api_instance.update_template(template_id, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling TemplatesApi->update_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| ID of template to return | 
 **title** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **reference_id** | **String**|  | [optional] 
 **redirect_url** | **String**|  | [optional] 
 **answer_time** | **Integer**| Values are seconds  | [optional] [default to 60]
 **max_recordings** | **Integer**| 0 means autostart, -1 means unlimited  | [optional] [default to 2]
 **expires_after** | **Integer**| Values are days  | [optional] [default to 60]
 **data_retention** | **Integer**| Values are days  | [optional] [default to 365]
 **private** | **Boolean**|  | [optional] [default to false]
 **continuous** | **Boolean**|  | [optional] [default to false]
 **prohibit_playback** | **Boolean**|  | [optional] [default to false]
 **allow_text_answers** | **Boolean**|  | [optional] [default to false]

### Return type

[**Template**](Template.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

