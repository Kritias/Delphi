object Form1: TForm1
  Left = 522
  Top = 145
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 16
    Width = 116
    Height = 13
    Caption = 'D:\Files\Delphi\Project1'
  end
  object FileListBox1: TFileListBox
    Left = 176
    Top = 40
    Width = 145
    Height = 97
    FileEdit = Edit3
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 32
    Top = 56
    Width = 145
    Height = 97
    DirLabel = Label1
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object FilterComboBox1: TFilterComboBox
    Left = 176
    Top = 136
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 2
  end
  object DriveComboBox1: TDriveComboBox
    Left = 32
    Top = 40
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 32
    Top = 184
    Width = 97
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 208
    Width = 97
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 184
    Width = 97
    Height = 21
    TabOrder = 6
    Text = #1053#1086#1074#1072#1103' '#1087#1072#1087#1082#1072
  end
  object Edit2: TEdit
    Left = 128
    Top = 208
    Width = 97
    Height = 21
    TabOrder = 7
    Text = #1060#1072#1081#1083
  end
  object Button3: TButton
    Left = 32
    Top = 232
    Width = 97
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 128
    Top = 232
    Width = 97
    Height = 25
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit4: TEdit
    Left = 224
    Top = 208
    Width = 33
    Height = 21
    TabOrder = 10
    Text = '.txt'
  end
  object Edit3: TEdit
    Left = 32
    Top = 160
    Width = 289
    Height = 21
    TabOrder = 11
    Text = '*.*'
  end
  object Button5: TButton
    Left = 224
    Top = 184
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 12
    OnClick = Button5Click
  end
end
