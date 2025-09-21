Gerador de Etiquetas
=====================

## Motivação
O projeto surgiu da necessidade de gerar etiquetas para identificação do estoque, inventário e também para expedição.  
Com o tempo, foi sendo personalizado e hoje as etiquetas são utilizadas diariamente para identificação de produtos e caixas, tanto para armazenamento quanto para transporte.

## Como usar
1. Certifique-se de ter o **Python** instalado em sua máquina.
2. Entre na pasta **Essentials**.
3. Execute os arquivos na seguinte ordem:
   - `02.instalar_requisitos`
   - `03.atualizar_caminhos`
4. Instale a fonte **cod128** que está no arquivo ZIP.
5. Após essas etapas, basta executar o arquivo `GERADOR DE ETIQUETAS.bat` que está na raiz do projeto.

## Estrutura de Arquivos

```
C:.
├───Essentials
├───Etiqueta Geradores
├───output
└───src
```

### Descrição das pastas:
- **Essentials** → Contém os arquivos básicos de configuração e instalação.  
- **Etiqueta Geradores** → Contém os arquivos que o programa executa. **Não deve-se alterar nada dentro desta pasta**.  
- **output** → Onde ficam os relatórios gerados. O programa sempre cria arquivos novos com **data e hora**, evitando sobrescrever arquivos anteriores. Caso precise recuperar algo, este é o local correto.  
- **src** → Contém o código-fonte do programa.

## Observação
O sistema foi estruturado para ser simples de usar e seguro para não sobrescrever arquivos originais. Assim, garante rastreabilidade de cada execução.
