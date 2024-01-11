unit Janua.VCL.Cloud.Images;

interface

uses
  System.Classes, VCL.Dialogs, VCL.ExtCtrls, Janua.Cloud.Images.Intf, Janua.Core.Classes,
  Janua.Cloud.Server.Intf, Janua.Cloud.Server.Impl, Janua.Cloud.Files.Intf, Data.DB,
  System.SysUtils;

type
  TJanuaVCLImagesManager = class(TComponent)
  private
    FIMageList: { Janua.Cloud.Images.Intf. } IJanuaImageMemoryStorage;
    FSelectedImage: { Janua.Cloud.Images.Intf. } IJanuaImageRecord;
    FImageStorage: IJanuaImageStorage;
    FStorage: IJanuaCloudFileStorage;
    FModified: Boolean;
    procedure SaveSelectedToImage;
  private
    FImage: TImage;
    FOpenDialog: TOpenDialog;
    FAfterOpenFile: TNotifyEvent;
    FAutoSave: Boolean;
    FDataSource: TDataSource;
    FImageIDField: TLargeIntField;
    FAfterUpdate: TNotifyEvent;
    FIsUpdating: Boolean;
    procedure SetImage(const Value: TImage);
    procedure SetOpenDialog(const Value: TOpenDialog);
    procedure SetAfterOpenFile(const Value: TNotifyEvent);
    procedure SetAutoSave(const Value: Boolean);
    procedure OpenUsingImage(aFileName: TFileName);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetImageIDField(const Value: TLargeIntField);
    procedure SetFileList(const Value: IJanuaImageMemoryStorage);
    procedure SetSelectedFile(const Value: IJanuaImageRecord);
    function CheckSelectedImage: Boolean;
    procedure SetAfterUpdate(const Value: TNotifyEvent);
    procedure SetIsUpdating(const Value: Boolean);
  public
    /// <summary>Lista delle Immagini prsenti nello Storage </summary>
    property ImagesList: IJanuaImageMemoryStorage read FIMageList write SetFileList;
    /// <summary>Immagine selezionata, di tipo JanuaImageRecord.  </summary>
    property SelectedImage: IJanuaImageRecord read FSelectedImage write SetSelectedFile;
  public
    constructor Create(AOwner: TComponent); override;
    // constructor CreateWithStorage(AOwner: TComponent; aStorage: IJanuaCloudFileStorage);
    procedure Activate;
    function OpenFile(aFileName: TFileName = ''): Boolean; overload;
    procedure dsArticlesDataChange(Sender: TObject; Field: TField);
    function SaveImageToStorage: Int64;
    procedure LoadImageByID(aID: Int64; aProc: TProc);
    procedure Main_image_idChange(Sender: TField);
    procedure UpdateSelectedImage;
  published
    property Image: TImage read FImage write SetImage;
    property OpenDialog: TOpenDialog read FOpenDialog write SetOpenDialog;
    property AfterOpenFile: TNotifyEvent read FAfterOpenFile write SetAfterOpenFile;
    property AutoSave: Boolean read FAutoSave write SetAutoSave default False;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property ImageIDField: TLargeIntField read FImageIDField write SetImageIDField;
    property AfterUpdate: TNotifyEvent read FAfterUpdate write SetAfterUpdate;
    property IsUpdating: Boolean read FIsUpdating write SetIsUpdating;
  end;

  TOpenThread = class(TThread)
  private
    FException: Exception;
    FImageStorage: IJanuaImageStorage;
    FIMageList: IJanuaImageMemoryStorage;
    FImage: TImage;
    FID: Int64;
    FSelectedImage: IJanuaImageRecord;
    FProc: TProc;
    procedure DoHandleException;
    procedure SetID(const Value: Int64);
    procedure SetImage(const Value: TImage);
    procedure SetIMageList(const Value: IJanuaImageMemoryStorage);
    procedure SetImageStorage(const Value: IJanuaImageStorage);
    procedure SetSelectedImage(const Value: IJanuaImageRecord);
    procedure SetProc(const Value: TProc);
  protected
    procedure Execute; override;
    procedure HandleException; virtual;
  public
    property ID: Int64 read FID write SetID;
    property ImageStorage: IJanuaImageStorage read FImageStorage write SetImageStorage;
    property Image: TImage read FImage write SetImage;
    property IMageList: IJanuaImageMemoryStorage read FIMageList write SetIMageList;
    property SelectedImage: IJanuaImageRecord read FSelectedImage write SetSelectedImage;
    property Proc: TProc read FProc write SetProc;
  public
    constructor Create(Suspended: Boolean; aID: Int64; aImageStorage: IJanuaImageStorage;
      aIMageList: IJanuaImageMemoryStorage; aImage: TImage; aSelectedImage: IJanuaImageRecord;
      aProc: TProc); overload;
  end;

implementation

uses
  Spring, Janua.Application.Framework, Janua.Cloud.Images.Impl;

{ TJanuaVCLImagesManager }

