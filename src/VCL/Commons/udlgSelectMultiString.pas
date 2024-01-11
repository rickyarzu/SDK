unit udlgSelectMultiString;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList, Vcl.ImgList;

type
  TdlgSelectMultiString = class(TForm)
    ImageList1: TImageList;
  private
    FSelection: NativeInt;
    procedure SetSelection(const Value: NativeInt);

    { Private declarations }
  public
    { Public declarations }
    property Selection: NativeInt read FSelection write SetSelection;
    procedure OnButtonClick(Sender: TObject);
  end;

var
  dlgSelectMultiString: TdlgSelectMultiString;

implementation

{$R *.dfm}

{ TdlgSelectMultiString }

procedure TdlgSelectMultiString.OnButtonClick(Sender: TObject);
begin
  FSelection := TButton(Sender).Tag;
  Close;
end;

procedure TdlgSelectMultiString.SetSelection(const Value: NativeInt);
begin
  FSelection := Value;
end;



end.
