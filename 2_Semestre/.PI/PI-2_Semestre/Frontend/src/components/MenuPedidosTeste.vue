<template>
    <v-row class="d-flex mt-12 pa-2 bg-brown-lighten-2" justify="space-around" align="center" rounded="lg">
        <v-btn :class="classBtn1" width="45%" height="4vh" @click="mudaOpcaoBtn1">
            Em Andamento
        </v-btn>

        <v-btn :class="classBtn2" width="45%" height="4vh" @click="mudaOpcaoBtn2">
            Histórico de Pedidos
        </v-btn>
    </v-row>
</template>


<script>
import globalVariables from '@/controllers/globalVariables'

export default {
    data() {
        return {
            classBtn1: 'bg-brown-darken-2',
            classBtn2: 'bg-brown-lighten-3',
        }
    },
    methods: {
        mudaOpcaoBtn1() {
            this.classBtn1 = 'bg-brown-darken-2';
            this.classBtn2 = 'bg-brown-lighten-3';
            globalVariables.btnOptionPedidos = false;
        },
        mudaOpcaoBtn2() {
            this.classBtn1 = 'bg-brown-lighten-3';
            this.classBtn2 = 'bg-brown-darken-2';
            globalVariables.btnOptionPedidos = true;
        }
    }
}
</script>