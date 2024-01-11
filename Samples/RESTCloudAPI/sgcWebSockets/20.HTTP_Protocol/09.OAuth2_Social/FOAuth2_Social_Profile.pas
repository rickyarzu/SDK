unit FOAuth2_Social_Profile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFRMOAuth2_Social_Profile = class(TForm)
    txtID: TEdit;
    txtName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowProfile(const aId, aName: string);

implementation

{$R *.dfm}

procedure ShowProfile(const aId, aName: string);
var
  oForm: TFRMOAuth2_Social_Profile;
begin
  oForm := TFRMOAuth2_Social_Profile.Create(nil);
  Try
    oForm.txtID.Text := aID;
    oForm.txtName.Text := aName;
    oForm.ShowModal;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
