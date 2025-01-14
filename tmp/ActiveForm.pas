unit ActiveForm;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActiveX, AxCtrls, Project2_TLB;

type
  TJanuaActiveWebForm = class(TActiveForm)
  private
    { Private declarations }
    FEvents: IJanuaActiveWebFormEvents;
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
  public
    { Public declarations }
    procedure Initialize; override;
  end;

implementation

uses ComObj, ComServ;

{$R *.DFM}

{ TJanuaActiveWebForm }

procedure TJanuaActiveWebForm.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  { Define property pages here.  Property pages are defined by calling
    DefinePropertyPage with the class id of the page.  For example,
      DefinePropertyPage(Class_JanuaActiveWebFormPage); }
end;

procedure TJanuaActiveWebForm.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IJanuaActiveWebFormEvents;
  inherited EventSinkChanged(EventSink);
end;

procedure TJanuaActiveWebForm.Initialize;
begin
  inherited Initialize;
end;

initialization
  TActiveFormFactory.Create(
    ComServer,
    TActiveFormControl,
    TJanuaActiveWebForm,
    Class_JanuaActiveWebForm,
    0,
    '',
    OLEMISC_SIMPLEFRAME or OLEMISC_ACTSLIKELABEL,
    tmApartment);
end.
