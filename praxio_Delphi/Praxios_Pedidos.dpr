program Praxios_Pedidos;

uses
  Vcl.Forms,
  WK.Cliente in 'Classe\WK.Cliente.pas',
  WK.Produto in 'Classe\WK.Produto.pas',
  U_dm in 'Fontes\U_dm.pas' {DM: TDataModule},
  U_ListaPedidos in 'Fontes\U_ListaPedidos.pas' {frm_lista_pedidos},
  U_PDV in 'Fontes\U_PDV.pas' {frm_pdv},
  U_Pesquisa in 'Fontes\U_Pesquisa.pas' {frm_Pesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_pdv, frm_pdv);
  Application.CreateForm(Tfrm_lista_pedidos, frm_lista_pedidos);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_lista_pedidos, frm_lista_pedidos);
  Application.CreateForm(Tfrm_pdv, frm_pdv);
  Application.CreateForm(Tfrm_Pesquisa, frm_Pesquisa);
  Application.Run;
end.
