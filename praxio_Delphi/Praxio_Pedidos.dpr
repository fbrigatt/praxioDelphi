program Praxio_Pedidos;

uses
  Vcl.Forms,
  U_PDV in 'U_PDV.pas' {frm_pdv},
  U_dm in 'U_dm.pas' {DM: TDataModule},
  U_Pesquisa in 'U_Pesquisa.pas' {frm_Pesquisa},
  WK.Cliente in 'Classe\WK.Cliente.pas',
  WK.Produto in 'Classe\WK.Produto.pas',
  U_ListaPedidos in 'U_ListaPedidos.pas' {frm_lista_pedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_pdv, frm_pdv);
  Application.CreateForm(Tfrm_lista_pedidos, frm_lista_pedidos);
  Application.Run;
end.
