<template>
    <v-col class="ma-auto mt-12" cols="8" rounded="xl">
        <v-row>
            <v-col v-for="(produto, index) in produtos" class="d-flex justify-start" border-hover :key="index">
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
                                <p class="text-h6 text-indigo-accent-4">Por R$ {{ (produto.preco).replace('.', ',') }}</p>
                            </v-card>
                        </v-card-text>
                    </v-card>
                </router-link>
            </v-col>
        </v-row>
    </v-col>
</template>

<script>
import bd from '@/data/bd.json'

export default ({
    components: {

    },
    data() {
        return {
            rota: '/produtinho',
            valor: 'ventilador',
            produtos: bd
        }
    }
})

</script>
