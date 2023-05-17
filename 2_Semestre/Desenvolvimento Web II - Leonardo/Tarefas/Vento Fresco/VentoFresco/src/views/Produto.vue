<template>
    <v-container>
        <v-sheet :elevation="1" class="mt-5 pa-10 ma-auto" width="90%" height="100%">
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
                        <p class="text-h6">{{ produto.nome }}</p>
                        <p>Cód. Produto: {{ produto.id }}</p>
                    </v-card>

                    <p class="mt-12 text-h5 text-indigo-accent-4">{{ (produto.preco).replace('.', ',') }}</p>
                    <p>ou até 3x de {{ parseInt(produto.preco) / 3 }} sem juros <span
                            class="text-indigo-accent-4 text--underline" @click="parcelamento">ver
                            parcelamento</span> </p>
                </v-col>
            </v-row>
        </v-sheet>
    </v-container>
</template>


<script>
import bd from '@/data/bd.json'


export default {
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
            this.$router.push({
                name: 'Parcelamento',
                params: {
                    produto: this.produto
                }
            })
        }

    }
};
</script>