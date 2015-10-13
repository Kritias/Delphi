unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    DriveComboBox1: TDriveComboBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Edit3: TEdit;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cop : string;
  Vst : string;
  CopName : string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var Dir: string;

begin
if DirectoryExists(Edit1.Text) then

  ShowMessage (Edit1.Text + ' ��� ����������')

   else

  begin
  Dir := Label1.Caption + '\' + Edit1.text;
  ForceDirectories(Dir);
  if DirectoryExists(Dir) then
  ShowMessage ('����� '+Dir + ' �������');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var F:TFileStream;
begin
F:=TfileStream.Create(Edit2.Text + Edit4.Text,fmOpenWrite OR fmCreate);
  ShowMessage ('���� '+Edit2.Text + Edit4.Text + ' ������');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Cop := FileListBox1.FileName;
CopName := Edit3.Text;
ShowMessage (Cop + ' ����������');
end;

procedure TForm1.Button4Click(Sender: TObject);
Var S,D : TFileStream;
begin
Vst :=  Label1.Caption;
ShowMessage ('�������� � ' + Vst);

S:=TFileStream.Create(Cop,fmOpenRead);
D:=TFileStream.Create(Vst+ '\' + CopName,fmOpenWrite OR fmCreate);
D.CopyFrom(S,S.Size);
D.Free;
S.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var  i: integer;
s:string;
begin
  s:=GetCurrentDir;
  ShowMessage ('�������' + s);
  DirectoryListBox1.Directory := s;
for i := 0 to FileListBox1.Items.Count-1 do
  DeleteFile(s + '\' + FileListBox1.Items[i]);
  RemoveDir(s);
  end;
end.
