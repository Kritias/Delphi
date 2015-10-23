object Form1: TForm1
  Left = 224
  Top = 314
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
    Left = 8
    Top = 8
    Width = 137
    Height = 57
    Caption = 'Result'
  end
  object Button1: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Plus'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 248
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
end
