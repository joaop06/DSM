<template>
  <v-container fluid>
      <v-row class="mt-3 pa-5" justify="space-between">


        <!-- SACOLA DE PRODUTOS -->
        <v-col cols="3">
          <v-sheet class="pa-3 justify-center text-center" color="rgb(255,255,255,0.5)" height="75vh" width="100%"
            rounded="xl" :elevation="8">
            <v-list-item-title class="text-center">
              <span class="text-h6">
                Sacola de Produtos
              </span>
            </v-list-item-title>

            <v-divider></v-divider>

            <div class="shadow-invertida pa-1 mt-5 scrollbar-estilo"
              :style="{ 'height': '75%', 'max-height': '75%', 'overflow-y': 'auto', 'border-radius': '8px' }">

              <!-- Itens Adicionados a Sacola-->
              <v-row v-if="sacolaPedidos.list_produtos.length !== 0" class="pa-3" justify="center"
                :style="{ 'width': '99%' }">

                <!-- Card do Produto na Sacola -->
                <v-sheet v-for="(produto, index) in sacolaPedidos.list_produtos"
                  class="d-flex mt-3 pa-3 justify-space-between align-center"
                  :style="{ 'background-color': '#f1f1f1', 'border': '#FF1744 1px solid' }" :key="index" rounded="shaped"
                  width="90%" :elevation="4">

                  <div class="d-flex flex-column">

                    <p>{{ produto.nome }}</p>
                    <v-list-item-subtitle class="mt-2 ml-3" align="start">
                      <span>{{ (parseFloat(produto.preco)).toLocaleString("pt-BR", { style: "currency", currency: "BRL" })
                      }}</span>
                    </v-list-item-subtitle>
                  </div>

                  <v-btn class="bg-red-accent-3" icon="mdi-delete" size="40" :elevation="0"
                    @click="remove_Sacola(index, produto)"></v-btn>
                </v-sheet>
              </v-row>

              <!-- Mensagem de Sacola Vazia-->
              <v-sheet v-else class="d-flex justify-center align-center text-body-1"
                :style="{ 'background-color': '#ded5d2' }" height="100%">
                <p>Sua sacola está vazia!</p>
              </v-sheet>
            </div>


            <!-- Rodapé da Sacola (Total e Botão de Finalizar Pedido)-->
            <v-card class="mt-8 text-start" :elevation="0" color="rgb(0, 0, 0, 0)" width="90%" height="3vh">

              <span v-if="sacolaPedidos.total == null">Total: R$ 0,00</span>
              <span v-else-if="sacolaPedidos.total <= 0">Total: R$ 0,00</span>
              <span v-else>Total: {{ (sacolaPedidos.total).toLocaleString("pt-BR", { style: "currency", currency: "BRL" })
              }} </span>
            </v-card>


            <!-- Botão p/ Finalizar Pedido-->
            <v-btn @click="finalizarPedido" v-if="sacolaPedidos.list_produtos.length > 0" class="mt-5 bg-red-accent-3"
              justify="center" width="90%" rounded="lg">
              Finalizar Pedido
            </v-btn>

          </v-sheet>
        </v-col>



        <!-- LISTA DE PRODUTOS (CARDÁPIO) -->
        <v-col class="ma-auto" cols="9" rounded="xl">
          <v-row justify="start">
            <v-col v-for="(produto, index) in cardapio" class="d-flex justify-space-around aligin-center" :key="index"
              cols="4">

              <v-card color="rgb(0, 0, 0, 0)" rounded="lg" width="25vw" height="30vh" min-height="200px">

                <v-img class="image justify-space-between align-end d-flex"
                  gradient="to bottom, rgba(0,0,0,0), rgba(0,0,0,0.6), rgba(0,0,0,1)" :src="produto.imagem"
                  :lazy-src="produto.imagem" cover min-height="200px">
                  <template v-slot:placeholder>
                    <div class="d-flex align-center justify-center fill-height">
                      <v-progress-circular color="grey-lighten-4" indeterminate></v-progress-circular>
                    </div>
                  </template>

                  <v-card color="transparent" :elevation="0">

                    <v-card-title>
                      <span class="text-h6 text-white text-bold">{{ produto.nome }}</span>
                    </v-card-title>
                    <v-card-subtitle class="mt-n3">
                      <span class="text-white">{{ produto.descricao }}</span>
                    </v-card-subtitle>

                    <v-card-text class="my-n4">
                      <v-row justify="space-between" no-gutters>
                        <v-card class="font-weight-black d-flex justify-center ma-5 pa-1" color="rgb(255, 255, 255, 0)"
                          :elevation="0">
                          <span :style="{ 'color': 'white', 'font-weight': 'bold' }">{{
                            parseFloat(produto.preco).toLocaleString("pt-BR", { style: "currency", currency: "BRL" })
                          }}</span>
                        </v-card>

                        <v-btn class="ma-4 bg-red-accent-3" rounded="lg" @click="add_Sacola(produto)">
                          <v-icon class="mr-2">
                            mdi-shopping-outline
                          </v-icon>
                          <p class="text-button">Pedir</p>
                        </v-btn>
                      </v-row>
                    </v-card-text>




                  </v-card>
                </v-img>
              </v-card>


            </v-col>
          </v-row>
        </v-col>
      </v-row>


    <v-snackbar v-model="snackbar" top>
      {{ textsnackbar }}

      <template v-slot:actions>
        <v-btn color="pink" variant="text" @click="snackbar = false">
          Fechar
        </v-btn>
      </template>
    </v-snackbar>

  </v-container>
