<template>
    <main>
        <NavbarAdmin />
        <v-row>
            <v-col cols="5" class="ma-auto">
                <v-sheet class="mt-8 pa-5 justify-center text-center" color="rgb(0,0,0,0.2)" height="85vh" width="100%"
                    rounded="xl" :elevation="10">
                    <v-list-item-title class="text-center">
                        <span class="text-h4 text-white">
                            Em Andamento
                        </span>
                    </v-list-item-title>

                    <v-divider></v-divider>
                    <v-divider></v-divider>
                    <v-divider></v-divider>

                    <div class="scrollbar-estilo"
                        :style="{ 'height': '90%', 'overflow-y': 'auto', 'border-radius': '8px' }">

                        <v-row v-if="pedidosAndamento.length !== 0" class="mt-2" :style="{ 'width': '100%' }">
                            <v-col v-for="(pedido, index) in pedidosAndamento" :key="index" cols="12" :elevation="0"
                                color="rgb(0,0,0)">

                                <v-card class="ma-auto d-flex flex-column" rounded="lg"
                                    :style="{ 'border': 'solid 2px #000000' }" max-width="80%" max-height="300px">

                                    <v-row>
                                        <v-col class="mt-1 d-flex justify-space-around">
                                            <p :style="{ 'font-size': '20px' }">Pedido: {{ pedido.num_pedido }}</p>

                                            <p :style="{ 'font-size': '20px' }">Status: {{ pedido.status_pedido }}</p>
                                        </v-col>
                                    </v-row>

                                    <v-row>
                                        <v-col cols="8" class="d-flex flex-column align-start ma-2">

                                            <p class="text-h6 text-black">Cliente: <span
                                                    class="text-body-1 font-weight-regular"> {{
                                                        pedido.nome_completo }} </span></p>

                                            <p class="text-h6 text-black text-start">Produtos:
                                                <span class="text-body-1 font-weight-regular">
                                                    {{ pedido.list_produtos }}
                                                </span>
                                            </p>
                                            <p class="text-h6 text-black">Total: <span
                                                    class="text-body-1 font-weight-regular">{{
                                                        parseFloat(pedido.total).toLocaleString("pt-BR", {
                                                            style: "currency", currency:
                                                                "BRL"
                                                        }) }}</span></p>
                                        </v-col>

                                        <v-col cols="3">
                                            <v-btn @click="alteraStatusPedido(pedido.num_pedido, 'Finalizado')"
                                                class="ma-auto mr-5 text-white" icon="mdi-check-bold" color="green"
                                                :elevation="5">
                                            </v-btn>
                                            <v-btn @click="alteraStatusPedido(pedido.num_pedido, 'Cancelado')"
                                                class="ma-auto text-white" icon="mdi-close-thick" color="red"
                                                :elevation="5">
                                            </v-btn>

                                        </v-col>
                                    </v-row>
                                </v-card>

                            </v-col>
                        </v-row>

                        <v-sheet v-else class="d-flex justify-center align-center text-body-1" color="rgb(0,0,0,0)"
                            height="100%">
                            <p class="text-h4 text-white">Não há pedidos Em Andamento!</p>
                        </v-sheet>
                    </div>
                </v-sheet>
            </v-col>



            <v-col cols="5" class="ma-auto">
                <v-sheet class="mt-8 pa-5 justify-center text-center" color="rgb(0,0,0,0.2)" height="85vh" width="100%"
                    rounded="xl" :elevation="10">
                    <v-list-item-title class="text-center">
                        <span class="text-h4 text-white">
                            Finalizados / Cancelados
                        </span>
                    </v-list-item-title>

                    <v-divider></v-divider>
                    <v-divider></v-divider>
                    <v-divider></v-divider>

                    <div class="scrollbar-estilo"
                        :style="{ 'height': '90%', 'overflow-y': 'auto', 'border-radius': '8px' }">

                        <v-row v-if="pedidosFinalizadoCancelados.length !== 0" class="mt-2" :style="{ 'width': '100%' }">
                            <v-col v-for="(pedido, index) in pedidosFinalizadoCancelados" :key="index" cols="12"
                                :elevation="0" color="rgb(0,0,0)">

                                <v-card v-if="pedido.status_pedido == 'Cancelado'" class="ma-auto d-flex flex-column"
                                    rounded="lg" :style="{ 'border': 'solid 2px red' }" max-width="80%" max-height="300px">

                                    <v-row>
                                        <v-col class="mt-1 d-flex justify-space-around">
                                            <p class="text-red" :style="{ 'font-size': '20px' }">Pedido: {{
                                                pedido.num_pedido }}</p>

                                            <p class="text-red" :style="{ 'font-size': '20px' }">Status: {{
                                                pedido.status_pedido }}</p>
                                        </v-col>
                                    </v-row>

                                    <v-row>
                                        <v-col class="d-flex flex-column align-start ma-2">

                                            <p class="text-h6 text-red">Cliente: <span
                                                    class="text-body-1 text-black font-weight-regular"> {{
                                                        pedido.nome_completo }} </span></p>

                                            <p class="text-h6 text-red text-start">Produtos:
                                                <span class="text-body-1 text-black font-weight-regular">
                                                    {{ pedido.list_produtos }}
                                                </span>
                                            </p>
                                            <p class="text-h6 text-red">Total: <span
                                                    class="text-body-1 text-black font-weight-regular">{{
                                                        parseFloat(pedido.total).toLocaleString("pt-BR", {
                                                            style: "currency", currency:
                                                                "BRL"
                                                        }) }}</span></p>
                                        </v-col>

                                    </v-row>
                                </v-card>


                                <v-card v-else class="ma-auto d-flex flex-column" rounded="lg"
                                    :style="{ 'border': 'solid 2px #000000' }" max-width="80%" max-height="300px">

                                    <v-row>
                                        <v-col class="mt-1 d-flex justify-space-around">
                                            <p :style="{ 'font-size': '20px' }">Pedido: {{ pedido.num_pedido }}</p>

                                            <p :style="{ 'font-size': '20px' }">Status: {{ pedido.status_pedido }}</p>
                                        </v-col>
                                    </v-row>

                                    <v-row>
                                        <v-col class="d-flex flex-column align-start ma-2">

                                            <p class="text-h6 text-black">Cliente: <span
                                                    class="text-body-1 font-weight-regular"> {{
                                                        pedido.nome_completo }} </span></p>

                                            <p class="text-h6 text-black text-start">Produtos:
                                                <span class="text-body-1 font-weight-regular">
                                                    {{ pedido.list_produtos }}
                                                </span>
                                            </p>
                                            <p class="text-h6 text-black">Total: <span
                                                    class="text-body-1 font-weight-regular">{{
                                                        parseFloat(pedido.total).toLocaleString("pt-BR", {
                                                            style: "currency", currency:
                                                                "BRL"
                                                        }) }}</span></p>
                                        </v-col>
                                    </v-row>
                                </v-card>

                            </v-col>
                        </v-row>
                    </div>
                </v-sheet>
            </v-col>

        </v-row>
    </main>
