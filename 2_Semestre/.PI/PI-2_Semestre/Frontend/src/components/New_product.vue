<template>
    <v-dialog v-model="dialog" width="70vw" scrim="black">
        <v-card rounded="xl" class="pa-8">
            <v-row no-gutters justify="space-between">
                <h2 class="pl-3 pr-3 pa-2">Novo Item</h2>

                <v-btn icon="mdi-close" variant="icon" @click="close">
                </v-btn>
            </v-row>
            
            <h3 class="pl-3 pr-3">Nome</h3>
            <v-text-field class="my-custom-text-field pl-3 pr-3" v-model="produto.nome"></v-text-field>
            <h3 class="pl-3 pr-3 pt-4S">Descrição</h3>
            <v-text-field class="pl-3 pr-3" v-model="produto.descricao"></v-text-field>
            <h3 class="pl-3 pr-3">Tipo</h3>
            <v-select class="pl-3 pr-3" chips :items="['Lanche', 'Pizza', 'Porção']" v-model="produto.tipo"></v-select>
            <h3 class="pl-3 pr-3">Preço</h3>
            <v-text-field class="pl-3 pr-3" v-model="produto.preco"></v-text-field>
            <div class="pl-3 pr-3 pb-4">
                <v-btn class="popup-close bg-orange" @click="insert()">
                    Inserir Item
                </v-btn>
            </div>
        </v-card>
    </v-dialog>
</template>


<script>

import apiURL from '@/services/apiURL'

export default {
    props:{

    },
    data(){
        return{
            dialog: false,
            produto: {
                nome: '',
                descricao: '',
                tipo: '',
                preco: ''
            }
        }
    },
    methods: {
        insert(){
            const body = {
                nome: this.produto.nome,
                descricao: this.produto.descricao,
                preco: this.produto.preco,
                tipo: this.produto.tipo
            }
            console.log(body)
            this.dialog = false
            apiURL.post('/create-product', body).then(response => {
                console.log(response)
            })
            location.reload()
        },
        close(){
            this.dialog = false
        }
    }
}
</script>

<style></style>