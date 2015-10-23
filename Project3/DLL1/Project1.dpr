library Project1;

uses
  SysUtils,
  Classes;


function Sum(F: integer): integer;
begin
F:= F+2;
result:= F;
end;

{$R *.res}
exports Sum index 12;

begin

end.
 