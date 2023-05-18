<template>
    <v-container>
        <v-sheet :elevation="1" class="mt-5 pa-10 ma-auto" width="90%" height="150vh">
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
                    <p class="mt-12 text-h5 text-indigo-accent-4">{{ (produto.preco).replace('.', ',') }}</p>
                    <p>ou até 3x de {{ parseInt(produto.preco) / 3 }} sem juros <span
                            class="text-indigo-accent-4 text-decoration-underline" @click="parcelamento">ver
                            parcelamento</span>
                    </p>

                    <v-btn class="ma-10" color="green" prepend-icon="mdi-shopping">Comprar</v-btn>
                </v-col>
            </v-row>
            <v-divider></v-divider>
            <v-row class="mt-8 ml-12">
                <p class="text-h6">{{ produto.nome }}</p>

                <p class="text-subtitle-1 mt-12">{{ produto.descricao }}</p>
            </v-row>
        </v-sheet>
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
            items: ['Categoria 1', 'Categoria 2', 'Categoria 3']
        }
    },
    methods: {
        parcelamento() {
            this.$refs.Parcelamento.dialog = true;
            this.$refs.Parcelamento.preco_produto = this.produto.preco;
        },

    }
};
</script>