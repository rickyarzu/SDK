unit Janua.VCL.dlgHtmlEditorAddImage;

interface

{$WARN SYMBOL_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, ExtCtrls, Buttons;

type
  TdlgVCLHtmlEditorAddImage = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    FileNameEdit: TEdit;
    SelectFileBtn: TSpeedButton;
    URLEdit: TEdit;
    RadioGroup1: TRadioGroup;
    AlignInline: TRadioButton;
    AlignLeft: TRadioButton;
    AlignRight: TRadioButton;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label3: TLabel;
    WidthEdit: TSpinEdit;
    AlignBackground: TRadioButton;
    HeightEdit: TSpinEdit;
    Label4: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    ElementCombo: TComboBox;
    EmbedBox: TCheckBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SelectFileBtnClick(Sender: TObject);
    procedure AlignBackgroundClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLHtmlEditorAddImage: TdlgVCLHtmlEditorAddImage;

implementation

{$R *.dfm}

procedure TdlgVCLHtmlEditorAddImage.AlignBackgroundClick(Sender: TObject);
begin
  ElementCombo.Visible := AlignBackground.Checked;
end;

procedure TdlgVCLHtmlEditorAddImage.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult=mrOk then
   if (trim(FileNameEdit.Text)='') and (trim(URLEdit.Text)='') then CanClose:=false;
end;

procedure TdlgVCLHtmlEditorAddImage.SelectFileBtnClick(Sender: TObject);
begin
  FileOpenDialog1.FileName:=FileNameEdit.Text;
  if FileOpenDialog1.Execute then FileNameEdit.Text:=FileOpenDialog1.FileName;
end;

end.
