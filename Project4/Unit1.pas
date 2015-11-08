unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  HookProc = procedure(State: Boolean); stdcall;
  TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    DllHandle: HWND;
    SH: HookProc;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
SH(true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
SH(false);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DllHandle:=LoadLibrary('Hook.dll');
if DllHandle=0 then
  ShowMessage(IntToStr(GetLastError))
else
  @SH:=GetProcAddress(DllHandle, 'SetHook');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DllHandle<>0 then
  FreeLibrary(DllHandle);
end;

end.
