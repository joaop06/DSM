<template>
<v-dialog v-model="open" class="d-flex" scrim="transparent" justify="end">
    <v-card class="bg-red" :elevation="0">
        teste
    </v-card>
</v-dialog>

</template>


<script>

export default({
    data(){
        return{
            open: false
        }
    }
})
</script>