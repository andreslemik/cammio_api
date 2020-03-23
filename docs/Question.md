# CammioAPI::Question

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**text** | **String** |  | [optional] 
**index** | **Integer** |  | [optional] 
**answer_time** | **Integer** | Values are seconds  | [optional] [default to ANSWER_TIME.N120]

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::Question.new(id: null,
                                 text: null,
                                 index: null,
                                 answer_time: null)
```


