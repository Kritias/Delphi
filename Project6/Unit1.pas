unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, Registry;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Switch1: TSwitch;
    Edit1: TEdit;
    procedure Switch1Switch(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}
{$R *.Surface.fmx MSWINDOWS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.Button1Click(Sender: TObject);
var RegIni:TRegIniFile;
begin
if Switch1.IsChecked
  then
    Begin
     RegIni := TRegIniFile.Create;
     RegIni.OpenKey('1Software', true);
     Edit1.Text := RegIni.ReadString('Hren','HrenPolnaja','Default');
     RegIni.Free;
    end
  else
    Begin
     RegIni := TRegIniFile.Create;
     RegIni.OpenKey('1Software', true);
     RegIni.WriteString('Hren','HrenPolnaja', Edit1.Text);
     RegIni.Free;
     ShowMessage('Создано');
     end;


end;

procedure TForm1.Button2Click(Sender: TObject);
var RegIni:TRegistry;
begin
  RegIni := TRegistry.Create;
  RegIni.DeleteKey('1Software');
  RegIni.Free;
  ShowMessage('Удалено');
end;

procedure TForm1.Switch1Switch(Sender: TObject);
begin
if Switch1.IsChecked
  then Button1.text :='Сканировать'
  else Button1.text :='Создать';
end;

end.
