# CammioAPI::QuestionsApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_question**](QuestionsApi.md#add_question) | **POST** /questions | Create a new question
[**delete_question**](QuestionsApi.md#delete_question) | **DELETE** /questions/{questionId} | Delete a question
[**get_question**](QuestionsApi.md#get_question) | **GET** /questions/{questionId} | Find a question by ID
[**get_questions**](QuestionsApi.md#get_questions) | **GET** /questions | Returns the list of questions
[**update_question**](QuestionsApi.md#update_question) | **PATCH** /questions/{questionId} | Edit a question by ID



## add_question

> Question add_question(template_id, text, opts)

Create a new question

With this resource you can create a question for a template. Optionally, you can add a video. 

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

api_instance = CammioAPI::QuestionsApi.new
template_id = 56 # Integer | 
text = 'text_example' # String | 
opts = {
  answer_time: 60, # Integer | Values are seconds 
  video: File.new('/path/to/file') # File | 
}

begin
  #Create a new question
  result = api_instance.add_question(template_id, text, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling QuestionsApi->add_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**|  | 
 **text** | **String**|  | 
 **answer_time** | **Integer**| Values are seconds  | [optional] [default to 60]
 **video** | **File**|  | [optional] 

### Return type

[**Question**](Question.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## delete_question

> delete_question(question_id)

Delete a question

With this resource, you can delete a question. Use with caution! 

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

api_instance = CammioAPI::QuestionsApi.new
question_id = 56 # Integer | Question id to delete

begin
  #Delete a question
  api_instance.delete_question(question_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling QuestionsApi->delete_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**| Question id to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_question

> Question get_question(question_id)

Find a question by ID

With this resource you can get the details of a question 

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

api_instance = CammioAPI::QuestionsApi.new
question_id = 56 # Integer | ID of question to return

begin
  #Find a question by ID
  result = api_instance.get_question(question_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling QuestionsApi->get_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**| ID of question to return | 

### Return type

[**Question**](Question.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_questions

> Array&lt;Question&gt; get_questions(template_id)

Returns the list of questions

This resource returns all questions for the selected template 

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

api_instance = CammioAPI::QuestionsApi.new
template_id = 56 # Integer | Questions belonging to template

begin
  #Returns the list of questions
  result = api_instance.get_questions(template_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling QuestionsApi->get_questions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Questions belonging to template | 

### Return type

[**Array&lt;Question&gt;**](Question.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_question

> Question update_question(question_id, opts)

Edit a question by ID

With this resource you can edit a question for a template. Optionally, you can add a video. 

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

api_instance = CammioAPI::QuestionsApi.new
question_id = 56 # Integer | ID of question to edit
opts = {
  text: 'text_example', # String | 
  answer_time: 60, # Integer | Values are seconds 
  video: File.new('/path/to/file') # File | 
}

begin
  #Edit a question by ID
  result = api_instance.update_question(question_id, opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling QuestionsApi->update_question: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**| ID of question to edit | 
 **text** | **String**|  | [optional] 
 **answer_time** | **Integer**| Values are seconds  | [optional] [default to 60]
 **video** | **File**|  | [optional] 

### Return type

[**Question**](Question.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

