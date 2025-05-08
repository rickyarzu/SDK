unit Janua.Test.FMX.frmChatGPTSimple;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types, FMX.Layouts, FMX.ListBox,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm3 = class(TForm)
    MemoMessages: TMemo;
    MemoMessage: TMemo;
    ButtonSend: TButton;
    ButtonStreamSend: TButton;
    AniIndicatorBusy: TAniIndicator;
    ListBox1: TListBox;
    btnAddFile: TButton;
    Button2: TButton;
    OpenDialogImg: TOpenDialog;
    procedure btnAddFileClick(Sender: TObject);
    procedure ButtonSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.btnAddFileClick(Sender: TObject);
begin
  if OpenDialogImg.Execute then
  begin
    var Item := TListBoxItem.Create(ListBox1);
    Item.Text := TPath.GetFileName(OpenDialogImg.FileName);
    Item.TagString := OpenDialogImg.FileName;
    Item.ItemData.Bitmap.LoadThumbnailFromFile(OpenDialogImg.FileName, 75, 75);
    ListBox1.AddObject(Item);
  end;
end;

procedure TForm3.ButtonSendClick(Sender: TObject);
begin
  MemoMessages.Lines.Add('User: ' + MemoMessage.Text);
  MemoMessages.Lines.Add('');
  OpenAIChat1.Stream := False;
  var Content: TArray<TMessageContent>;

  if not MemoMessage.Text.IsEmpty then
    Content := Content + [TMessageContent.CreateText(MemoMessage.Text)];

  for var i := 0 to ListBox1.Count - 1 do
    Content := Content + [TMessageContent.CreateImage(FileToBase64(ListBox1.ListItems[i].TagString))];

  OpenAIChat1.Send([TChatMessageBuild.User(Content)]);
end;

end.
