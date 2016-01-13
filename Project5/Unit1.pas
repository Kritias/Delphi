unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if findwindow(nil, 'Этот компьютер') <>0
  then setwindowtext (findwindow(nil,'Этот компьютер'),'Этомана окно компьютерамана')
  else showmessage ('Нетумана компьютерамана');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
if findwindow(nil, 'Этот компьютер') <>0 then
  if IsIconic (findwindow(nil, 'Этот компьютер')) then
    Button2.Caption:='Развернуть'
  else Button2.Caption:='Свернуть'

else begin
  showmessage ('Нетумана компьютерамана');
  Button2.Caption:='НЕТ!!!';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if IsIconic (findwindow(nil, 'Этот компьютер'))
  then begin
       OpenIcon(findwindow(nil, 'Этот компьютер'));
       Button2.Caption:='Свернуть';
       end

  else begin
       CloseWindow(findwindow(nil, 'Этот компьютер'));
       Button2.Caption:='Развернуть';
       end;
end;

function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
Var
  Nm:Array[0..255] of Char;
  Cs: Array[0..255] of Char;
Begin
  GetWindowText(Wd,Nm,255);
  GetClassName(Wd,Cs,255);
  Form1.ListBox1.Items.Add(String(Nm)+'/'+String(Cs));
  EnumProc := TRUE;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.ListBox1.Items.Clear;
  EnumWindows(@EnumProc, 0);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  hnd:thandle;
  canvas:tcanvas;
  dc:hdc;
begin
  hnd:=findwindow(nil,'Form1');
  hnd:=findwindowex(hnd,0,'ListBox1',0);
  sendmessage(hnd,wm_paint,0,0);
  canvas:=tcanvas.create;
  dc:=getdc(hnd);
  with canvas do
    begin
      handle:=dc;
      rectangle(0,0,1366,768);
      font.color:=$0000ff;
      textout(655,375,'ВСЕ СЛОМАЛ!');
      free;
    end;
  releasedc(0,dc);
end;

end.
