unit Janua.Controls.Forms.Impl;

{$I januacore.inc}

interface

uses System.Classes, System.Types, System.Variants,
  // FMX
  // Spring
  Spring, Spring.Collections,
  // Januaproject
  Janua.Core.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes;

type
  /// <summary>   Component Class defined for Janua Form Factory (IJanuaForms) </summary>
  TJanuaFormClass = class of TComponent;
  /// <summary>   Component Class defined for Janua Frame Factory (IJanuaFrames) </summary>
  TJanuaFrameClass = class of TComponent;
  TNotifyComponentCreationEvent = procedure(aComponent: TComponent) of object;

type
  TJanuaFormRecord = record
  private
    FFormClass: TJanuaFormClass;
    FClassTitle: string;
    FIconIndex: Integer;
    FAppName: string;
    FTitle: string;
    FIID: TGUID;
    FParams: TJanuaVariantArray;
    procedure SetClassTitle(const Value: string);
    procedure SetFormClass(const Value: TJanuaFormClass);
    procedure SetIconIndex(const Value: Integer);
    function GetClassName: string;
    procedure CheckSupports;
    procedure SetAppName(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetIID(const Value: TGUID);
    function GetParamCount: Integer;
    procedure SetParams(const Value: TJanuaVariantArray);
  public
    property ClassTitle: string read FClassTitle write SetClassTitle;
    property ClassName: string read GetClassName;
    property FormClass: TJanuaFormClass read FFormClass write SetFormClass;
    property IconIndex: Integer read FIconIndex write SetIconIndex;
    property AppName: string read FAppName write SetAppName;
    property Title: string read FTitle write SetTitle;
    property IID: TGUID read FIID write SetIID;
    /// <summary>
    /// It's an array of parameters that will be passed to the ViewModel to Set it Up
    /// </summary>
    property Params: TJanuaVariantArray read FParams write SetParams;
    property ParamCount: Integer read GetParamCount;
  public
    constructor Create(const aTitle, aApplication: string; aIconIndex: Integer; aClass: TJanuaFormClass;
      aInterface: TGUID; aParams: TJanuaVariantArray = []);
  public
    function CreateForm(AOwner: TComponent): IJanuaContainer;
  end;

  PJanuaFormRecord = ^TJanuaFormRecord;

  TFormRecordFoundEvent = procedure(aRecord: TJanuaFormRecord) of object;

type
  TJanuaAppRecordType = (jatSystem, jatMenu, jatPreferences);

  TJanuaApplicationRecord = record
  private
    FForms: IList<TJanuaFormRecord>;
    FIconIndex: Integer;
    FName: string;
    FTitle: string;
    FCategories: IList<TJanuaApplicationRecord>;
    FFrameClass: TJanuaFrameClass;
    FFrame: TComponent;
    FDescription: string;
    FIsOnMenu: TJanuaAppRecordType;
    procedure CreateForms;
    procedure SetForms(const Value: IList<TJanuaFormRecord>);
    procedure SetIconIndex(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetCategories(const Value: IList<TJanuaApplicationRecord>);
    procedure SetFrame(const Value: TComponent);
    procedure SetFrameClass(const Value: TJanuaFrameClass);
    function GetIsFrame: boolean;
    procedure CheckSupports;
    procedure SetDescription(const Value: string);
    procedure SetIsOnMenu(const Value: TJanuaAppRecordType);
  public
    property Forms: IList<TJanuaFormRecord> read FForms write SetForms;
    property Categories: IList<TJanuaApplicationRecord> read FCategories write SetCategories;
    property IconIndex: Integer read FIconIndex write SetIconIndex;
    property Name: string read FName write SetName;
    property Title: string read FTitle write SetTitle;
    property Frame: TComponent read FFrame write SetFrame;
    property FrameClass: TJanuaFrameClass read FFrameClass write SetFrameClass;
    property isFrame: boolean read GetIsFrame;
    property Description: string read FDescription write SetDescription;
    property IsOnMenu: TJanuaAppRecordType read FIsOnMenu write SetIsOnMenu;
  public
    function CreateFrame(AOwner: TComponent): IJanuaContainer;
    procedure AddForm(aForm: TJanuaFormRecord);
    function FindApplication(const aAppName: string; out aApplication: TJanuaApplicationRecord)
      : boolean; overload;
    function FindApplication(const aApplication: TJanuaApplicationRecord): boolean; overload;
    function AddApplication(aApplication: TJanuaApplicationRecord): TJanuaApplicationRecord; overload;
    function AddApplication(const aAppName, aAppTitle: string; const aIconIndex: Integer)
      : TJanuaApplicationRecord; overload;
    function FindForm(const aClassName: string; out aForm: TJanuaFormRecord): Integer; overload;
    function FindForm(const aClass: TJanuaFormClass; out aForm: TJanuaFormRecord): Integer; overload;
    constructor Create(const aAppName, aAppTitle: string; const aIconIndex: Integer;
      aFrameClass: TJanuaFrameClass = nil; aIsOnMenu: TJanuaAppRecordType = jatMenu);
  end;

type
  TJanuaCustomPageController = class abstract(TJanuaCoreComponent)
  public
    procedure btnAdvBarClick(aRecord: TJanuaFormRecord); virtual; abstract;
  end;

  PJanuaApplicationRecord = ^TJanuaApplicationRecord;

type
  /// <summary>Janua.Controls.Forms.Impl Container Class for Application Menus (Forms, Frames and SubApplications) </summary>
  TJanuaFormsApplication = class
  private
    class var FApplications: IList<TJanuaApplicationRecord>;
    class function GetApplications: IList<TJanuaApplicationRecord>; static;
    class procedure SetApplications(const Value: IList<TJanuaApplicationRecord>); static;
    class function FindApplication(const aAppName: string): Integer;
  public
    class procedure RegisterFormClass(aFormRecord: TJanuaFormRecord);
    class function AddApplication(const aAppName, aAppTitle: string; const aIconIndex: Integer;
      aFrameClass: TJanuaFormClass = nil; aIsOnMenu: TJanuaAppRecordType = jatMenu): TJanuaApplicationRecord;
    class function RegisterApplication(aAppRecord: TJanuaApplicationRecord): TJanuaApplicationRecord;
    class constructor Create;
    class Destructor Destroy;
    class property Applications: IList<TJanuaApplicationRecord> read GetApplications;
    class function FindForm(const aFormName: string; out aForm: TJanuaFormRecord): boolean;
  end;



  // PJanuaFormsApplication = ^TJanuaFormsApplication;

implementation

uses System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

{ TFormRecord }

(*
  class operator TJanuaFormRecord.Initialize(out Dest: TJanuaFormRecord);
  begin
  Dest.IconIndex := 0;
  end;

*)

constructor TJanuaFormRecord.Create(const aTitle, aApplication: string; aIconIndex: Integer;
  aClass: TJanuaFormClass; aInterface: TGUID; aParams: TJanuaVariantArray);
begin
  try
    Guard.CheckNotNull(aClass, 'class definition required TJanuaFormRecord.Create(' + aTitle + '.' +
      aApplication + ')');
    FFormClass := aClass;
    CheckSupports;
    FClassTitle := aTitle;
    self.FTitle := aTitle;
    FIconIndex := aIconIndex;
    FIID := aInterface;
    FParams := aParams;
  except
    on e: exception do
      RaiseException('Create', e, nil);
  end;
end;

function TJanuaFormRecord.CreateForm(AOwner: TComponent): IJanuaContainer;
var
  aTemp: TComponent;
begin
  CheckSupports;
  aTemp := FFormClass.Create(AOwner);
  if not Supports(aTemp, IJanuaContainer, Result) then
    exception.Create('Create Form ' + FFormClass.ClassName + ' does not support IJanuaContainer')
  else
  begin
    Result.Params := FParams;
    Result.Activate;
  end;
end;

procedure TJanuaFormRecord.CheckSupports;
begin
  Guard.CheckTrue(FFormClass <> nil);
  Guard.CheckTrue(Supports(FFormClass, IJanuaContainer),
    FFormClass.ClassName + ' does not support IJanuaForm');
end;

function TJanuaFormRecord.GetClassName: string;
begin
  Result := '';
  if Assigned(self.FFormClass) then
    Result := self.FFormClass.ClassName
end;

function TJanuaFormRecord.GetParamCount: Integer;
begin
  Result := Length(self.FParams);
end;

procedure TJanuaFormRecord.SetAppName(const Value: string);
begin
  FAppName := Value;
end;

procedure TJanuaFormRecord.SetClassTitle(const Value: string);
begin
  FClassTitle := Value;
end;

procedure TJanuaFormRecord.SetFormClass(const Value: TJanuaFormClass);
begin
  FFormClass := Value;
end;

procedure TJanuaFormRecord.SetIconIndex(const Value: Integer);
begin
  FIconIndex := Value;
end;

procedure TJanuaFormRecord.SetIID(const Value: TGUID);
begin
  FIID := Value;
end;

procedure TJanuaFormRecord.SetParams(const Value: TJanuaVariantArray);
begin
  FParams := Value;
end;

procedure TJanuaFormRecord.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TJanuaApplicationRecord }

function TJanuaApplicationRecord.AddApplication(const aAppName, aAppTitle: string; const aIconIndex: Integer)
  : TJanuaApplicationRecord;
begin
  Result := AddApplication(TJanuaApplicationRecord.Create(aAppName, aAppTitle, aIconIndex));
end;

function TJanuaApplicationRecord.AddApplication(aApplication: TJanuaApplicationRecord)
  : TJanuaApplicationRecord;
begin
  if not FindApplication(aApplication.Name, Result) then
  begin
    self.FCategories.Add(aApplication);
    Result := aApplication;
  end;
end;

procedure TJanuaApplicationRecord.AddForm(aForm: TJanuaFormRecord);

  function Found: boolean;
  var
    e: Spring.Collections.IEnumerator<TJanuaFormRecord>;
  begin
    Result := false;
    e := FForms.GetEnumerator;
    if not e.MoveNext then
      Exit(false)
    else if e.Current.Title.ToLower = aForm.Title.ToLower then
      Exit(True);

    while e.MoveNext do
      if e.Current.Title.ToLower = aForm.Title.ToLower then
        Exit(True);
  end;

begin
  if not Found then
    FForms.Add(aForm)
end;

procedure TJanuaApplicationRecord.CheckSupports;
begin
  if Assigned(FFrameClass) then
    Guard.CheckTrue(Supports(FFrameClass, IJanuaContainer),
      FFrameClass.ClassName + ' does not support IJanuaForm');
end;

constructor TJanuaApplicationRecord.Create(const aAppName, aAppTitle: string; const aIconIndex: Integer;
  aFrameClass: TJanuaFrameClass; aIsOnMenu: TJanuaAppRecordType);
begin
  CreateForms;
  FName := aAppName;
  FTitle := aAppTitle;
  FIconIndex := aIconIndex;
  FFrameClass := aFrameClass;
  CheckSupports;
end;

procedure TJanuaApplicationRecord.CreateForms;
begin
  FForms := TCollections.CreateList<TJanuaFormRecord>;
  FCategories := TCollections.CreateList<TJanuaApplicationRecord>;
end;

function TJanuaApplicationRecord.CreateFrame(AOwner: TComponent): IJanuaContainer;
var
  aTemp: TComponent;
  lOwner: IJanuaContainer;
begin
  try
    CheckSupports;
    aTemp := FFrameClass.Create(AOwner);
    if not Supports(aTemp, IJanuaContainer, Result) then
      exception.Create('Create Form ' + FFrameClass.ClassName + ' does not support IJanuaContainer');
    if Supports(AOwner, IJanuaContainer, lOwner) then
      Result.JanuaParent := lOwner;
  except
    on e: exception do
      RaiseException('TJanuaApplicationRecord.CreateFrame', e, AOwner);
  end;
end;

function TJanuaApplicationRecord.FindApplication(const aAppName: string;
  out aApplication: TJanuaApplicationRecord): boolean;
begin
  Result := false;
  if FCategories.Count > 0 then
    for var I: Integer := 0 to Pred(FCategories.Count) do
      if FCategories[I].Name.ToLower = aAppName.ToLower then
      begin
        aApplication := FCategories[I];
        Result := True;
        Exit
      end;
end;

function TJanuaApplicationRecord.FindApplication(const aApplication: TJanuaApplicationRecord): boolean;
begin
  Result := false;
end;

function TJanuaApplicationRecord.FindForm(const aClass: TJanuaFormClass; out aForm: TJanuaFormRecord)
  : Integer;
begin
  Result := self.FindForm(aClass.ClassName, aForm);
end;

function TJanuaApplicationRecord.FindForm(const aClassName: string; out aForm: TJanuaFormRecord): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 0 to Pred(FForms.Count) do
    if FForms[I].ClassName.ToLower = aClassName.ToLower then
    begin
      Result := I;
      aForm := FForms[I];
      Exit
    end;

  if self.FCategories.Count > 0 then
    for I := 0 to Pred(FCategories.Count) do
    begin
      Result := FCategories[I].FindForm(aClassName, aForm);
      if Result > -1 then
        Exit
    end;
end;

function TJanuaApplicationRecord.GetIsFrame: boolean;
begin
  Result := Assigned(FFrameClass);
end;

procedure TJanuaApplicationRecord.SetCategories(const Value: IList<TJanuaApplicationRecord>);
begin
  FCategories := Value;
end;

procedure TJanuaApplicationRecord.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TJanuaApplicationRecord.SetForms(const Value: IList<TJanuaFormRecord>);
begin
  FForms := Value;
end;

procedure TJanuaApplicationRecord.SetFrame(const Value: TComponent);
begin
  FFrame := Value;
end;

procedure TJanuaApplicationRecord.SetFrameClass(const Value: TJanuaFrameClass);
begin
  FFrameClass := Value;
end;

procedure TJanuaApplicationRecord.SetIconIndex(const Value: Integer);
begin
  FIconIndex := Value;
end;

procedure TJanuaApplicationRecord.SetIsOnMenu(const Value: TJanuaAppRecordType);
begin
  FIsOnMenu := Value;
end;

procedure TJanuaApplicationRecord.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaApplicationRecord.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TJanuaFormsApplication }

