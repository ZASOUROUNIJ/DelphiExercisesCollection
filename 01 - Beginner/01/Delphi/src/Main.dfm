object MainView: TMainView
  Left = 0
  Top = 0
  Caption = 'Age in Days.'
  ClientHeight = 202
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 202
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 307
    ExplicitHeight = 237
    object edtTitle: TLabel
      Left = 80
      Top = 67
      Width = 122
      Height = 15
      Caption = 'Enter your age in years.'
    end
    object btnConvert: TButton
      Left = 80
      Top = 117
      Width = 121
      Height = 25
      Caption = 'Convert'
      TabOrder = 1
      OnClick = actConvertExecute
    end
    object edtAgeInYears: TEdit
      Left = 80
      Top = 88
      Width = 121
      Height = 23
      CanUndoSelText = True
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 16
    Top = 24
    object actConvert: TAction
      Caption = 'Convert'
      OnExecute = actConvertExecute
    end
  end
end
