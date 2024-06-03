{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2013                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit UGoogleLookupDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CloudLookupEdit, CloudGoogleLookup, CloudBase,
  ExtCtrls;

type
  TForm1 = class(TForm)
    AdvGoogleLookupProvider1: TAdvGoogleLookupProvider;
    AdvGoogleLocationLookupProvider1: TAdvGoogleLocationLookupProvider;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    AdvCloudLookupEdit1: TAdvCloudLookupEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvGoogleLocationLookupProvider1.App.Key := GAppKey;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0: AdvCloudLookupEdit1.Lookup.Provider := AdvGoogleLocationLookupProvider1;
  1: AdvCloudLookupEdit1.Lookup.Provider := AdvGoogleLookupProvider1;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
  AdvGoogleLookupProvider1.Lookup(Edit1.Text, ListBox1.Items);
end;

end.