</template>


<script>
import apiURL from '@/services/apiURL.js'
import axios from 'axios';
import globalVariables from '@/controllers/globalVariables'


export default ({
  data() {
    return {
      cardapio: [],
      sacolaPedidos: {
        id_cliente: null,
        list_produtos: [],
        total: null
      },
      quant_total_sacola: [],
      total_ValorSacola: 0,

      snackbar: false,
      textsnackbar: ''
    }
  },
  methods: {
    // Adiciona o produto desejado na Sacola de Produtos
    add_Sacola(produto) {

      const produtoSacola = {
        id: produto.id,
        nome: produto.nome,
        preco: produto.preco
      }
      this.sacolaPedidos.list_produtos.splice(0, 0, produtoSacola)
      this.sacolaPedidos.total += parseFloat(produtoSacola.preco)
    },

    // Remove o item selecionado da Sacola de Produtos
    remove_Sacola(index, produto) {
      this.sacolaPedidos.total -= parseFloat(this.sacolaPedidos.list_produtos[index].preco)
      this.sacolaPedidos.list_produtos.splice(index, 1)
    },

    // Finaliza o pedido guardando todas as informações de produtos, total, id_cliente, etc
    async finalizarPedido() {
      try {
        if (!globalVariables.clienteLogado) {
          alert("Faça login para finalizar o pedido");
        } else {

          const list_produtos = []
          for (let i = 0; i < this.sacolaPedidos.list_produtos.length; i++) {
            list_produtos.push(this.sacolaPedidos.list_produtos[i].nome)
          }

          const body = {
            id_cliente_fk: globalVariables.clienteLogado[0].id,
            list_produtos: list_produtos,
            total: this.sacolaPedidos.total
          }

          const response = await apiURL.post('/Home/finalizarpedido', body);

          if (response.status == 200) {
            this.textsnackbar = 'Pedido Realizado!'
            this.snackbar = true
            this.sacolaPedidos.list_produtos = []
            this.sacolaPedidos.total = 0
          } else {
            alert("Erro ao Realizar Pedido!!!");
          }
        }
      } catch (err) {
        console.log(err);
      }
    }
  },
  mounted() {
    apiURL.get('/Home').then(response => {
      this.cardapio = response.data.rows;
    })
  }

})
</script>





<style>
main {
  background-color: #BCAAA4;
}


.shadow-invertida {
  box-shadow: inset 0px 0px 12px rgba(0, 0, 0, 0.6);
}

.scrollbar-estilo::-webkit-scrollbar {
  width: 5px;
}

.scrollbar-estilo::-webkit-scrollbar-track {
  background: #d1cbc9;
}

.scrollbar-estilo::-webkit-scrollbar-thumb {
  background: #FF1744;
  border-radius: 3px;
}

.scrollbar-estilo::-webkit-scrollbar-thumb:hover {
  background: #FF1744;
}
</style>