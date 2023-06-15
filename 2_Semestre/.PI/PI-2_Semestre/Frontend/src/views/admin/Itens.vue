<template>
  <main>
    <v-row>
      <NavbarAdmin />
      <v-col class="pa-1">


        <div class="bg-blue-lighten-3">
          <v-row class="d-flex pa-7" justify="end">
            <v-btn @click="eventActiveNewProducts" class="bg-orange" :style="{ 'justify-content': 'end' }"
              prepend-icon="mdi-plus">
              Cadastrar Novo Produto
            </v-btn>
          </v-row>

          <v-col cols="12" rounded="xl">
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

                    <v-btn @click="eventActiveDelProducts(produto)" class="ma-4 bg-red-accent-2" rounded="lg">
                      <v-icon>
                        mdi-delete
                      </v-icon>
                    </v-btn>

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
                            <span :style="{ 'color': 'white', 'font-weight': 'bold' }">{{ produto.preco }}</span>
                          </v-card>

                          <v-btn @click="eventActiveUpdtProducts(produto)" class="ma-4 bg-red-accent-3" rounded="lg">
                            <v-icon class="mr-2">
                              mdi-pencil
                            </v-icon>
                            Alterar
                          </v-btn>
                        </v-row>
                      </v-card-text>
                    </v-card>
                  </v-img>
                </v-card>
              </v-col>
            </v-row>
          </v-col>
        </div>

        <NewProducts ref="NewProducts" />
        <UpdtProducts ref="UpdtProducts" />
        <DelProducts ref="DelProducts" />
      </v-col>
    </v-row>
  </main>
</template>

<script>
import { ref } from 'vue';
import NewProducts from '@/components/New_product.vue';
import UpdtProducts from '@/components/Updt_product.vue';
import DelProducts from '@/components/Del_product.vue';
import apiURL from '@/services/apiURL';
import NavbarAdmin from '@/components/NavbarAdmin.vue'

export default {
  components: {
    NewProducts,
    UpdtProducts,
    DelProducts,
    NavbarAdmin
  },
  data() {
    return {
      cardapio: []

    }
  },
  methods: {
    eventActiveNewProducts() {
      this.$refs.NewProducts.dialog = true;
    },
    eventActiveUpdtProducts(produto) {
      this.$refs.UpdtProducts.dialog = true;
      this.$refs.UpdtProducts.produto.nome = produto.nome;
      this.$refs.UpdtProducts.produto.descricao = produto.descricao;
      this.$refs.UpdtProducts.produto.preco = produto.preco;
      this.$refs.UpdtProducts.produto.tipo = produto.tipo;
      this.$refs.UpdtProducts.produto.id = produto.id;
    },
    findItensAdmin() {
      apiURL.get('/admin-itens').then(response => {
        this.cardapio = response.data.data
      })
    },
    eventActiveDelProducts(produto) {
      this.$refs.DelProducts.dialog = true;
      this.$refs.DelProducts.produto.id = produto.id;
      this.$refs.DelProducts.produto.nome = produto.nome
    }
  },
  mounted() {
    this.findItensAdmin()
  }
}


</script>
<style lang="scss" scoped>
.my-custom-text-field {
  height: 60px;
  width: 280px;
}

main {
  background-color: #adcfeb;
}
</style>
