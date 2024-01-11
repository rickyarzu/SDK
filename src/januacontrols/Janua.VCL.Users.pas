unit Janua.VCL.Users;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.CustomControls, VCL.StdCtrls, VCL.Controls,
  Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes, Janua.Core.Users, Janua.VCL.Controls;

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

implementation

{ TJanuaVCLUser }

constructor TJanuaVCLUser.Create(AOwner: TComponent);
begin
  inherited;
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

end;

destructor TJanuaVCLUser.Destroy;
begin
  if Assigned(FController) then
    JanuaFreeAndNil(self.FController);
  inherited;
end;


{ TJanuaVCLProfile }

constructor TJanuaVCLProfile.Create(AOwner: TComponent);
begin
  inherited;
  self.FController := TJanuaVCLController.Create;
  self.FController.Verbose := self.FVerbose
end;

destructor TJanuaVCLProfile.Destroy;
begin
  if Assigned(FController) then
    FreeAndNil(self.FController);
  inherited;
end;


procedure TJanuaVCLProfile.SetVerbose(const Value: boolean);
begin
  inherited;
  if Assigned(FController) then
    self.FController.Verbose := self.FVerbose
end;

end.
