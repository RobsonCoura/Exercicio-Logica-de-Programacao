/* 
Herança de classe é um principio presente na linguagem Swift e
que torna possivel classes compartilharem atributos e métodos.
Analise o trecho de código a seguir escrito em linguagem Swift:

class Veiculo {
    func buzinar() {
        print("Bii Bii!”)
    }
}

class Motocicleta: Veiculo {
        func buzinarAlto() {
            print("Piii!")

    }
}

class Motoneta: Motocicleta {
    override func buzinar() {
        print("Pi Piii!”)
    }
}

let tracker = Motocicleta()
let scooter = Motoneta()

tracker.buzinar()
scooter.buzinar()

Após a execução deste trecho de código, será impresso na saída
padrão:
(A) Bii Bii! ( x )
Pi Piii!
(BR) Piiil
Pi Piii!
(C) Bii Bii!
Bii Bii!
(D) Piii!
Bii Bii!
(E) Pi Piiil
Pi Piii!

*/



// Definição da classe base Veiculo
// 1) Erro na Classe `Veiculo` estava com parenteces e precisava de chaves
class Veiculo {
    // Método buzinar da classe Veiculo
    // 2) Método buzinar troquei um parenteces abrindo por chave, e estava faltando fechar com duas chaves
    func buzinar() {
        print("Bii Bii!") 
    }
}

// Definição da classe Motocicleta que herda de Veiculo
// 3) Erro na Classe `Motocicleta` estava com parenteces e precisava de chaves
class Motocicleta: Veiculo {
    // Método específico para buzinar alto da Motocicleta
    func buzinarAlto() {
        print("Piii!")
    }
}

// Definição da classe Motoneta que herda de Motocicleta
class Motoneta: Motocicleta {
    // Sobrescrita do método buzinar para Motoneta
    override func buzinar() {
        print("Pi Piii!")
    }
}

// Instâncias das classes Motocicleta e Motoneta
let tracker = Motocicleta() 
let scooter = Motoneta() 

// Chamada dos métodos buzinar() de cada instância
tracker.buzinar() // Saída esperada: "Piii!" (buzina alta da Motocicleta)
scooter.buzinar()  // Saída esperada: "Pi Piii!" (buzina específica da Motoneta)
