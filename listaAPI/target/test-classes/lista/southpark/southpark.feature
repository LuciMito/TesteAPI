Feature: Executar testes funcionais nas APIs do South Park (spapi)

Scenario: Verificar o retorno com sucesso da API /characters/1 com dados validos de requisicao (request)
    Given url 'https://spapi.dev/api/characters/1'
    When method get
    Then status 200

Scenario: Verificar o retorno com sucesso da API /characters/1 com dados validos de requisicao (request)
    Given url 'https://spapi.dev/api/charactersasfasfasf/1'
    When method get
    Then status 404