# CammioAPI::InlineObject5

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**language** | **String** |  | [optional] 
**reference_id** | **String** |  | [optional] 
**redirect_url** | **String** |  | [optional] 
**answer_time** | **Integer** | Values are seconds  | [optional] [default to ANSWER_TIME.N60]
**max_recordings** | **Integer** | 0 means autostart, -1 means unlimited  | [optional] [default to MAX_RECORDINGS.N2]
**expires_after** | **Integer** | Values are days  | [optional] [default to 60]
**data_retention** | **Integer** | Values are days  | [optional] [default to 365]
**private** | **Boolean** |  | [optional] [default to false]
**continuous** | **Boolean** |  | [optional] [default to false]
**prohibit_playback** | **Boolean** |  | [optional] [default to false]
**allow_text_answers** | **Boolean** |  | [optional] [default to false]

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::InlineObject5.new(title: null,
                                 language: null,
                                 reference_id: null,
                                 redirect_url: null,
                                 answer_time: null,
                                 max_recordings: null,
                                 expires_after: null,
                                 data_retention: null,
                                 private: null,
                                 continuous: null,
                                 prohibit_playback: null,
                                 allow_text_answers: null)
```


