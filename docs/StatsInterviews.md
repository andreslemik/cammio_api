# CammioAPI::StatsInterviews

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candidates** | [**StatsInterviewsCandidates**](StatsInterviewsCandidates.md) |  | [optional] 
**reviewers** | [**StatsInterviewsReviewers**](StatsInterviewsReviewers.md) |  | [optional] 
**forwarded** | [**StatsInterviewsForwarded**](StatsInterviewsForwarded.md) |  | [optional] 
**averages** | [**StatsInterviewsAverages**](StatsInterviewsAverages.md) |  | [optional] 
**feedback** | [**StatsInterviewsFeedback**](StatsInterviewsFeedback.md) |  | [optional] 
**platform** | [**StatsInterviewsPlatform**](StatsInterviewsPlatform.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::StatsInterviews.new(candidates: null,
                                 reviewers: null,
                                 forwarded: null,
                                 averages: null,
                                 feedback: null,
                                 platform: null)
```


