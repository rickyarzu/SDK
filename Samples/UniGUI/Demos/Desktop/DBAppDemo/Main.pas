unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Data.Win.ADODB,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniTreeView,
  Vcl.Imaging.pngimage, uniImage, uniGUIFrame;

type
  TMainForm = class(TUniForm)
    UniTreeView1: TUniTreeView;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniImage1: TUniImage;
    procedure UniTreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure OpenFrame( FClassName, Caption : string );
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

procedure TMainForm.OpenFrame(FClassName, Caption: string);
var
  Ts : TUniTabSheet;
  i,ActivePage_id :integer;
  FrC : TUniFrameClass;
  Fr : TUniFrame;
begin
  if FClassName <> '' then
   begin
    ActivePage_id:=-1;
    for i := 0 to UniPageControl1.PageCount-1 do
      begin
        if UniPageControl1.Pages[i].Caption=Caption then
         begin
          UniPageControl1.ActivePageIndex:=i;
          ActivePage_id:=0;
          Break;
         end;
      end;

    if ActivePage_id=-1 then
      begin
        Ts := TUniTabSheet.Create(Self);
        Ts.Closable := True;
        Ts.PageControl := UniPageControl1;
        Ts.Tag := Tag;
        UniPageControl1.ActivePage:=Ts;

        FrC := TUniFrameClass(FindClass(FClassName));
        Fr:=FrC.Create(Ts);
        Ts.Caption := Fr.Hint;
        Fr.Align := alClient;
        Fr.Parent := Ts;
      end;
   end;
end;

procedure TMainForm.UniTreeView1Click(Sender: TObject);
var
  FClassName : string;
begin
  if UniTreeView1.Selected.Text='Customers' then
   begin
     FClassName := 'TFrmCustomers';
   end
  else if UniTreeView1.Selected.Text='Invoices' then
   begin
     FClassName := 'TFrmInvoices';
   end
  else if UniTreeView1.Selected.Text='New Invoice' then
   begin
     FClassName := 'TFrmNewInvoice';
   end;

   OpenFrame(FClassName, UniTreeView1.Selected.Text);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
