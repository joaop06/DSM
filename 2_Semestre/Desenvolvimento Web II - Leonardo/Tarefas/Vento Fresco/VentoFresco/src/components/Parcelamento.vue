<template>
    <v-dialog v-model="dialog">
        <v-card class="pa-10">
            <v-row v-for="i in 12" :key="i">{{ i }}x de R$ {{parseInt(preco_produto) / i }}</v-row>
        </v-card>
    </v-dialog>
</template>


<script>

export default ({
    data() {
        return {
            dialog: false,
            preco_produto: ''
        }
    },
})

</script>