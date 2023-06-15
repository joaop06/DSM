<template>
    <v-card class="bg-blue-darken-4 pa-5 ma-auto" width="100vw" height="10vh">

        <v-btn to="/admin/pedidos-gerais" class="ma-auto mr-10" color="orange">
            <v-icon>mdi-clipboard-list-outline</v-icon>
            Pedidos Gerais
        </v-btn>

        <v-btn to="/admin/Itens" class="ma-auto mr-10" color="orange">
            <v-icon>mdi-hamburger</v-icon>
            Produtos
        </v-btn>

        <v-btn to="/admin" class=" ma-auto pl-12 pr-12">
            <v-icon>mdi-logout</v-icon>
            Sair
        </v-btn>

    </v-card>
</template>


<script>

export default ({
    data() {
        return {

        }
    }
})
</script>