constructor TJanuaVCLImagesManager.Create(AOwner: TComponent);
begin
  try
    inherited;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaImageRecord, FSelectedImage) then
      raise Exception.Create('TJanuaVCLImagesManager.Create IJanuaImageRecord not set ');
    FAutoSave := False;
    FModified := False;
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.Create ' + e.Message);
  end;
end;

procedure TJanuaVCLImagesManager.Activate;
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaCloudFileStorage, FStorage) then
    raise Exception.Create('TJanuaVCLImagesManager.Create IJanuaImageRecord not set ');
  FImageStorage := TJanuaImageStorage.Create(FStorage);
  FIMageList := TJanuaImageMemoryStorage.Create(FImageStorage);
end;

function TJanuaVCLImagesManager.CheckSelectedImage: Boolean;
begin
  try
    Result := not Assigned(FSelectedImage);
    if not Result then
      Result := (FImageIDField.AsLargeInt <> FSelectedImage.ID) and (FImageIDField.AsLargeInt > 0)
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.CheckSelectedImage ' + e.Message);

  end;
end;

procedure TJanuaVCLImagesManager.dsArticlesDataChange(Sender: TObject; Field: TField);
begin
  try
    if not self.IsUpdating and Assigned(FImageIDField) then
    begin
      if Assigned(FAfterUpdate) then
        FAfterUpdate(self);
      UpdateSelectedImage;
    end;
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.dsArticlesDataChange ' + e.Message);

  end;
end;

procedure TJanuaVCLImagesManager.LoadImageByID(aID: Int64; aProc: TProc); // : Boolean;
begin
  // FImageIDField.AsLargeInt := FSelectedImage;
  try
    if aID <> 0 then
    begin
      Guard.CheckNotNull(FImageStorage, 'TJanuaVCLImagesManager.LoadImageByID FImageStorage is nil ');
      Guard.CheckNotNull(FIMageList, 'TJanuaVCLImagesManager.LoadImageByID FImageStorage is nil ');

      // ma se esegue l'operazione in un thread a che serve la parte sottostante?
      with TOpenThread.Create(true, aID, FImageStorage, self.FIMageList, FImage, FSelectedImage, aProc) do
      begin
        FreeOnTerminate := true;
        Start;
      end;

      // parte da eliminare e da inserire in un Thread ............................................
    end;
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.LoadImageByID ' + e.Message);

  end;
end;

procedure TJanuaVCLImagesManager.Main_image_idChange(Sender: TField);
begin
  try
    if not self.IsUpdating and CheckSelectedImage then
      LoadImageByID(FImageIDField.AsLargeInt, nil)
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.Main_image_idChange ' + e.Message);

  end;
end;

procedure TJanuaVCLImagesManager.UpdateSelectedImage;
begin
  if FImageIDField.AsLargeInt = 0 then
  begin
    FSelectedImage := nil;
    if Assigned(FImage) then
      FImage.Picture.Assign(nil);
  end
  else if not self.IsUpdating and CheckSelectedImage then
    LoadImageByID(FImageIDField.AsLargeInt, nil);
end;

procedure TJanuaVCLImagesManager.SaveSelectedToImage;
var
  aStream: TMemoryStream;
begin
  Guard.CheckNotNull(FImage, '');
  if Assigned(FImage) then
    FImage.Picture.Assign(nil);
  aStream := TMemoryStream.Create;
  try
    FSelectedImage.SaveToStream(aStream);
    aStream.Position := 0;
    FImage.Picture.LoadFromStream(aStream);
    FSelectedImage.Width := FImage.Picture.Width;
    FSelectedImage.Heigth := FImage.Picture.Height;
  finally
    aStream.Free;
  end;
end;

function TJanuaVCLImagesManager.OpenFile(aFileName: TFileName): Boolean;
  function CheckFile: Boolean;
  begin
    Result := False;
    if aFileName = '' then
    begin
      if Assigned(FOpenDialog) and FOpenDialog.Execute then
        aFileName := FOpenDialog.FileName
    end;
    Result := FileExists(aFileName);
  end;

begin
  Result := False;
  try
    if CheckFile then
    begin
      FSelectedImage := TJanuaImageRecord.Create;
      FSelectedImage.SchemaID := 0;
      FSelectedImage.LoadFromFile(aFileName);
      self.FIMageList.AddFile(FSelectedImage, False);
      if Assigned(self.FImage) then
        SaveSelectedToImage;
      Result := true;
      if Assigned(FAfterOpenFile) then
        FAfterOpenFile(self);
    end;
  except
    on e: Exception do
      raise Exception.Create(self.ClassName + '.OpenFile ' + aFileName + sLineBreak + e.Message);
  end;
end;

procedure TJanuaVCLImagesManager.OpenUsingImage(aFileName: TFileName);
var
  aStream: TMemoryStream;
begin
  self.FImage.Picture.Bitmap.LoadFromFile(aFileName);
  aStream := TMemoryStream.Create;
  try
    self.FImage.Picture.Bitmap.SaveToStream(aStream);
    aStream.Position := 0;
    FSelectedImage.LoadFromStream(aStream);
    // qui viene la parte 'complessa' derivando da una immagine devo gestirne l'estensione usando il type della stessa

  finally
    aStream.Free;
  end;

