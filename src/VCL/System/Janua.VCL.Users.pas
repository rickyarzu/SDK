unit Janua.VCL.Users;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.CustomControls, VCL.StdCtrls, VCL.Controls,
  Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes, Janua.Core.Users,
  JOrm.System.Intf;

type
  TJanuaVCLUser = class(TJanuaCustomUser)
  private
  protected
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
  end;

type
  TJanuaVCLProfile = class(TJanuaCustomProfile)
  private
  protected
    procedure SetVerbose(const Value: boolean); override;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
  end;

type
  TJanuaVCLUserDialog = class(TJanuaCoreComponent)
  private
    FUser: IUser;
    procedure SetUser(const Value: IUser);
  protected
  public
    property User: IUser read FUser write SetUser;
  public
    Constructor Create(AOwner: TComponent); override;
    function Execute: boolean;
  published

  end;

implementation

uses JOrm.System.Impl, Janua.VCL.dlgRegisterUser;

{ TJanuaVCLUser }

constructor TJanuaVCLUser.Create(AOwner: TComponent);
begin
  inherited;
  {
    self.FController := TJanuaVCLController.Create;
    self.FController.Verbose := self.FVerbose;

    FbtnNew := TJanuaButtonProperties.Create(self, 'btnNew', 'Nuovo Utente');
    self.FbtnNew.OnButtonClick := btnNewClick;

    FbtnSetNewPassword := TJanuaButtonProperties.Create(self, 'btnSetNewPassword', 'Nuova Password');
    self.FbtnSetNewPassword.OnButtonClick := btnSetNewPasswordClick;

    FbtnSave := TJanuaButtonProperties.Create(self, 'btnSave', 'Salva');
    self.FbtnSave.OnButtonClick := btnSaveClick;

    FedName := TJanuaEditProperties.Create(self, 'edName', 'Nome Utente', 'Name');
    FedSecondName := TJanuaEditProperties.Create(self, 'edSecondName', 'Cognome', 'SecondName');
    FedID := TJanuaEditProperties.Create(self, 'edID', 'ID Utente', 'id');
    FedPassword := TJanuaEditProperties.Create(self, 'edPassword', 'Nuova Password', 'Password');
    FedPassword.HasPassword := True;
    FedUserName := TJanuaEditProperties.Create(self, 'edUserName', 'Indirizzo EMail', 'UserName');
    FedRoleID := TJanuaEditProperties.Create(self, 'edRoleID', 'Id Ruolo', 'Role_ID');



    // cboRole Role_Name
    FlbName := TJanuaLabelProperties.Create(self, 'lbName', 'Nome Utente', '');
    FcboRole := TJanuaComboProperties.Create(self, 'cboRole', 'Ruolo Utente', 'RoleName', 'RoleIndex');
    FlbPassword := TJanuaLabelProperties.Create(self, 'lbRoleID', 'ID Ruolo', '');
    FlbUsername := TJanuaLabelProperties.Create(self, 'lbUsername', 'Nome Utente', '');
    FlbRoleID := TJanuaLabelProperties.Create(self, 'lbSecondName', 'Cognome Utente', '');
    FlbSecondName := TJanuaLabelProperties.Create(self, 'lbName', 'Nome Utente', '');
    FlbRole := TJanuaLabelProperties.Create(self, 'lbRole', 'Ruolo Utente', '');
    FlbID := TJanuaLabelProperties.Create(self, 'lbID', 'ID Utente', '');
  }
end;

destructor TJanuaVCLUser.Destroy;
begin
  if Assigned(FController) then
    JanuaFree(self.FController);
  FController := nil;
  inherited;
end;

{ TJanuaVCLProfile }

constructor TJanuaVCLProfile.Create(AOwner: TComponent);
begin
  inherited;
  // self.FController := TJanuaVCLController.Create;
  { TODO : Ricalibrare le funzioni sulla base del componente Parent }
  self.FController.Verbose := self.Verbose
end;

destructor TJanuaVCLProfile.Destroy;
begin
  if Assigned(FController) then
    JanuaFree(self.FController);
  self.FController := nil;
  inherited;
end;

procedure TJanuaVCLProfile.SetVerbose(const Value: boolean);
begin
  inherited;
  if Assigned(FController) then
    self.FController.Verbose := self.Verbose
end;

{ TJanuaVCLUserDialog }

constructor TJanuaVCLUserDialog.Create(AOwner: TComponent);
begin
  inherited;
  self.FUser := TUser.Create('user');
end;

function TJanuaVCLUserDialog.Execute: boolean;
var
  LDialog: Janua.VCL.dlgRegisterUser.TdlgRegisterUser;
begin
  LDialog := Janua.VCL.dlgRegisterUser.TdlgRegisterUser.Create(nil);
  try
    LDialog.ShowModal;
    self.FUser.Email.AsString := LDialog.edUserEMail.Text;
    self.FUser.Password.AsString := LDialog.edPassword.Text;
    self.FUser.UserFirstName.AsString := LDialog.edFirstName.Text;
    self.FUser.UserFamilyName.AsString := LDialog.edUserLastName.Text;
    Result := LDialog.ModalResult = mrOk;
  finally
    LDialog.Free
  end;
end;

procedure TJanuaVCLUserDialog.SetUser(const Value: IUser);
begin
  FUser := Value;
end;

end.
