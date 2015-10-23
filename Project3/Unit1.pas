unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

procedure ShowA(Handle: THandle)stdcall;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type TMyProc  = function(F: integer): integer;
var
  Form1: TForm1;

procedure ShowA; external 'Project2.dll' index 11;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowA(Handle);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
Handle : THandle;
Sum : TMyProc;
begin
Handle := LoadLibrary('Project1.dll');
@Sum:=GetProcAddress(Handle,'Sum');
Label1.Caption:= IntToStr(Sum(StrToInt(Edit1.Text)));
FreeLibrary(Handle);
end;

end.
