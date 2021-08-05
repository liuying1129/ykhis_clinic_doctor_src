object frmModifyAge: TfrmModifyAge
  Left = 364
  Top = 168
  BorderStyle = bsDialog
  Caption = #20462#25913#24180#40836
  ClientHeight = 261
  ClientWidth = 284
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 48
    Top = 200
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 200
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object LabeledEdit4: TLabeledEdit
    Left = 84
    Top = 65
    Width = 121
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = #24180#40836
    TabOrder = 0
    OnExit = LabeledEdit4Exit
  end
  object DosMove1: TDosMove
    Active = True
    Left = 24
    Top = 24
  end
end
