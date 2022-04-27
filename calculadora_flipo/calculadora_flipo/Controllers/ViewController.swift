//
//  ViewController.swift
//  calculadora_flipo
//
//  Created by gabrielfelipo on 24/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    let agulha: [Agulha] = [Agulha(nome: "M1", preco: 4.00, imagem: "agulha1"),
                    Agulha(nome: "M2", preco: 5.00, imagem:"agulha2"),
                    Agulha(nome: "M3", preco: 4.00, imagem:"agulha3"),
                    Agulha(nome: "M4", preco: 5.00, imagem:"agulha4"),
                    Agulha(nome: "M5", preco: 4.30, imagem:"agulha5"),
    ]
    
    
    
    let biqueira: [Biqueira] = [Biqueira(nome: "B1", preco: 4.00, imagem: "biqueira1"),
                    Biqueira(nome: "B2", preco: 5.00, imagem:"biqueira2"),
                    Biqueira(nome: "B3", preco: 4.00, imagem:"biqueira3"),
                    Biqueira(nome: "B4", preco: 5.00, imagem:"biqueira4"),
                    Biqueira(nome: "B5", preco: 4.30, imagem:"biqueira5"),
    ]
    
    //let table: [Table] = [Table(item: Agulha(nome: "M1", preco: 4.00, imagem: "agulha1")),
    //]
    
    
    // Retorna o número de linhas das seções da tabela.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Provém um objeto de célula para cada linha.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Parte 1: Buscar uma célula do tipo apropriado.
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
               
        // Parte 2: Configurar o conteúdo da célula.
        cell.titleLabel!.text = "Título"
        
        cell.collectionView.delegate = self
        cell.collectionView.dataSource = self
        
        return cell
    }
    
    // Retorna a altura das linhas da tabela.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
    // Retorna o número de itens para a collection.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return agulha.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Provém um objeto de célula para cada item.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Parte 1: Buscar uma célula do tipo apropriado.
        let cellCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
                
                // Parte 2: Configurar o conteúdo da célula.
        cellCollection.collectionViewTextLabel!.text = "Texto"
        
        let item = agulha[indexPath.row]
        cellCollection.imageView.image = UIImage(named: item.imagem)
        cellCollection.collectionViewTextLabel.text = item.nome
                
        return cellCollection
    }
    
    
    
    func AddValor() {
        //Leia o valor unitário do objeto X
        //Leia a quantidade atual do objeto X
        //Incremente 1 na quantidade do objeto
        //Adicione o valor unitário no valor total
    }
    
    func SubValor() {
        //Leia o valor unitário do objeto X
        //Leia a quantidade atual do objeto X
        //Decremente 1 na quantidade do objeto
        //Subtraia o valor unitário do valor total
    }
    
    func OpenItem() {
        //Abra a tela de adição e subtração
        //Altera o status paa
    }
    
    func NewItem() {
        //Abre a tela de novo item
    }
    
    func CadItem() {
        //Cadastro de novo item
        //Insere o "Nome" no text field
        //Insere o "Valor" no text field
    }
    
}

