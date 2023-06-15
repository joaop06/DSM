<template>
    <v-dialog v-model="dialog" width="70vw" scrim="black">
        <v-card rounded="xl" class="pa-8">
            <v-row no-gutters justify="space-between">
                <h2 class="pl-3 pr-3 pa-2">Alterar Item</h2>
                <v-btn icon="mdi-close" variant="icon"  @click="close">
                </v-btn>
            </v-row>
            
            <h3 class="pl-3 pr-3">Nome</h3>
            <v-text-field class="my-custom-text-field pl-3 pr-3" v-model="produto.nome"></v-text-field>
            <h3 class="pl-3 pr-3 pt-4S">Descrição</h3>
            <v-text-field class="pl-3 pr-3" v-model="produto.descricao"></v-text-field>
            <h3 class="pl-3 pr-3">Tipo</h3>
            <v-select class="pl-3 pr-3" chips v-model="produto.tipo"></v-select>
            <h3 class="pl-3 pr-3">Preço</h3>
            <v-text-field class="pl-3 pr-3" v-model="produto.preco"></v-text-field>
            <div class="pl-3 pr-3 pb-4">
                <v-btn class="popup-close bg-orange" @click="update()">
                    Editar Item
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
                preco: '',
                tipo: '',
                id: null
            },
            novoProduto: {
                novoNome: '',
                novaDesc: '',
                novoPreco: '',
                id: null
            }
        } 
    },
    methods: {
        update(){
            this.novoProduto.novoNome = this.produto.nome
            this.novoProduto.novaDesc = this.produto.descricao
            this.novoProduto.novoPreco = this.produto.preco
            this.novoProduto.id = this.produto.id
            const body = {
                nome: this.novoProduto.novoNome,
                descricao: this.novoProduto.novaDesc,
                preco: this.novoProduto.novoPreco,
                id: this.novoProduto.id
            }
            apiURL.put('/update-product', body).then(response => {
                console.log(response)
            })
            this.dialog = false
            location.reload()
        },
        close(){
            this.dialog = false
        }   
    }
}
</script>

<style></style>