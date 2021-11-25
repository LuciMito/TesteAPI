Feature: Executar testes funcionais nas APIs do South Park (spapi)

Scenario: Verificar o retorno com sucesso da API com dados validos de requisicao
    Given url 'https://spapi.dev/api/characters/1'
    When method get
    Then status 200

Scenario: Verificar o retorno com sucesso da API com dados invalidos de requisição
    Given url 'https://spapi.dev/api/charactersasfasfasf/1'
    When method get
    Then status 404