class procedure TJanuaFormsApplication.RegisterFormClass(aFormRecord: TJanuaFormRecord);
var
  I: Integer;
begin
  I := FindApplication(aFormRecord.AppName);
  if I = -1 then
    RegisterApplication(TJanuaApplicationRecord.Create(aFormRecord.AppName, aFormRecord.AppName, -1))
      .AddForm(aFormRecord)
  else
    FApplications[I].AddForm(aFormRecord);

end;

class function TJanuaFormsApplication.AddApplication(const aAppName, aAppTitle: string;
  const aIconIndex: Integer; aFrameClass: TJanuaFormClass; aIsOnMenu: TJanuaAppRecordType)
  : TJanuaApplicationRecord;
begin

end;

class constructor TJanuaFormsApplication.Create;
begin
  try
    FApplications := TCollections.CreateList<TJanuaApplicationRecord>;
  except
    on e: exception do
      raise exception.Create('TJanuaFormsApplication.Create ' + e.Message);
  end;
end;

class destructor TJanuaFormsApplication.Destroy;
begin
  FApplications := nil;
end;

class function TJanuaFormsApplication.FindApplication(const aAppName: string): Integer;
begin
  Result := -1;

  if (FApplications <> nil) and (FApplications.Count > 0) then
    for var I: Integer := 0 to Pred(FApplications.Count) do
      if FApplications[I].Name.ToLower = aAppName.ToLower then
        Exit(I)

