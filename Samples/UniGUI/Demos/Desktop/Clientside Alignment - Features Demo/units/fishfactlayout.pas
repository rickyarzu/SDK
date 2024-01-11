// Fishfact = Layout Demos
unit fishfactlayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses, uniImageList,
  Menus, uniMainMenu, DB, uniToolBar, uniMemo, uniDBMemo, uniStatusBar,
  uniDBNavigator, uniEdit, uniDBEdit, uniImage, uniDBImage, uniBasicGrid,
  uniDBGrid, uniLabel, DBClient, uniFileUpload, MainModule;

type
  TUniFishFactLayout = class(TUniFrame)
    DataSource1: TDataSource;
    ImageList1: TUniImageList;
    UniFileUpload1: TUniFileUpload;
    ClientDataSet1: TClientDataSet;
    UniSimplePanel1: TUniSimplePanel;
    UniSimplePanel7: TUniSimplePanel;
    UniDBGrid1: TUniDBGrid;
    UniContainerPanel3: TUniContainerPanel;
    UniSimplePanel6: TUniSimplePanel;
    UniDBImage1: TUniDBImage;
    UniDBNavigator1: TUniDBNavigator;
    UniLabel5: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniSimplePanel2: TUniSimplePanel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 procedure TUniFishFactLayout.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  FEditing : Boolean;
begin
  with ClientDataSet1 do
    if Active then
    begin
      FEditing := State in dsEditModes;
      if not FEditing then Edit;
      try
        TBlobField(FieldByName('Graphic')).LoadFromStream(AStream);
        if not FEditing then Post;
      except
        Cancel;
        raise;
      end;
    end;
end;

procedure TUniFishFactLayout.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'biolife.cds');
end;

initialization
  RegisterClass(TUniFishFactLayout);

end.
