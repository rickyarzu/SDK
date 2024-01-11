unit Janua.core.Cloud.Server;

interface

uses
  // System Libraries ..............................................
  System.IOUtils, System.SysUtils, Generics.Collections, System.Math,

  // Http Libraries
  System.Net.HttpClient, System.Net.URLClient,


  // DB Libraries

  // TMS Components
  // Flexcel

  // Cloud Libraries
  Data.DB,
  // Json Xml Libraries

  System.JSON, System.JSONConsts,

  // Janua Core Libraries
  Janua.core.Classes, System.Classes, Janua.core.Functions, Janua.core.Servers,
  Janua.core.Cloud, Janua.core.System, Janua.core.Types,
  Janua.core.CustomControls, Janua.Controls.Intf;

type
  TJanuaCustomServerCloud = class(TJanuaCustomServer)
  private
    FLastPath: string;
    FFileStored: boolean;
    FFileRecord: TFileRecord;
    FFileLoaded: boolean;
    FXmlFile: TStrings;
    FFileType: TJanuaFileType;
    FFileName: TFileName;
    FTexTJanuaBlob: TJanuaBlob;
    // FBlobDictionary: TDictionary<int64, TJanuaBlob>;
    procedure SetLastPath(const Value: string);
    procedure SetFileLoaded(const Value: boolean);
    procedure SetFileRecord(const Value: TFileRecord);
    procedure SetFileStored(const Value: boolean);
    procedure SetXmlFile(const Value: TStrings);
    procedure SetServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetFileType(const Value: TJanuaFileType);
    procedure SetFileName(const Value: TFileName);

  protected
    FServerSystem: TJanuaCustomServerSystem;
    FBlob: TJanuaBlob;
    procedure AssignServerSession;
    function InternalOpenBlob(aId: int64): boolean; virtual; abstract;
    function StoreDBBlob: int64; virtual; abstract;
  public
    procedure StoreBlob(aField: TJanuaBlob); virtual;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadBlobFromFile(const aFileName: string); overload; virtual;
    procedure LoadBlobFromFile; overload; virtual;
    procedure LoadXmlFromFile; overload;
    procedure LoadXmlFromFile(const aFileName: string); overload;
    function LoadDBBlobFromFile(const aFileName: string): int64; virtual;
    function OpenBlob(aId: int64): boolean; virtual;
    procedure EmptyBlob;
  published
    property Blob: TJanuaBlob Read FBlob;
    property TexTJanuaBlob: TJanuaBlob read FTexTJanuaBlob;
    property LastPath: string read FLastPath write SetLastPath;
    property FileRecord: TFileRecord read FFileRecord write SetFileRecord;
    property FileLoaded: boolean read FFileLoaded write SetFileLoaded default False;
    property FileStored: boolean read FFileStored write SetFileStored default False;
    property XmlFile: TStrings read FXmlFile write SetXmlFile;
    property ServerSystem: TJanuaCustomServerSystem read FServerSystem write SetServerSystem;
    property FileType: TJanuaFileType read FFileType write SetFileType;
    property filename: TFileName read FFileName write SetFileName;
  end;

