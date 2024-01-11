//AllFeatures: Grid,MultiSelect,icon-multi-selector
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, DBClient, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, uniImage, uniDBImage, uniEdit,
  uniDBEdit, uniStatusBar, uniLabel;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniBitBtn1: TUniBitBtn;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniDBImage1: TUniDBImage;
    UniDBEdit1: TUniDBEdit;
    UniStatusBar1: TUniStatusBar;
    UniLabel1: TUniLabel;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniDBGrid1SelectionChange(Sender: TObject);
  private
    procedure CopySelected(ADelete: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.CopySelected(ADelete: Boolean);
var
  I: Integer;
  B : TBookmark;
begin
  if UniDBGrid1.SelectedRows.Count > 0 then
  begin
    ClientDataSet1.DisableControls;

    // save cursor location
    B := ClientDataSet1.GetBookmark;
    try
      for I := 0 to UniDBGrid1.SelectedRows.Count - 1 do
      begin
        ClientDataSet1.Bookmark := UniDBGrid1.SelectedRows[I];

        ClientDataSet2.Append;
        ClientDataSet2.CopyFields(ClientDataSet1);
        ClientDataSet2.Post;
      end;
    finally
      if ADelete then
        UniDBGrid1.SelectedRows.Delete;

      // restore cursor location
      if ClientDataSet1.BookmarkValid(B) then
        ClientDataSet1.GotoBookmark(B);

      ClientDataSet1.FreeBookmark(B);
      ClientDataSet1.EnableControls;
    end;
  end;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  CopySelected(False);
end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  CopySelected(True);
end;

procedure TMainForm.UniBitBtn3Click(Sender: TObject);
begin
  ClientDataSet2.EmptyDataSet;
end;

procedure TMainForm.UniDBGrid1SelectionChange(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := 'Selected: ' + IntToStr(UniDBGrid1.SelectedRows.Count);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
