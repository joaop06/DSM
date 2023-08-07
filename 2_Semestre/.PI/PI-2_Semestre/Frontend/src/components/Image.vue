<template>
    <img class="h-25" :src="Logo" :alt="descricao">
</template>

<script>
    export default {
        name: 'Logo',
        data() {
            return {
                Logo: '/img/Logo_Rang-On.png',
                descricao: 'Rang-On'
            }
        }
    }
</script>