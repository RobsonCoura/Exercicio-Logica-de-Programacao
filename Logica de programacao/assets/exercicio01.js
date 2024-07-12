/*
Analise o trecho de código a seguir em linguagem JavaScript:

function replacer(key, value) (
if (typeof value === "string") ( return undefined; )
return value;

var foo = ( hora: "20", dia: 15, meio: “carro”, ano: 2017);

var jsonString = JS5ON.stringify(foo, replacer);

Após executar esse trecho de código, o valor da variável
jsonString será:

(A) ("hora":"20") (Errada)

(B) ("dia":15,"ano":2017) (Correta)

(C) ("hora":"20","dia":15,"ano":2017) (Errada)

(D) (meio: "carro" (Errada)

(E) ("hora":"20","dia":15,"meio":"carro","ano":2017) (Errada)

*/

/*==========================================================================================================================*/

// Definição da função replacer que será usada como callback no JSON.stringify
// 1) Erro na funcao `replacer` estava com parenteces e precisava de chaves
function replacer(key, value) {
    // Verifica se o valor é do tipo string
    // 2) Erro na condicao `if` estava com parenteces e precisava de chaves
    if (typeof value === "string") {

        return undefined; // Se for string, retorna undefined para remover o valor do JSON final
    }
    return value; // Retorna o valor original para ser incluído no JSON final
}
// Definição do objeto foo que será convertido em JSON
// 3) Erro na variavel `foo` estava com parenteces e precisava de chaves
var foo = { hora: "20", dia: 15, meio: "carro", ano: 2017 };

// Converte o objeto foo em uma string JSON, aplicando a função replacer para transformação
// 4) Erro na variavel `JS5ON.stringify` estava com a nomeclatura errada a correta `JSON.stringify`
var jsonString = JSON.stringify(foo, replacer);

// Exibe o resultado no console
console.log(jsonString);