type
  /// <summary>
  /// Questo Controller connesso ad un Dataset che contenga un id immagine e
  /// ad un ServerCloud permette di caricare una immagine sul Cloud e
  /// Salvarla sul dataset. Se connesso ad una Immagine nelle classi
  /// discendenti può inoltre 'passare' il file all'oggetto Immagine
  /// </summary>
  TJanuaCustomImageController = class(TJanuaCoreController)
  private
    FFileName: TFileName;
    FPictureID: int64;
    FDataset: TDataset;
    FImageField: string;
    FAutoAssignPicture: boolean;
    FDataSource: TDataSource;
    procedure SetJanuaServerCloud(const Value: TJanuaCustomServerCloud);
    procedure SetFileName(const Value: TFileName);
    procedure SetPictureID(const Value: int64);
    procedure SetDataset(const Value: TDataset);
    procedure SetImageField(const Value: string);
    procedure SetAutoAssignPicture(const Value: boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure CheckDataSource;
    procedure SetLoadButton(const Value: TComponent);
  protected
    FJanuaServerCloud: TJanuaCustomServerCloud;
    FLoadButton: IJanuaButton;
    function GetLoadButton: TComponent;
    function LoadPicture: int64; virtual;
    // this loads an Image from the Cloud Server to the Image Object
    procedure AssignImageToPicture; virtual; abstract;
  public
    function AddPicture: boolean; overload;
    function AddPicture(aFolder: string): boolean; overload;
    function AddPictureFromFile(aFile: TFileName): boolean;
    procedure OnClickLoadPicture(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  published
    property JanuaServerCloud: TJanuaCustomServerCloud read FJanuaServerCloud write SetJanuaServerCloud;
    property PictureID: int64 read FPictureID write SetPictureID;
    property filename: TFileName read FFileName write SetFileName;
    property Dataset: TDataset read FDataset write SetDataset;
    property ImageField: string read FImageField write SetImageField;
    property AutoAssignPicture: boolean read FAutoAssignPicture write SetAutoAssignPicture default False;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property LoadButton: TComponent read GetLoadButton write SetLoadButton;

  end;

  {
    Type
    TFileNameProperty = class(TStringProperty)
    public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    end;

  }

implementation

uses Janua.Application.Framework;

{ TJanuaCustomServerCloud }

constructor TJanuaCustomServerCloud.Create(AOwner: TComponent);
begin
  inherited;
  // FBlobDictionary := TDictionary<int64, TJanuaBlob>.Create;

end;

procedure TJanuaCustomServerCloud.LoadXmlFromFile(const aFileName: string);
var
  temp: TStringList;
begin
  if FileExists(aFileName) then
  begin
    temp := TStringList.Create;
    try
      temp.LoadFromFile(aFileName, TEncoding.UTF8);
      self.FXmlFile.Assign(temp);
    finally
      FreeAndNil(temp);
    end;
  end;
end;

function TJanuaCustomServerCloud.OpenBlob(aId: int64): boolean;
begin

  Result := self.InternalOpenBlob(aId);

end;

procedure TJanuaCustomServerCloud.AssignServerSession;
begin
  if Assigned(self.FServerSystem) and self.FServerSystem.Active then
    self.JanuaServerSession := self.FServerSystem.JanuaServerSession;
end;

destructor TJanuaCustomServerCloud.Destroy;
begin
  // if Assigned(FBlobDictionary) then FBlobDictionary.Free;
  inherited;
end;

procedure TJanuaCustomServerCloud.EmptyBlob;
begin
  self.FBlob.Clear;
end;

procedure TJanuaCustomServerCloud.LoadBlobFromFile;
begin
  // if Assigned(self.FJanuaOS) and Assigned(self.FApplicationProfile) then
  case TJanuaApplication.ApplicationType of
    jatClientWin:
      begin

      end;
    jatClientTablet:
      begin

      end;
  end;
end;

function TJanuaCustomServerCloud.LoadDBBlobFromFile(const aFileName: string): int64;
begin
  // implement this function directly on server
  FBlob.LoadFromFile(aFileName);
  Result := self.StoreDBBlob;
  // if Result > 0  then self.FBlobDictionary.Add(Result, self.FBlob);

end;

procedure TJanuaCustomServerCloud.LoadXmlFromFile;
begin
  // if Assigned(self.FJanuaOS) and Assigned(self.FApplicationProfile) then
  case TJanuaApplication.ApplicationType of
    jatClientWin:
      begin

      end;
    jatClientTablet:
      begin

      end;
  end;
end;

procedure TJanuaCustomServerCloud.LoadBlobFromFile(const aFileName: string);
begin
  if FileExists(aFileName) then
    self.FBlob.LoadFromFile(aFileName);
end;

procedure TJanuaCustomServerCloud.SetFileLoaded(const Value: boolean);
begin
  FFileLoaded := Value;
  if self.FFileType in [jftXml, jftText] then
  begin
    if self.FFileName > '' then
      self.LoadXmlFromFile(self.FFileName);
  end
  else
  begin
    if self.FFileName > '' then
      self.LoadBlobFromFile(self.FFileName);
  end;

end;

procedure TJanuaCustomServerCloud.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TJanuaCustomServerCloud.SetFileRecord(const Value: TFileRecord);
begin
  FFileRecord := Value;
end;

procedure TJanuaCustomServerCloud.SetFileStored(const Value: boolean);
begin
  FFileStored := Value;
end;

procedure TJanuaCustomServerCloud.SetFileType(const Value: TJanuaFileType);
begin
  FFileType := Value;
end;

procedure TJanuaCustomServerCloud.SetLastPath(const Value: string);
begin
  FLastPath := Value;
end;

procedure TJanuaCustomServerCloud.SetServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FServerSystem := Value;
  AssignServerSession;

end;

procedure TJanuaCustomServerCloud.SetXmlFile(const Value: TStrings);
begin
  FXmlFile := Value;
end;

procedure TJanuaCustomServerCloud.StoreBlob(aField: TJanuaBlob);
begin
  // aField := TJanuaBlob.Create(False);
  self.FBlob.Assign(aField);
end;

{ TJanuaCustomImageController }

function TJanuaCustomImageController.AddPicture: boolean;
begin
  if TJanuaApplication.Dialogs.JOpenPicture then
  begin
    self.FFileName := TJanuaApplication.Dialogs.SelectedFile;
    self.PictureID := self.LoadPicture;
    AssignImageToPicture;
    Result := True;
  end
  else
    Result := False;
end;

function TJanuaCustomImageController.AddPicture(aFolder: string): boolean;
begin
  Result := False;
  if DirectoryExists(aFolder) then
  begin
    if TJanuaApplication.Dialogs.JOpenPicture(aFolder) then
    begin
      self.FFileName := TJanuaApplication.Dialogs.SelectedFile;
      self.PictureID := self.LoadPicture;
      AssignImageToPicture;
    end
    else
      Result := False;
  end
end;

function TJanuaCustomImageController.AddPictureFromFile(aFile: TFileName): boolean;
begin
  Result := False;
  if (aFile > '') and FileExists(aFile) then
  begin
    Result := self.LoadPicture > 0;
    AssignImageToPicture;
  end;

end;

function TJanuaCustomImageController.LoadPicture: int64;
begin
  if Assigned(self.FJanuaServerCloud) and FileExists(self.FFileName) then
  begin
    Result := self.FJanuaServerCloud.LoadDBBlobFromFile(self.FFileName);
    if Assigned(FDataset) and (FImageField > '') and Assigned(FDataset.FindField(FImageField)) then
    begin
      if self.FDataset.Active and (self.FDataset.RecordCount > 0) then
      begin
        self.FDataset.Edit;
        self.FDataset.FieldByName(self.FImageField).Value := self.FPictureID;
        self.FDataset.Post;
      end;
    end;
  end
  else
  begin
    Result := 0;
  end;
end;

procedure TJanuaCustomImageController.OnClickLoadPicture(Sender: TObject);
begin
  self.AddPicture;
end;

procedure TJanuaCustomImageController.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  if (Field.FieldName = FImageField) and (Field.AsLargeInt <> self.FPictureID) then
  begin
    self.FPictureID := FDataset.FieldByName(self.FImageField).AsLargeInt;
    self.AssignImageToPicture;
  end;

end;

function TJanuaCustomImageController.GetLoadButton: TComponent;
begin
  Result := self.FLoadButton.Component
end;

procedure TJanuaCustomImageController.CheckDataSource;
begin
  if Assigned(FDataSource) then
  begin
    if not Assigned(self.FDataset) then
      self.FDataset := FDataSource.Dataset;
    self.DataSource.OnDataChange := self.DataSourceDataChange;
  end
  else if Assigned(self.FDataset) and not Assigned(self.FDataSource) then
  begin
    self.FDataSource := TDataSource.Create(self);
    self.DataSource.OnDataChange := self.DataSourceDataChange;
  end;
end;

procedure TJanuaCustomImageController.SetAutoAssignPicture(const Value: boolean);
begin
  FAutoAssignPicture := Value;
end;

procedure TJanuaCustomImageController.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaCustomImageController.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  CheckDataSource;
end;

procedure TJanuaCustomImageController.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TJanuaCustomImageController.SetImageField(const Value: string);
begin
  FImageField := Value;
end;

procedure TJanuaCustomImageController.SetJanuaServerCloud(const Value: TJanuaCustomServerCloud);
begin
  FJanuaServerCloud := Value;
end;

procedure TJanuaCustomImageController.SetLoadButton(const Value: TComponent);
begin
  Janua.core.Functions.ExecProc(
    procedure
    begin
      FLoadButton := FJanuaControlBuilder.SetButtonControl(FLoadButton, Value, 'btnLoadImage', 'Carica Immagine');
      // Bind Name To Field .....  Caption := FUserProfile.Address.DistrictID.ToString;
      // ha ancora senso gstire il Region ID nell'address?????
      // FUserProfile.Bind(FUserProfile.Address_street);
    end, 'SetLoadButton', self);
  // FController.SetComboBox(Value, Combo, FcboCouncil, FAnagDoctor.ListCouncils);

end;

procedure TJanuaCustomImageController.SetPictureID(const Value: int64);
begin
  FPictureID := Value;
end;

end.
