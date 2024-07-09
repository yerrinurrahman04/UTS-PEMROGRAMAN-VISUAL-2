unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into satuan (nama, deskripsi) values (:nama, :deskripsi)');
DataModule2.ZQuery1.Params.ParamByName('nama').AsString := Edit1.Text;
DataModule2.ZQuery1.Params.ParamByName('deskripsi').AsString := Edit2.Text;
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('update satuan set nama = :nama, deskripsi = :deskripsi where id = :id');
DataModule2.ZQuery1.Params.ParamByName('nama').AsString := Edit1.Text;
DataModule2.ZQuery1.Params.ParamByName('deskripsi').AsString := Edit2.Text;
DataModule2.ZQuery1.Params.ParamByName('id').AsString := a; // Pastikan 'a' adalah variabel yang menyimpan ID yang valid
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Diubah!');
DataModule2.ZQuery1.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('delete from satuan where id= "'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Dihapus!');

end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule2.ZQuery1.Fields[1].AsString;
Edit2.Text := DataModule2.ZQuery1.Fields[2].AsString;
a:= DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text :='';
Edit2.Text :='';
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  searchTerm: string;
begin
  searchTerm := Edit3.Text;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan where nama like :searchTerm or deskripsi like :searchTerm');
  DataModule2.ZQuery1.Params.ParamByName('searchTerm').AsString := '%' + searchTerm + '%';
  DataModule2.ZQuery1.Open;
end;
end.
 