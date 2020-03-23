# CammioAPI::KillerQuestionsApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_killer_question**](KillerQuestionsApi.md#add_killer_question) | **POST** /killer_questions | Create a new killer question
[**delete_killer_question**](KillerQuestionsApi.md#delete_killer_question) | **DELETE** /killer_questions/{killerQuestionId} | Delete a killer question
[**get_killer_question**](KillerQuestionsApi.md#get_killer_question) | **GET** /killer_questions/{killerQuestionId} | Find a killer question by ID
[**get_killer_questions**](KillerQuestionsApi.md#get_killer_questions) | **GET** /killer_questions | Returns the list of killer questions
[**update_question**](KillerQuestionsApi.md#update_question) | **PATCH** /killer_questions/{killerQuestionId} | Edit a killer question by ID



## add_killer_question

> KillerQuestion add_killer_question(template_id, text, index, weight)

Create a new killer question

With this resource you can create a killer question for a template 

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

api_instance = CammioAPI::KillerQuestionsApi.new
template_id = 56 # Integer | 
text = 'text_example' # String | 
index = 56 # Integer | 
weight = 56 # Integer | 

begin
  #Create a new killer question
  result = api_instance.add_killer_question(template_id, text, index, weight)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling KillerQuestionsApi->add_killer_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**|  | 
 **text** | **String**|  | 
 **index** | **Integer**|  | 
 **weight** | **Integer**|  | 

### Return type

[**KillerQuestion**](KillerQuestion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## delete_killer_question

> delete_killer_question(killer_question_id)

Delete a killer question

With this resource, you can delete a killer question. Use with caution! 

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

api_instance = CammioAPI::KillerQuestionsApi.new
killer_question_id = 56 # Integer | Killer question id to delete

begin
  #Delete a killer question
  api_instance.delete_killer_question(killer_question_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling KillerQuestionsApi->delete_killer_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **killer_question_id** | **Integer**| Killer question id to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_killer_question

> KillerQuestion get_killer_question(killer_question_id)

Find a killer question by ID

With this resource you can get the details of a killer question 

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

api_instance = CammioAPI::KillerQuestionsApi.new
killer_question_id = 56 # Integer | ID of killer question to return

begin
  #Find a killer question by ID
  result = api_instance.get_killer_question(killer_question_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling KillerQuestionsApi->get_killer_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **killer_question_id** | **Integer**| ID of killer question to return | 

### Return type

[**KillerQuestion**](KillerQuestion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_killer_questions

> Array&lt;KillerQuestion&gt; get_killer_questions(template_id)

Returns the list of killer questions

This resource returns all killer questions for the selected template 

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

api_instance = CammioAPI::KillerQuestionsApi.new
template_id = 56 # Integer | Killer questions belonging to template

begin
  #Returns the list of killer questions
  result = api_instance.get_killer_questions(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling KillerQuestionsApi->get_killer_questions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Killer questions belonging to template | 

### Return type

[**Array&lt;KillerQuestion&gt;**](KillerQuestion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_question

> KillerQuestion update_question(killer_question_id, opts)

Edit a killer question by ID

With this resource you can edit a killer question for a template. 

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

api_instance = CammioAPI::KillerQuestionsApi.new
killer_question_id = 56 # Integer | ID of killer question to edit
opts = {
  text: 'text_example', # String | 
  weight: 56, # Integer | 
  index: 56 # Integer | 
}

begin
  #Edit a killer question by ID
  result = api_instance.update_question(killer_question_id, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling KillerQuestionsApi->update_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **killer_question_id** | **Integer**| ID of killer question to edit | 
 **text** | **String**|  | [optional] 
 **weight** | **Integer**|  | [optional] 
 **index** | **Integer**|  | [optional] 

### Return type

[**KillerQuestion**](KillerQuestion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

