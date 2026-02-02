unit Unit1;

interface

uses
  System.JSON,
  
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TTelaPrincipal = class(TForm)
    lblNome: TLabel;
    lblCapital: TLabel;
    lblRegiao: TLabel;
    lblPopulacao: TLabel;
    lblMoedas: TLabel;
    lblPesquisar: TLabel;
    edtPesquisar: TEdit;
    edtNome: TEdit;
    edtCapital: TEdit;
    edtRegiao: TEdit;
    edtPopulacao: TEdit;
    edtMoedas: TEdit;
    rstclntPaises: TRESTClient;
    rstrqstPaises: TRESTRequest;
    rstrspnsPaises: TRESTResponse;
    procedure edtPesquisarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrincipal: TTelaPrincipal;

implementation

{$R *.dfm}

procedure TTelaPrincipal.edtPesquisarExit(Sender: TObject);
var pesquisar: string;

begin
  pesquisar := edtPesquisar.Text;
  rstrqstPaises.Resource := pesquisar;

  try
    rstrqstPaises.Execute;

    if rstrspnsPaises.StatusCode <> 200 then
    begin
      ShowMessage('Nome de País Inválido');
      Exit;
    end;

    begin
      var JSONArr := TJSONObject.ParseJSONValue(rstrspnsPaises.Content) as TJSONArray;
      var JSON := JSONArr.Items[0] as TJSONObject;

      edtNome.Text := JSON.GetValue<TJSONObject>('name').GetValue<string>('official');
      edtCapital.Text := (JSON.GetValue('capital') as TJSONArray).Items[0].Value;
      edtRegiao.Text := JSON.GetValue<string>('region');
      edtPopulacao.Text := JSON.GetValue<string>('population');
      edtMoedas.Text := JSON.GetValue<TJSONObject>('currencies').Pairs[0].JsonValue.GetValue<string>('name');
        
    end;

    except
      on E: Exception do
        ShowMessage('Erro ' + E.Message);
  end;

end;

end.
