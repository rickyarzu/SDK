//AllFeatures: Prompt,Anonymous Callback,icon-message-box
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMemo, uniGUIBaseClasses,
  uniButton;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  Prompt('Please enter a text', '', mtInformation, mbOKCancel,
        procedure(Sender: TComponent; AResult:Integer; AText: string)
        begin
          if AResult = mrOK then
          begin
            UniMemo1.Lines.Add(AText);
          end;
        end
  );
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  Prompt('Please enter a text', '', mtInformation, mbOKCancel,
        procedure(Sender: TComponent; AResult:Integer; AText: string)
        begin
          if AResult = mrOK then
          begin
            UniMemo1.Lines.Add(AText);
          end;
        end,
      True );
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  Prompt('@@Please enter a text', '', mtInformation, mbOKCancel,
        procedure(Sender: TComponent; AResult:Integer; AText: string)
        begin
          if AResult = mrOK then
          begin
            Sleep(2000);
            UniMemo1.Lines.Add(AText);
          end;
        end
  );
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  Prompt('@*Please enter password', '', mtInformation, mbOKCancel,
        procedure(Sender: TComponent; AResult:Integer; AText: string)
        begin
          if AResult = mrOK then
          begin
            UniMemo1.Lines.Add(AText);
          end;
        end
  );
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  Prompt('@@@*Please enter password', '', mtInformation, mbOKCancel,
        procedure(Sender: TComponent; AResult:Integer; AText: string)
        begin
          if AResult = mrOK then
          begin
            UniMemo1.Lines.Add(AText);
            Sleep(3000);
          end;
        end
  );
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
