unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
Unit2;

var y: Tnew;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
y:=Tnew.Create(true);
y.Resume;
y.Priority:=tpHighest;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if y.Suspended = true
 then y.Resume
 else y.Suspend;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
y.Destroy;
Label1.Caption:='0';
end;

end.
