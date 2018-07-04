object Form1: TForm1
  Left = 244
  Top = 140
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 464
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 176
    Top = 40
    Width = 401
    Height = 400
    Color = clWhite
    ParentColor = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 109
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1082#1090#1086#1088#1086#1074
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 46
    Height = 13
    Caption = #1044#1080#1072#1084#1077#1090#1088
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 66
    Height = 13
    Caption = #1044#1083#1080#1085#1072' '#1083#1080#1085#1080#1081
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 24
    Width = 65
    Height = 22
    EditorEnabled = False
    MaxValue = 100
    MinValue = 2
    TabOrder = 0
    Value = 3
    OnChange = SpinEdit2Change
  end
  object SpinEdit2: TSpinEdit
    Left = 8
    Top = 72
    Width = 65
    Height = 22
    EditorEnabled = False
    Increment = 10
    MaxValue = 400
    MinValue = 50
    TabOrder = 1
    Value = 400
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 8
    Top = 120
    Width = 65
    Height = 22
    EditorEnabled = False
    MaxValue = 200
    MinValue = 2
    TabOrder = 2
    Value = 15
    OnChange = SpinEdit2Change
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 160
    Width = 145
    Height = 73
    Caption = #1058#1080#1087' '#1082#1088#1091#1075#1072' '
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 184
    Width = 113
    Height = 17
    Caption = #1064#1082#1072#1083#1072
    Checked = True
    TabOrder = 4
    TabStop = True
    OnClick = SpinEdit2Change
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 208
    Width = 113
    Height = 17
    Caption = #1063#1077#1088#1085#1086#1077'-'#1073#1077#1083#1086#1077
    TabOrder = 5
    OnClick = SpinEdit2Change
  end
end
