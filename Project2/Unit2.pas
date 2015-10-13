unit Unit2;

interface

uses
  Classes, Windows, Unit1;

type
  Tnew = class(TThread)
  private
  index : integer;
  protected
  procedure UpdateLabel;
  procedure Execute; override;
  end;

implementation

uses SysUtils;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Tnew.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Tnew }

procedure Tnew.UpdateLabel;
begin
Form1.Label1.Caption:=IntToStr(Index);
end;

procedure Tnew.Execute;
begin
  index:=1;
  while index>0 do
    begin
    Synchronize(UpdateLabel);
    Inc(index);
    if index>100000 then
    index:=0;
  if terminated then exit;
end;
end;

end.
