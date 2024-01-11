{******************************************************************************}
{                                                                              }
{  Neon: Serialization Library for Delphi                                      }
{  Copyright (c) 2018-2023 Paolo Rossi                                         }
{  https://github.com/paolo-rossi/neon-library                                 }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}
unit NeonDemo.Forms.Main;

interface

uses
  System.Classes, System.SysUtils, System.Actions, System.ImageList,
  Vcl.Forms, Vcl.ActnList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ImgList, Vcl.Graphics,

  Neon.Core.Types,
  Neon.Core.Attributes,
  Neon.Core.Persistence,
  Neon.Core.Persistence.JSON,
  Neon.Core.Utils,
  NeonDemo.Frame.Configuration,
  NeonDemo.Forms.Serialization.Base;

type
  TNeonMainForm = class(TForm)
    TopPanel: TPanel;
    imgNeon: TImage;
    pgcMain: TPageControl;
    frmConfiguration: TframeConfiguration;
    imgMain: TImageList;
    procedure FormCreate(Sender: TObject);
  private
    procedure CreateTab(const ACaption: string; AIcon: Integer; AColor: TColor; AClass: TfrmSerializationClass);
  public
  end;

var
  NeonMainForm: TNeonMainForm;

implementation

{$R *.dfm}

uses
  System.Generics.Collections,

  NeonDemo.Forms.Serialization.Custom, NeonDemo.Forms.Serialization.Delphi,
  NeonDemo.Forms.Serialization.Simple, NeonDemo.Forms.Serialization.Records,
  NeonDemo.Forms.Serialization.Schema, NeonDemo.Forms.Serialization.Complex;

{ TMainForm }

procedure TNeonMainForm.CreateTab(const ACaption: string; AIcon: Integer; AColor: TColor; AClass: TfrmSerializationClass);
var
  LTab: TTabSheet;
  LForm: TfrmSerializationBase;
begin
  LTab := TTabSheet.Create(pgcMain);
  LTab.Caption := ACaption;
  LTab.PageControl := pgcMain;
  LTab.ImageIndex := AIcon;

  LForm := AClass.CreateEx(Self, frmConfiguration, AColor);
  LForm.BorderStyle := bsNone;
  LForm.Parent := LTab;
  LForm.Align := alClient;
  LForm.Show;
end;

procedure TNeonMainForm.FormCreate(Sender: TObject);
begin
  frmConfiguration.Initialize;

  CreateTab('Simple Types', 0, clGreen, TfrmSerializationSimple);
  CreateTab('Value Types', 11, clTeal, TfrmSerializationRecords);
  CreateTab('Reference Types', 3, clNavy, TfrmSerializationComplex);
  CreateTab('Delphi Types', 9, clOlive, TfrmSerializationDelphi);
  CreateTab('Custom Serializers', 4, clMaroon, TfrmSerializationCustom);
  CreateTab('Attributes && JSON Schema', 16, clWebTan, TfrmSerializationSchema);
end;

end.
