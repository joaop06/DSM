<template>
    <v-sheet class="bg-red" width="100%" height="100%">

        <v-row class="mt-12">
            <v-breadcrumbs :items="['Foo', 'Bar', 'Fizz']"></v-breadcrumbs>
        </v-row>

        <p>Parâmetro: {{ parametro }}</p>
        <p>Id: {{ produto.id }}</p>
        <p>Nome: {{ produto.nome }}</p>
        <p>Preço: {{ produto.preco }}</p>
        <p>Imagem: {{ produto.imagem }}</p>
    </v-sheet>
</template>


<script>
import bd from '@/data/bd.json'


export default {
    computed: {
        parametro() {
            return this.$route.params.parametro;
        }
    },
    data(){
        return{
            produto: bd.find(item => item.id == this.$route.params.parametro)
        }
    }
};
</script>