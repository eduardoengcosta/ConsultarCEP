Este repositório contém o código de uma aplicação desenvolvida em Delphi que consulta informações de endereço de um CEP utilizando três APIs diferentes (ViaCEP, ApiCEP e AwesomeAPI). 
O objetivo é fornecer a melhor disponibilidade possível ao usuário do sistema, utilizando um mecanismo de failover entre as APIs, de forma que, se uma estiver indisponível, 
as outras são acionadas sequencialmente.
A solução foi desenvolvida com recursos nativos da IDE Delphi e não utiliza bibliotecas de terceiros exceto via o gerenciador de pacotes Boss, conforme solicitado.

Funcionalidades:
Consulta de endereço através do CEP usando três APIs:
ViaCEP
ApiCEP
AwesomeAPI

Mecanismo de failover automático entre as APIs, garantindo maior disponibilidade.
Possibilidade de consultar via interface gráfica (Cliente) ou através de uma API REST (usando Horse).
Testes unitários implementados.
Documentação para desenvolvedores e usuários (swagger).

Tecnologias Utilizadas
Delphi: Linguagem principal para o desenvolvimento do projeto.
FMX: Interface gráfica para interação do usuário.
Horse: Framework utilizado para criar a API REST.
Boss: Gerenciador de pacotes Delphi utilizado para gerenciar dependências.

