<template>
    <v-container>
        <v-sheet :elevation="1" class="mt-5 pa-10 ma-auto" width="90%">
            <v-row class="ma-auto" width="100%">
                <v-breadcrumbs :items="items">
                </v-breadcrumbs>
            </v-row>
            <v-row class="mt-12">
                <v-col class="mt-5" cols="5">
                    <v-img :src="produto.imagem" max-width="400px"></v-img>
                </v-col>

                <v-col class="d-flex flex-column ml-10">
                    <v-card class="text-wrap" :elevation="0">
                        <p class="text-h5">{{ produto.nome }}</p>
                        <p>Cód. Produto: {{ produto.id }}</p>
                    </v-card>
                    <p class="mt-12 text-h5 text-indigo-accent-4">R$ {{ (produto.preco).replace('.', ',') }}</p>
                    <p>ou até 3x de R$ {{ parseInt(produto.preco).toFixed() / 3 }} sem juros <span
                            class="text-indigo-accent-4 text-decoration-underline" @click="parcelamento">ver
                            parcelamento</span>
                    </p>

                    <v-btn @click="teste" class="ma-auto" width="50%" color="green"
                        prepend-icon="mdi-shopping">Comprar</v-btn>
                </v-col>
            </v-row>
            <v-divider></v-divider>
            <v-row class="mt-8 ml-12">
                <p class="text-h6">{{ produto.nome }}</p>

                <p class="text-subtitle-1 mt-12">{{ produto.descricao }}</p>
            </v-row>
        </v-sheet>

        <v-carousel class="w-50" :show-arrows="true" hide-delimiters>
            <v-carousel-item v-for="(prod_carrossel, index) in lista_produtos" :key="index">
                <router-link :to="{ name: 'Produto', params: { parametro: `${produto.id}` } }" class="text-decoration-none">
                    <v-card class="d-flex flex-column" width="300px" height="400px" :elevation="2">
                        <v-img :src="produto.imagem" :lazy-src="produto.imagem" width="300px" height="200px" cover></v-img>

                        <v-card-title>
                            <span class="text-subtitle-1 text-black text-bold text-wrap">{{ produto.nome }}</span>
                        </v-card-title>

                        <v-card-text class="my-n4">
                            <v-card class="font-weight-black justify-start mt-5 ml-3" :elevation="0">
                                <p class="text-decoration-line-through">De R$ {{ (parseInt(produto.preco) +
                                    (parseInt(produto.preco) / 100) * 10).toString().replace('.', ',') }}</p>
                                <p class="text-h6 text-indigo-accent-4">Por R$ {{ (produto.preco).replace('.', ',') }}
                                </p>
                            </v-card>
                        </v-card-text>
                    </v-card>
                </router-link>
            </v-carousel-item>


        </v-carousel>

    </v-container>



    <Parcelamento ref="Parcelamento" />
</template>


<script>
import bd from '@/data/bd.json'
import Parcelamento from '@/components/Parcelamento.vue'


export default {
    components: {
        Parcelamento
    },
    computed: {
        parametro() {
            return this.$route.params.parametro;
        }
    },
    data() {
        return {
            produto: bd.find(item => item.id == this.$route.params.parametro),
            items: ['Categoria 1', 'Categoria 2', 'Categoria 3', 'Categoria 4'],

        }
    },
    methods: {
        parcelamento() {
            this.$refs.Parcelamento.dialog = true;
            this.$refs.Parcelamento.preco_produto = this.produto.preco;
        },
        teste() {
            console.log(parseInt(this.produto.preco) / 3)
        },
        carrossel() {

            const lista = this.items
            var tamanho = null
            if (lista%3==0){
                tamanho = Math.floor(lista.length, 3)
                console.log("Resto 0", tamanho)
                return tamanho

            } else if (lista%3==1){
                tamanho = Math.floor(lista.length, 3) + 1
                console.log("Resto 1", tamanho)
                return tamanho

            } else{
                tamanho = Math.floor(lista.length, 3) + 2
                console.log("Resto 2", tamanho)
                return tamanho
            }
            
        }
        

    },
    mounted() {
        this.carrossel()
    }
};
</script>