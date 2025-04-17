inherited DataModule1: TDataModule1
  Height = 220
  Width = 571
  PixelsPerInch = 120
  object OpenAIChatFunctions1: TOpenAIChatFunctions
    Items = <
      item
        Description = 'Get the current weather in a given location'
        Name = 'get_current_weather'
        Parameters = 
          '{'#13#10'  "type": "object",'#13#10'  "properties": {'#13#10'      "location": {"t' +
          'ype": "string", "description": "The city and state, e.g. San Fra' +
          'ncisco, CA"},'#13#10'      "unit": {"type": "string", "enum": ["celsiu' +
          's", "fahrenheit"]}'#13#10'  },'#13#10'  "required": ["location"]'#13#10'}'
      end>
    Left = 384
    Top = 96
  end
  object OpenAIChat1: TOpenAIChat
    Client = OpenAIClient1
    Functions = OpenAIChatFunctions1
    Model = 'babbage-002'
    Temperature = 1.000000000000000000
    TopP = 1.000000000000000000
    MaxTokens = 4096
    Left = 272
    Top = 48
  end
  object OpenAIClient1: TOpenAIClient
    Token = 'sk-proj-tTsxWQ2cZBn59GSD0wgeT3BlbkFJLBtHvfG9DqFwM8nwInOZ'
    BaseURL = 'https://api.openai.com/v1'
    Organization = 'org-j8lCTp12ss14C8q7lkRPzVf1'
    Left = 168
    Top = 96
  end
end
