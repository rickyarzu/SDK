unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImage,
  Vcl.Imaging.pngimage, uniEdit, uniButton, Data.DB, Data.Win.ADODB;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniImage1: TUniImage;
    edUsername: TUniEdit;
    edPassword: TUniEdit;
    UniButton1: TUniButton;
    ADOQuery1: TADOQuery;
    procedure UniButton1Click(Sender: TObject);
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    UniButton1Click(nil);
end;

procedure TUniLoginForm1.UniButton1Click(Sender: TObject);
begin
  if Trim(edUsername.Text)='' then
    ShowMessage('Please Enter UserName!')
  else if Trim(edPassword.Text)='' then
    ShowMessage('Please Enter Password!')
  else
   begin
     with ADOQuery1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select id from users where username=:username and password=:password');
        Parameters.ParamByName('username').Value:=edUsername.Text;
        Parameters.ParamByName('password').Value:=edPassword.Text;
        Open;
          if RecordCount=0 then
            ShowMessage('Incorrect Username or Password!')
          else
           begin
             UniMainModule.UserId := FieldByName('id').AsInteger;

             Sql.Clear;
             Sql.Add('update users set LastConnect=:LastConnect, LastIp=:LastIp where id=:id');
             Parameters.ParamByName('LastConnect').Value:=Now;
             Parameters.ParamByName('LastIp').Value:=UniApplication.RemoteAddress;
             Parameters.ParamByName('id').Value:=UniMainModule.UserId;
             ExecSQL;

             ModalResult := mrOk;

           end;
      end;
   end;

end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
