```markdown
# Leitor de Tags HTML com Nokogiri

Este é um script Ruby simples que utiliza as gems `nokogiri` e `net/http` para fazer uma requisição HTTPS a 'http://example.com/', analisar o HTML retornado e imprimir o conteúdo da primeira tag `<p>` encontrada.

## Como Usar

1. Certifique-se de ter Ruby instalado.

2. Instale as gems necessárias executando:

   ```bash
   gem install nokogiri
   ```

3. Execute o script Ruby:

   ```bash
   ruby leitor_html.rb
   ```

   Isso fará uma requisição HTTPS a 'http://example.com/', analisará o HTML retornado e imprimirá o conteúdo da primeira tag `<p>` encontrada.

## Notas

- Este script utiliza a gem `nokogiri` para analisar o HTML e a gem `net/http` para fazer a requisição HTTPS.

- Certifique-se de estar conectado à internet ao executar o script, pois ele faz uma requisição a 'http://example.com/'.

- Este é um exemplo simples e pode ser modificado para atender a diferentes requisitos.

## Exemplo de Uso

```ruby
require 'nokogiri'
require 'net/http'

http = Net::HTTP.new('example.com', 443)
http.use_ssl = true

response = http.get('/')

doc = Nokogiri::HTML(response.body)

first_paragraph = doc.at('p')
puts first_paragraph.content
```

Lembre-se de personalizar as instruções de acordo com suas necessidades específicas.
