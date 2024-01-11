//Form Types = Forms
unit FormsFormTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel,
  DialogFormUnit, NoneBorderFormUnit, SingleBorderFormUnit, SizeAbleFormUnit,
  AllBorderIconOpenUnit, uniGroupBox, OnlyCloseIconUnit,
  FormShowNormalUnit, FormShowModalUnit;

type
  TUniFormsFormTypes = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniGroupBox1: TUniGroupBox;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniGroupBox2: TUniGroupBox;
    UniGroupBox3: TUniGroupBox;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormsFormTypes.UniButton10Click(Sender: TObject);
begin
  FormShowModal.ShowModal;
end;

procedure TUniFormsFormTypes.UniButton1Click(Sender: TObject);
begin
  DialogForm.Show;
end;

procedure TUniFormsFormTypes.UniButton2Click(Sender: TObject);
begin
  NoneBorderForm.Show;
end;

procedure TUniFormsFormTypes.UniButton3Click(Sender: TObject);
begin
  SingleBorderForm.Show;
end;

procedure TUniFormsFormTypes.UniButton4Click(Sender: TObject);
begin
  SizeableForm.Show;
end;

procedure TUniFormsFormTypes.UniButton5Click(Sender: TObject);
begin
  AllBorderIconOpenForm.Show;
end;

procedure TUniFormsFormTypes.UniButton6Click(Sender: TObject);
begin
  OnlyCloseIconForm.Show;
end;

procedure TUniFormsFormTypes.UniButton9Click(Sender: TObject);
begin
  FormShowNormal.Show;
end;

initialization
  RegisterClass(TUniFormsFormTypes);

end.
