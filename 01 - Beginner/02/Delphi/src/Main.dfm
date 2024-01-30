object MainView: TMainView
  Left = 0
  Top = 0
  Caption = 'Find Nemo'
  ClientHeight = 105
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object lblTitle: TLabel
    Left = 8
    Top = 8
    Width = 59
    Height = 15
    Caption = 'Find Nemo'
  end
  object edtFindNemo: TEdit
    Left = 8
    Top = 32
    Width = 239
    Height = 23
    TabOrder = 0
  end
  object btnFindNemo: TButton
    Left = 88
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 1
    OnClick = btnFindNemoClick
  end
end
