# CammioAPI::InlineObject6

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** |  | 
**text** | **String** |  | 
**answer_time** | **Integer** | Values are seconds  | [optional] [default to ANSWER_TIME.N60]
**video** | **File** |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::InlineObject6.new(template_id: null,
                                 text: null,
                                 answer_time: null,
                                 video: null)
```