</template>


<script>
import NavbarAdmin from '@/components/NavbarAdmin.vue'
import apiURL from '@/services/apiURL.js'

export default ({
    components: {
        NavbarAdmin
    },
    data() {
        return {
            pedidosAndamento: [],
            pedidosFinalizadoCancelados: []
        }
    },
    methods: {
        async pedidosGerais() {
            await apiURL.get('/pedidos-gerais').then(response => {
                this.pedidosAndamento = []
                this.pedidosFinalizadoCancelados = []

                if (response.data.data.length > 0) {
                    for (let i = 0; i < response.data.data.length; i++) {
                        if (response.data.data[i].status_pedido === 'Em Andamento') {
                            this.pedidosAndamento.push(response.data.data[i])
                        } else {
                            this.pedidosFinalizadoCancelados.splice(0, 0, response.data.data[i])
                        }
                    }
                } else {
                    console.log("Não há pedidos no momento")
                }
            })
        },
        async alteraStatusPedido(num_pedido, status_pedido) {
            await apiURL.put(`/altera-status-pedido?num_pedido=${num_pedido}&status_pedido=${status_pedido}`).then(response => {
                if (response.status == 200) {
                    console.log(`Pedido ${num_pedido} ${status_pedido} com sucesso!`)
                    location.reload()
                }
            })
        },
    },
    mounted() {
        this.pedidosGerais()
        setInterval(() => {
            this.pedidosGerais();
        }, 10000);

    }
})
</script>



<style>
main {
    background-color: #42A5F5;
}


.scrollbar-estilo::-webkit-scrollbar {
    width: 9px;
}

.scrollbar-estilo::-webkit-scrollbar-track {
    background: rgb(255, 255, 255);
}

.scrollbar-estilo::-webkit-scrollbar-thumb {
    background: #0D47A1;
    border-radius: 3px;
}

.scrollbar-estilo::-webkit-scrollbar-thumb:hover {
    background: #0D47A1;
}
</style>