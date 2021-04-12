unit U_ListaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  Tfrm_lista_pedidos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qry_mestre: TFDQuery;
    qry_mestrenome: TStringField;
    qry_mestrenum_pedido: TIntegerField;
    qry_mestrevalor_total: TFloatField;
    ds_mestre: TDataSource;
    qry_detalhe: TFDQuery;
    qry_detalheid_prod: TFDAutoIncField;
    qry_detalhedescricao: TStringField;
    qry_detalhenum_pedido: TFDAutoIncField;
    qry_detalheqtde: TIntegerField;
    qry_detalhevlr_unit: TFloatField;
    qry_detalhevlr_total: TFloatField;
    ds_detalhe: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lista_pedidos: Tfrm_lista_pedidos;

implementation

{$R *.dfm}

uses U_dm;

procedure Tfrm_lista_pedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_lista_pedidos := nil;
end;

end.
