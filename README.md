# Projeto de Automação

Este projeto consiste em uma automação desenvolvida em Robot Framework para realizar testes funcionais no site dos correios.

## Pré-requisitos

- Python 3.x instalado
- Robot Framework instalado (pode ser instalado via pip)
- Bibliotecas do Robot Framework necessárias: SeleniumLibrary e ScreenCapLibrary

## Instalação

1. Clone este repositório para o seu ambiente local:
    ```shell
    git clone https://github.com/seu-usuario/seu-projeto.git
    ```

2. Instale as dependências do projeto:
    ```shell
    pip install -r docs/requirements.txt
    ```

## Utilização

1. Navegue até o diretório do projeto:
    ```
    cd Automacao_Correios
    ```

2. Execute o teste de automação:
    ```
    robot -d results tests_suits
    ```

## Pastas do Projeto

- `docs`: Diretório contendo os documentos do projeto.
- `resources`: Diretó contendo os arquivos com as variáveis e os screenshots do projeto.
- `results`: Diretório onde são armazenados os resultados da execução dos testes.
- `steps`: Diretório contendo as keywords.
- `tests_suits`: Diretório contendo as suites de teste.

## Contribuição

Contribuições são bem-vindas! Se você identificar algum problema, bug ou tiver sugestões de melhorias, por favor, abra uma issue ou envie um pull request.

## Autores

- Luiz henrique (LuizHenriqueVitoino)

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](docs/LICENSE) para mais detalhes.

## Agradecimentos

- Aos desenvolvedores do Robot Framework e das bibliotecas utilizadas neste projeto.
- Ao meu amigo Delacroix, pelos insentivos nem sempre amistosos.