end;

class function TJanuaFormsApplication.FindForm(const aFormName: string; out aForm: TJanuaFormRecord): boolean;
var
  I, J: Integer;
begin
  Result := false;
  if FApplications.Count > 0 then
    for I := 0 to Pred(FApplications.Count) do
      if FApplications[I].FindForm(aFormName, aForm) > -1 then
        Exit(True)
end;

class function TJanuaFormsApplication.GetApplications: IList<TJanuaApplicationRecord>;
begin
  Result := FApplications
end;

class procedure TJanuaFormsApplication.SetApplications(const Value: IList<TJanuaApplicationRecord>);
begin
  FApplications := Value
end;

class function TJanuaFormsApplication.RegisterApplication(aAppRecord: TJanuaApplicationRecord)
  : TJanuaApplicationRecord;
begin
  var
    I: Integer := FindApplication(aAppRecord.Name.ToLower);
  if I = -1 then
    FApplications.Add(aAppRecord);

  Result := FApplications[Pred(FApplications.Count)];
end;

initialization

(*
  try
  TJanuaFormsApplication.Applications.Clear;
  TJanuaFormsApplication.RegisterApplication(TJanuaApplicationRecord.Create('root', 'Root', -1, nil,
  jatSystem));
  // Create the rot Application of the Application that Will Contain all Classes for Forms and Dialogs
  except
  on e: exception do
  raise exception.Create('Janua.Controls.Forms.initialization ' + e.Message);
  end;
*)

finalization

(*
  TJanuaFormsApplication.Applications.Clear;
*)

end.

