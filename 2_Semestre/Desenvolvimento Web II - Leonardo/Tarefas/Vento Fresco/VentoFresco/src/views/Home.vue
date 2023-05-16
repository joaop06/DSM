<template>
    <v-col class="ma-auto mt-12" cols="8" rounded="xl">
        <v-row>
            <v-col v-for="(produto, index) in produtos" class="d-flex justify-start" :key="index">

                <v-card class="d-flex flex-column" width="300px" height="400px" :elevation="2">
                    <v-img :src="produto.imagem" :lazy-src="produto.imagem" width="300px" height="200px" cover></v-img>

                    <v-card-title>
                        <span class="text-subtitle-2 text-black text-bold text-wrap">{{ produto.nome }}</span>
                    </v-card-title>

                    <v-card-text class="my-n4">
                        <v-card class="font-weight-black justify-start mt-5 ml-3" :elevation="0">
                            <span class="text-h6 text-indigo-accent-4" >{{ produto.preco }}</span>
                        </v-card>
                    </v-card-text>
                </v-card>

            </v-col>
        </v-row>
    </v-col>
</template>

<script>

export default ({
    components: {

    },
    data() {
        return {
            produtos: [
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                },
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                },
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                },
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                },
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                },
                {
                    id: 1,
                    nome: "Ventilador de Mesa Arno Ultra Silence Force VD40 40cm, 6 Pás, 126W - Preto",
                    preco: "R$ 235,00",
                    imagem: "https://imgs.casasbahia.com.br/55011466/1xg.jpg?imwidth=292"

                }

            ]

        }
    }
})

</script>
