{ *************************************************************************** }
{ }
{ Delphi.Mocks }
{ }
{ Copyright (C) 2011 Vincent Parrett }
{ }
{ http://www.finalbuilder.com }
{ }
{ }
{ *************************************************************************** }
{ }
{ Licensed under the Apache License, Version 2.0 (the "License"); }
{ you may not use this file except in compliance with the License. }
{ You may obtain a copy of the License at }
{ }
{ http://www.apache.org/licenses/LICENSE-2.0 }
{ }
{ Unless required by applicable law or agreed to in writing, software }
{ distributed under the License is distributed on an "AS IS" BASIS, }
{ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. }
{ See the License for the specific language governing permissions and }
{ limitations under the License. }
{ }
{ *************************************************************************** }

(*
  SameValue/CompareValue Copyright (c) 2011, Stefan Glienke
  Used with permission.
*)

unit Janua.Mocks.Helpers;

interface

uses
  System.Rtti;

type
  // TValue really needs to have an Equals operator overload!
  TValueHelper = record helper for TValue
    function Equals(const value: TValue): boolean;
    function IsFloat: boolean;
    function IsNumeric: boolean;
    function IsPointer: boolean;
    function IsString: boolean;
    function IsBoolean: boolean;
    function IsByte: boolean;
    function IsCardinal: boolean;
    function IsCurrency: boolean;
    function IsDate: boolean;
    function IsDateTime: boolean;
    function IsDouble: boolean;
    function IsInteger: boolean;
    function IsInt64: boolean;
    function IsShortInt: boolean;
    function IsSingle: boolean;
    function IsSmallInt: boolean;
    function IsTime: boolean;
    function IsUInt64: boolean;
    function IsVariant: boolean;
    function IsWord: boolean;
    function AsDouble: Double;
    function AsFloat: Extended;
    function AsSingle: Single;
    function AsPointer: Pointer;
  end;

  TRttiTypeHelper = class helper for TRttiType
    function TryGetMethod(const AName: string; out AMethod: TRttiMethod): boolean;
    function FindConstructor: TRttiMethod;
  end;

function CompareValue(const Left, Right: TValue): Integer;
function SameValue(const Left, Right: TValue): boolean;

implementation

uses
  System.SysUtils,
  System.Math,
  System.TypInfo;

function CompareValue(const Left, Right: TValue): Integer;
begin
  if Left.IsOrdinal and Right.IsOrdinal then
  begin
    Result := System.Math.CompareValue(Left.AsOrdinal, Right.AsOrdinal);
  end
  else if Left.IsFloat and Right.IsFloat then
  begin
    Result := System.Math.CompareValue(Left.AsFloat, Right.AsFloat);
  end
  else if Left.IsString and Right.IsString then
  begin
    Result := System.SysUtils.CompareStr(Left.AsString, Right.AsString);
  end
  else
  begin
    Result := 0;
  end;
end;

function SameValue(const Left, Right: TValue): boolean;
begin
  if Left.IsNumeric and Right.IsNumeric then
  begin
    if Left.IsOrdinal then
    begin
      if Right.IsOrdinal then
      begin
        Result := Left.AsOrdinal = Right.AsOrdinal;
      end
      else if Right.IsSingle then
      begin
        Result := System.Math.SameValue(Left.AsOrdinal, Right.AsSingle);
      end
      else if Right.IsDouble then
      begin
        Result := System.Math.SameValue(Left.AsOrdinal, Right.AsDouble);
      end
      else
      begin
        Result := System.Math.SameValue(Left.AsOrdinal, Right.AsExtended);
      end;
    end
    else if Left.IsSingle then
    begin
      if Right.IsOrdinal then
      begin
        Result := System.Math.SameValue(Left.AsSingle, Right.AsOrdinal);
      end
      else if Right.IsSingle then
      begin
        Result := System.Math.SameValue(Left.AsSingle, Right.AsSingle);
      end
      else if Right.IsDouble then
      begin
        Result := System.Math.SameValue(Left.AsSingle, Right.AsDouble);
      end
      else
      begin
        Result := System.Math.SameValue(Left.AsSingle, Right.AsExtended);
      end;
    end
    else if Left.IsDouble then
    begin
      if Right.IsOrdinal then
      begin
        Result := System.Math.SameValue(Left.AsDouble, Right.AsOrdinal);
      end
      else if Right.IsSingle then
      begin
        Result := System.Math.SameValue(Left.AsDouble, Right.AsSingle);
      end
      else if Right.IsDouble then
      begin
        Result := System.Math.SameValue(Left.AsDouble, Right.AsDouble);
      end
      else
      begin
        Result := System.Math.SameValue(Left.AsDouble, Right.AsExtended);
      end;
    end
    else
    begin
      if Right.IsOrdinal then
      begin
        Result := System.Math.SameValue(Left.AsExtended, Right.AsOrdinal);
      end
      else if Right.IsSingle then
      begin
        Result := System.Math.SameValue(Left.AsExtended, Right.AsSingle);
      end
      else if Right.IsDouble then
      begin
        Result := System.Math.SameValue(Left.AsExtended, Right.AsDouble);
      end
      else
      begin
        Result := System.Math.SameValue(Left.AsExtended, Right.AsExtended);
      end;
    end;
  end
  else if Left.IsString and Right.IsString then
  begin
    Result := Left.AsString = Right.AsString;
  end
  else if Left.IsClass and Right.IsClass then
  begin
    Result := Left.AsClass = Right.AsClass;
  end
  else if Left.IsObject and Right.IsObject then
  begin
    Result := Left.AsObject = Right.AsObject;
  end
  else if Left.IsPointer and Right.IsPointer then
  begin
    Result := Left.AsPointer = Right.AsPointer;
  end
  else if Left.IsVariant and Right.IsVariant then
  begin
    Result := Left.AsVariant = Right.AsVariant;
  end
  else if Left.TypeInfo = Right.TypeInfo then
  begin
    Result := Left.AsPointer = Right.AsPointer;
  end
  else
  begin
    Result := False;
  end;
end;

{ TValueHelper }

function TValueHelper.AsDouble: Double;
begin
  Result := AsType<Double>;
end;

function TValueHelper.AsFloat: Extended;
begin
  Result := AsType<Extended>;
end;

function TValueHelper.AsPointer: Pointer;
begin
  ExtractRawDataNoCopy(@Result);
end;

function TValueHelper.AsSingle: Single;
begin
  Result := AsType<Single>;
end;

function TValueHelper.Equals(const value: TValue): boolean;
begin
  Result := SameValue(Self, value);
end;

function TValueHelper.IsBoolean: boolean;
begin
  Result := TypeInfo = System.TypeInfo(boolean);
end;

function TValueHelper.IsByte: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Byte);
end;

function TValueHelper.IsCardinal: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Cardinal);
end;

