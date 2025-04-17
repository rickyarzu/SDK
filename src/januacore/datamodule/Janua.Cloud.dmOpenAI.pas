unit Janua.Cloud.dmOpenAI;

interface

uses
  System.SysUtils, System.Classes
  // Janua
    , Janua.Core.DataModule, Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  Janua.Core.Classes.Intf, Janua.Core.Types, Janua.Orm.Intf, OpenAI, OpenAI.Component.Chat,
  OpenAI.Component.Functions;

type
  TDataModule1 = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    OpenAIChatFunctions1: TOpenAIChatFunctions;
    OpenAIChat1: TOpenAIChat;
    OpenAIClient1: TOpenAIClient;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
