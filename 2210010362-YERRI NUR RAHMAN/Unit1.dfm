object Form1: TForm1
  Left = 566
  Top = 275
  Width = 594
  Height = 388
  Caption = 'SATUAN'
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
    Left = 72
    Top = 32
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 72
    Top = 69
    Width = 57
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object Label3: TLabel
    Left = 72
    Top = 272
    Width = 94
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Button1: TButton
    Left = 104
    Top = 96
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 96
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 96
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 160
    Top = 64
    Width = 321
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 136
    Width = 441
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 176
    Top = 264
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object Button5: TButton
    Left = 424
    Top = 264
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = Button5Click
  end
end