function TValueHelper.IsCurrency: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Currency);
end;

function TValueHelper.IsDate: boolean;
begin
  Result := TypeInfo = System.TypeInfo(TDate);
end;

function TValueHelper.IsDateTime: boolean;
begin
  Result := TypeInfo = System.TypeInfo(TDateTime);
end;

function TValueHelper.IsDouble: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Double);
end;

function TValueHelper.IsFloat: boolean;
begin
  Result := Kind = tkFloat;
end;

function TValueHelper.IsInt64: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Int64);
end;

function TValueHelper.IsInteger: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Integer);
end;

function TValueHelper.IsNumeric: boolean;
begin
  Result := Kind in [tkInteger, tkChar, tkEnumeration, tkFloat, tkWChar, tkInt64];
end;

function TValueHelper.IsPointer: boolean;
begin
  Result := Kind = tkPointer;
end;

function TValueHelper.IsShortInt: boolean;
begin
  Result := TypeInfo = System.TypeInfo(ShortInt);
end;

function TValueHelper.IsSingle: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Single);
end;

function TValueHelper.IsSmallInt: boolean;
begin
  Result := TypeInfo = System.TypeInfo(SmallInt);
end;

function TValueHelper.IsString: boolean;
begin
  Result := Kind in [tkChar, tkString, tkWChar, tkLString, tkWString, tkUString];
end;

function TValueHelper.IsTime: boolean;
begin
  Result := TypeInfo = System.TypeInfo(TTime);
end;

function TValueHelper.IsUInt64: boolean;
begin
  Result := TypeInfo = System.TypeInfo(UInt64);
end;

function TValueHelper.IsVariant: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Variant);
end;

function TValueHelper.IsWord: boolean;
begin
  Result := TypeInfo = System.TypeInfo(Word);
end;

{ TRttiTypeHelper }

function TRttiTypeHelper.FindConstructor: TRttiMethod;
var
  candidateCtor: TRttiMethod;
begin
  Result := nil;
  for candidateCtor in GetMethods('Create') do
  begin
    if Length(candidateCtor.GetParameters) = 0 then
    begin
      Result := candidateCtor;
      Break;
    end;
  end;
end;

function TRttiTypeHelper.TryGetMethod(const AName: string; out AMethod: TRttiMethod): boolean;
begin
  AMethod := GetMethod(AName);
  Result := Assigned(AMethod);
end;

end.
