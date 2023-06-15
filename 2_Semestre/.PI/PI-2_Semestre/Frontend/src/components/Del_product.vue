<template>
    <v-dialog v-model="dialog" width="70vw" scrim="black">
        <v-card rounded="xl" class="pa-8">
            <v-row no-gutters justify="space-between">
                <h2 class="pl-3 pr-3 pa-2">Excluir Item</h2>
                <v-btn icon="mdi-close" variant="icon" @click="close">
                </v-btn>
            </v-row>

            <h3 class="pl-3 pr-3 ma-2">Confirme a exclusão do Item {{ produto.nome }}!</h3>
            <div class="pl-3 pr-3 pb-4">
                <v-btn class="popup-close bg-orange ma-1" @click="deleteProduct()">
                    Excluir
                </v-btn>
            </div>
        </v-card>
    </v-dialog>
</template>

<script>

import apiURL from '@/services/apiURL'

export default {
    props: {

    },
    data() {
        return {
            dialog: false,
            produto: {
                id: '',
                nome: ''
            }
        }
    },
    methods: {
        deleteProduct() {
            const body = {
                id: this.produto.id
            };

            apiURL.delete('/delete-product', { data: body })
                .then(response => {
                    console.log(response);
                })
                .catch(error => {
                    console.error(error);
                });

            this.dialog = false;
            console.log(body.id);
            location.reload()
        }
        ,
        close() {
            this.dialog = false
        }
    }
}
</script>

<style></style>