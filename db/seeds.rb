# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Criando gêneros
Genre.create(name: 'Ação')
Genre.create(name: 'Animação')
Genre.create(name: 'Aventura')
Genre.create(name: 'Comédia')
Genre.create(name: 'Documentário')
Genre.create(name: 'Drama')
Genre.create(name: 'Ficção Científica')
Genre.create(name: 'Romance')
Genre.create(name: 'Suspense')
Genre.create(name: 'Terror')

# Criando diretores
Director.create(name: 'Fernando Meirelles', nationality: 'Brasileiro', birth_date: '31/07/1955', genre_id: 6)
Director.create(name: 'Glauber Rocha', nationality: 'Brasileiro', birth_date: '14/03/1939', genre_id: 6)
Director.create(name: 'Walter Salles', nationality: 'Brasileiro', birth_date: '12/04/1956', genre_id: 6)
Director.create(name: 'Spike Lee', nationality: 'Americano', birth_date: '20/03/1957', genre_id: 9)
Director.create(name: 'Quentin Tarantino', nationality: 'Americano', birth_date: '27/03/1963', genre_id: 9)
Director.create(name: 'Steven Spielberg', nationality: 'Americano', birth_date: '18/12/1946', genre_id: 3)
Director.create(name: 'Hayao Miyazaki', nationality: 'Japonês', birth_date: '05/01/1941', genre_id: 2)
Director.create(name: 'Christopher Nolan', nationality: 'Britânico', birth_date: '30/07/1970', genre_id: 7)
Director.create(name: 'Alfonso Cuarón', nationality: 'Mexicano', birth_date: '28/11/1961', genre_id: 6)
Director.create(name: 'Pedro Almodóvar', nationality: 'Espanhol', birth_date: '25/09/1949', genre_id: 6)

# Criando filmes
Movie.create(title: 'Cidade de Deus', release_year: 2002, synopsis: 'Retrato da vida na favela carioca', origin_country: 'Brasil', duration: 130, director_id: 1, genre_id: 6)
Movie.create(title: 'Central do Brasil', release_year: 1998, synopsis: 'Uma história de amizade e esperança no sertão brasileiro', origin_country: 'Brasil', duration: 113, director_id: 3, genre_id: 6)
Movie.create(title: 'O Pagador de Promessas', release_year: 1962, synopsis: 'Drama político brasileiro que retrata a luta de um homem contra a corrupção', origin_country: 'Brasil', duration: 98, director_id: 2, genre_id: 6)
Movie.create(title: 'Do The Right Thing', release_year: 1989, synopsis: 'Um olhar sobre as tensões raciais em uma vizinhança de Nova York', origin_country: 'Estados Unidos', duration: 120, director_id: 4, genre_id: 9)
Movie.create(title: 'Pulp Fiction', release_year: 1994, synopsis: 'Uma história não-linear que segue as vidas interconectadas de criminosos em Los Angeles', origin_country: 'Estados Unidos', duration: 154, director_id: 5, genre_id: 9)
Movie.create(title: 'E.T. - O Extraterrestre', release_year: 1982, synopsis: 'Um alienígena perdido na Terra faz amizade com um menino e tenta voltar para casa', origin_country: 'Estados Unidos', duration: 115, director_id: 6, genre_id: 3)
Movie.create(title: 'A Viagem de Chihiro', release_year: 2001, synopsis: 'Uma menina que se encontra em um mundo de espíritos deve descobrir uma maneira de retornar à sua própria realidade', origin_country: 'Japão', duration: 125, director_id: 7, genre_id: 2)
Movie.create(title: 'A Origem', release_year: 2010, synopsis: 'Um ladrão especializado em roubar segredos corporativos é contratado para realizar uma tarefa impossível: plantar uma ideia na mente de um CEO', origin_country: 'Estados Unidos', duration: 148, director_id: 8, genre_id: 7)
Movie.create(title: 'Gravidade', release_year: 2013, synopsis: 'Dois astronautas lutam para sobreviver no espaço após uma missão dar errado', origin_country: 'Estados Unidos', duration: 91, director_id: 9, genre_id: 6)
Movie.create(title: 'Fale com Ela', release_year: 2002, synopsis: 'Dois homens formam uma amizade incomum enquanto cuidam de duas mulheres em coma', origin_country: 'Espanha', duration: 112, director_id: 10, genre_id: 6)

# Filmes ainda não lançados
Movie.create(title: 'O Amor em Tempos de Pandemia', release_year: 2024, synopsis: 'Um casal luta para manter o relacionamento vivo durante uma pandemia global', origin_country: 'Brasil', duration: 120, director_id: 1, genre_id: 4)
Movie.create(title: 'A Última Fronteira', release_year: 2025, synopsis: 'Uma equipe de astronautas parte em uma missão para explorar um planeta distante', origin_country: 'Estados Unidos', duration: 130, director_id: 2, genre_id: 5)
Movie.create(title: 'A Sombra do Passado', release_year: 2026, synopsis: 'Um homem tenta desvendar o mistério por trás do assassinato de sua esposa', origin_country: 'Itália', duration: 105, director_id: 3, genre_id: 1)
Movie.create(title: 'O Outro Lado da Verdade', release_year: 2027, synopsis: 'Um advogado luta para provar a inocência de seu cliente em um caso de homicídio', origin_country: 'França', duration: 118, director_id: 4, genre_id: 8)
Movie.create(title: 'O Último Golpe', release_year: 2028, synopsis: 'Um ex-criminoso é forçado a realizar um último golpe para salvar a vida de sua filha', origin_country: 'Estados Unidos', duration: 140, director_id: 5, genre_id: 9)
Movie.create(title: 'O Regresso para Casa', release_year: 2024, synopsis: 'Um alienígena perdido na Terra tenta encontrar uma maneira de voltar para casa', origin_country: 'Estados Unidos', duration: 115, director_id: 6, genre_id: 3)
Movie.create(title: 'O Labirinto do Espírito', release_year: 2025, synopsis: 'Uma jovem deve desvendar o mistério por trás de um labirinto mágico para salvar sua família', origin_country: 'Espanha', duration: 122, director_id: 7, genre_id: 2)
Movie.create(title: 'O Último Sonho', release_year: 2026, synopsis: 'Um homem deve lutar para manter sua sanidade enquanto tenta desvendar os segredos do mundo dos sonhos', origin_country: 'Estados Unidos', duration: 155, director_id: 8, genre_id: 7)
Movie.create(title: 'A Última Chance', release_year: 2027, synopsis: 'Dois astronautas lutam para sobreviver em uma missão espacial após um acidente inesperado', origin_country: 'Brasil', duration: 97, director_id: 9, genre_id: 6)
Movie.create(title: 'O Preço da Vida', release_year: 2028, synopsis: 'Um homem deve tomar decisões difíceis quando é diagnosticado com uma doença terminal', origin_country: 'Itália', duration: 110, director_id: 10, genre_id: 6)
