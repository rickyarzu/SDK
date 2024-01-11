unit JanuaCoreDataModule;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes;

type
  TJanuaCoreDataModuleModel = class(TDataModule)
  private
    { Private declarations }
  protected
    FSessionKey: string;
    FSessionChecked: boolean;
    FUserProfile: TJanuaRecordUserProfile;
  public
    { Public declarations }
    function CheckSessionKey(aSessionKey: string): boolean; virtual; abstract;
    function OpenProfile(aUserID: integer): boolean; virtual; abstract;
    // this procedure opens an user profile to read it or to store it ...........................
    function SaveUserProfile(const aProfile: TJanuaRecordUserProfile): boolean;  virtual; abstract;
  end;

var
  JanuaCoreDataModuleModel: TJanuaCoreDataModuleModel;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
