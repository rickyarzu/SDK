program JanuaOpenAISimpleChat;

uses
  System.StartUpCopy,
  FMX.Forms,
  OpenAI.API.Params,
  OpenAI.API,
  OpenAI.Audio,
  OpenAI.Chat.Functions,
  OpenAI.Chat.Functions.Samples,
  OpenAI.Chat,
  OpenAI.Completions,
  OpenAI.Component.Chat,
  OpenAI.Edits,
  OpenAI.Embeddings,
  OpenAI.Engines,
  OpenAI.Errors,
  OpenAI.Files,
  OpenAI.FineTunes,
  OpenAI.FineTuning,
  OpenAI.Images,
  OpenAI.Models,
  OpenAI.Moderations,
  OpenAI,
  OpenAI.Utils.ChatHistory,
  OpenAI.Component.Functions,
  OpenAI.Assistants,
  OpenAI.Types,
  OpenAI.Utils.ObjectHolder,
  OpenAI.Utils.Base64,
  Janua.FMX.Demos.OpenAI.Chat.Main in 'FMX\Janua.FMX.Demos.OpenAI.Chat.Main.pas' {FormChat};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormChat, FormChat);
  Application.Run;
end.