end;

function TJanuaVCLImagesManager.SaveImageToStorage: Int64;
begin
  Guard.CheckNotNull(FImageStorage, ClassName + '.SaveImageToStorage.FImageStorage is nil');
  try
    Result := self.FImageStorage.SaveFileToStorage(FSelectedImage)
  except
    on e: Exception do
      raise Exception.Create(ClassName + '.SaveImageToStorage ' + sLineBreak + e.ClassName + ' ' + e.Message);
  end;
end;

procedure TJanuaVCLImagesManager.SetAfterOpenFile(const Value: TNotifyEvent);
begin
  FAfterOpenFile := Value;
end;

procedure TJanuaVCLImagesManager.SetAfterUpdate(const Value: TNotifyEvent);
begin
  FAfterUpdate := Value;
end;

procedure TJanuaVCLImagesManager.SetAutoSave(const Value: Boolean);
begin
  FAutoSave := Value;
end;

procedure TJanuaVCLImagesManager.SetDataSource(const Value: TDataSource);
begin
  try
    if FDataSource <> Value then
    begin
      if Assigned(self.FDataSource) then
        self.FDataSource.OnDataChange := nil;
      FDataSource := Value;
      if Assigned(self.FDataSource) then
        self.FDataSource.OnDataChange := dsArticlesDataChange;
    end;
  except
    on e: Exception do
      raise Exception.Create('TJanuaVCLImagesManager.SetDataSource ' + e.Message);
  end;
end;

procedure TJanuaVCLImagesManager.SetFileList(const Value: IJanuaImageMemoryStorage);
begin
  self.FIMageList := Value;
end;

procedure TJanuaVCLImagesManager.SetImage(const Value: TImage);
begin
  FImage := Value;
end;

procedure TJanuaVCLImagesManager.SetImageIDField(const Value: TLargeIntField);
begin
  FImageIDField := Value;
  if Assigned(self.FImageIDField) then
    self.FImageIDField.OnChange := Main_image_idChange;
end;

procedure TJanuaVCLImagesManager.SetIsUpdating(const Value: Boolean);
begin
  FIsUpdating := Value;
end;

procedure TJanuaVCLImagesManager.SetOpenDialog(const Value: TOpenDialog);
begin
  FOpenDialog := Value;
end;

procedure TJanuaVCLImagesManager.SetSelectedFile(const Value: IJanuaImageRecord);
begin
  FSelectedImage := Value;
end;

{ TOpenThread }

constructor TOpenThread.Create(Suspended: Boolean; aID: Int64; aImageStorage: IJanuaImageStorage;
  aIMageList: IJanuaImageMemoryStorage; aImage: TImage; aSelectedImage: IJanuaImageRecord; aProc: TProc);
begin
  inherited Create(Suspended);
  FID := aID;
  FImage := aImage;
  FIMageList := aIMageList;
  FImageStorage := aImageStorage;
  FProc := aProc;
end;

procedure TOpenThread.DoHandleException;
begin
  // Cancel the mouse capture    // VCL method .......................
  // if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  // if FException is Exception then
  // Application.ShowException(FException)
  // else
  System.SysUtils.ShowException(FException, nil);
end;

procedure TOpenThread.Execute;
var
  aStream: TMemoryStream;
begin
  inherited;
  FException := nil;
  if (self.FImageStorage <> nil) and (self.FID > 0) and (self.FIMageList <> nil) then
    try
      self.Synchronize(
        procedure
        begin
          try
            if FIMageList.SearchFileByID(FID) then
            begin
              FSelectedImage := FIMageList.SelectedImage;
              if Assigned(FImage) then
              begin
                Guard.CheckNotNull(FImage, '');
                if Assigned(FImage) then
                  FImage.Picture.Assign(nil);
                aStream := TMemoryStream.Create;
                try
                  FSelectedImage.SaveToStream(aStream);
                  aStream.Position := 0;
                  self.FImage.Picture.LoadFromStream(aStream);
                finally
                  aStream.Free;
                end;
              end;
              if Assigned(FProc) then
                FProc;
            end
            else
              FSelectedImage := nil;
          except
            on e: Exception do
              raise Exception.Create('TOpenThread.Execute ' + e.Message);
          end;
        end);
    except
      HandleException;
    end;
end;

procedure TOpenThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not(FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TOpenThread.SetID(const Value: Int64);
begin
  FID := Value;
end;

procedure TOpenThread.SetImage(const Value: TImage);
begin
  FImage := Value;
end;

procedure TOpenThread.SetIMageList(const Value: IJanuaImageMemoryStorage);
begin
  FIMageList := Value;
end;

procedure TOpenThread.SetImageStorage(const Value: IJanuaImageStorage);
begin
  FImageStorage := Value;
end;

procedure TOpenThread.SetProc(const Value: TProc);
begin
  FProc := Value;
end;

procedure TOpenThread.SetSelectedImage(const Value: IJanuaImageRecord);
begin
  FSelectedImage := Value;
end;

end.
