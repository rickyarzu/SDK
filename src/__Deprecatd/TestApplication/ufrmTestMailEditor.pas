unit ufrmTestMailEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMailModelVCL, Janua.Core.Mail, AdvOfficeHint, AdvToolBar, AdvToolBarStylers,
  Vcl.ExtDlgs, AdvMemoStylerManager, AdvMemo, AdvmWS, AdvRichEditorIO, System.ImageList, Vcl.ImgList, JvImageList,
  Janua.Core.Classes, Janua.Core.Customcontrols, Janua.VCL.Dialogs, AdvAppStyler, Vcl.OleCtrls, SHDocVw, AdvGlowButton,
  AdvRichEditorToolBar, AdvToolBarExt, AdvScrollControl, AdvRichEditorBase, AdvRichEditor, AdvOfficePager, Vcl.StdCtrls,
  AdvListEditor, Vcl.ExtCtrls, Shader, AdvmPS, System.Actions, Vcl.ActnList, Vcl.Buttons, AdvCodeList, AdvMenus,
  AdvMenuStylers;

type
  TfrmMailModelVCL2 = class(TfrmMailModelVCL)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMailModelVCL2: TfrmMailModelVCL2;

implementation

{$R *.dfm}

procedure TfrmMailModelVCL2.FormCreate(Sender: TObject);
begin
  inherited;
  SourceList := TObjectList.Create;
  SourceList.Add(TAdvMemoSource.Create(self));
  TAdvMemoSource(SourceList.Items[SourceIndex]).SyntaxStyler := AdvMemo1.SyntaxStyles;
  SourceIndex := 0;
  AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
end;

end.
