--Sua empresa está fazendo um levantamento de quantos clientes estão cadastrados nos estados, porém, faltou levantar os dados do estado do Rio Grande do Sul.
--Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.
select customers.name
from customers
where customers.state = 'RS'

--A empresa fará um evento comemorando os 20 anos de mercado, e para isso faremos uma grande comemoração na cidade de Porto Alegre. Queremos também convidar todos os nossos clientes que estão cadastrados nessa cidade.
--O seu trabalho é nos passar os nomes e os endereços dos clientes que moram em 'Porto Alegre', para entregar os convites pessoalmente.
select customers.name, customers.street
from customers
where customers.city = 'Porto Alegre'

--O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.
select products.id, products.name
from products
where price < 10 or price > 100

--O setor financeiro precisa de um relatório sobre os fornecedores dos produtos que vendemos. Os relatórios contemplam todas as categorias, mas por algum motivo, os fornecedores dos produtos cuja categoria é a executiva, não estão no relatório.
--Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.
SELECT p.name, pv.name
FROM products as p
INNER JOIN providers as pv ON p.id_providers = pv.id
WHERE p.id_categories = 6;

--Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido por parte do antigo DBA.
--Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria inicie com 'super'.
Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria inicie com 'super'.
select products.id, products.name
from categories inner join products on products.id_categories = categories.id
where categories.name like '%super%'

--Todos os meses a empresa pede um relatório das cidades que os fornecedores estão cadastrados. Dessa vez não vai ser diferente, faça uma consulta no Banco de Dados que retorne todas as cidades dos fornecedores, mas em ordem alfabética.
--OBS: Você não deve mostrar cidades repetidas.
select distinct providers.city
from providers
order by city

--O setor financeiro da nossa empresa, está querendo saber os menores e maiores valores dos produtos, que vendemos.
--Para isso exiba somente o maior e o menor preço da tabela produtos.
select max(price), min(price)
from products

--Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.
--Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.
select categories.name, sum(products.amount)
from products, categories
where products.id_categories = categories.id
group by categories.name

--Na empresa que você trabalha está sendo feito um levantamento sobre os valores dos produtos que são comercializados.
--Para ajudar o setor que está fazendo esse levantamento você deve calcular e exibir o valor médio do preço dos produtos.
--OBS: Mostrar o valor com dois números após o ponto.
select round(avg(price), 2)
from products

--Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
select movies.id, movies.name
from movies, genres
where movies.id_genres = genres.id and genres.description = 'Action'

--Antigamente a locadora fez um evento em que vários filmes estavam em promoção, queremos saber que filmes eram esses.
--Seu trabalho para nós ajudar é selecionar o ID e o nome dos filmes cujo preço for menor que 2.00.
select movies.id, movies.name
from movies, prices
where movies.id_prices = prices.id and prices.value < 2

--A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.
select customers.name, rentals.rentals_date
from customers, rentals
where customers.id = rentals.id_customers and rentals.rentals_date between '2016-09-01' and '2016-09-30'

--A locadora tem objetivos de criar várias franquias espalhadas pelo Brasil. Para isso queremos saber em quais cidades nossos clientes moram.
--Para você nos ajudar selecione o nome de todas as cidades onde a locadora tem clientes. Mas por favor, não repita o nome da cidade.
select distinct city
from customers

--O setor financeiro encontrou alguns problemas na entrega de um dos nossos fornecedores, a entrega dos produtos não condiz com a nota fiscal.
--Seu trabalho é exibir o nome dos produtos e o nome do fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax SA’.
select p.name, providers.name
from products as p, providers
where providers.id = p.id_providers and providers.name = 'Ajax SA'

--O setor de importação da nossa empresa precisa de um relatório sobre a importação de produtos do nosso fornecedor Sansul.
--Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria, para os produtos fornecidos pelo fornecedor ‘Sansul SA’ e cujo nome da categoria seja 'Imported'.
select products.name, providers.name, categories.name
from products, providers, categories
where products.id_providers = providers.id and products.id_categories = categories.id and providers.name = 'Sansul SA' and categories.name = 'Imported'

--A nossa empresa está querendo fazer um novo contrato para o fornecimento de novos produtos superluxuosos, e para isso precisamos de alguns dados dos nossos produtos.
--Seu trabalho é exibir o nome dos produtos, nome dos fornecedores e o preço, para os produtos cujo preço seja maior que 1000 e sua categoria seja ‘Super Luxury.
select p.name, f.name, p.price
from products as p, providers as f, categories
where p.id_providers = f.id and p.id_categories = categories.id
and p.price > 1000 and categories.name = 'Super Luxury'

--A auditoria financeira da empresa está pedindo para nós um relatório do primeiro semestre de 2016. Então exiba o nome dos clientes e o número do pedido para os clientes que fizeram pedidos no primeiro semestre de 2016.
select cli.name, orders.id
from customers as cli, orders
where cli.id = orders.id_customers and orders.orders_date between '2016-01-01' and '2016-06-30'

--Na hora de entregar o relatório de quantos produtos a empresa tem em estoque, uma parte do relatório ficou corrompida, por isso o responsável do estoque lhe pediu uma ajuda, ele quer que você exiba os seguintes dados para ele.
--Exiba o nome dos produtos cujas quantidades estejam entre 10 e 20 e cujo nome do fornecedor inicie com a letra ‘P’.
select products.name
from products, providers
where products.id_providers = providers.id and products.amount between '10' and '20'
and providers.name like '%P%'

--O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. Para isso você deve exibir o nome dos clientes que sejam pessoa jurídica.
