<template>
    <v-app-bar color="indigo-darken-4 pa-2" :elevation="5">

        <v-row no-gutters justify="center" align="center">
            <v-col cols="4">
                <router-link to="/" tag="div" class="ml-5 text-decoration-none" color="white">
                    <v-title class="text-button text-white">
                        <v-icon>mdi-fan</v-icon>
                        Vento Forte
                    </v-title>
                </router-link>
            </v-col>

            <v-col cols="4" class="mt-auto">
                <v-text-field class="bg-rgb(255,255,255)" append-inner-icon="mdi-magnify" rounded="lg"></v-text-field>

            </v-col>

            <v-col cols="4">
                <v-col v-if="false" class="d-flex text-right justify-end">

                    <v-btn to="/" width="5vw" class="ma-5 bg-white" color="indigo-accent-4" rounded="shaped" :elevation="2"
                        icon>
                        <v-icon size="large">mdi-cart</v-icon>
                    </v-btn>

                    <v-btn to="/" width="5vw" class="ma-5 bg-white" color="indigo-accent-4" rounded="shaped" :elevation="2"
                        icon>
                        <v-icon size="large">mdi-account-box</v-icon>
                    </v-btn>

                </v-col>

                <v-col v-else class="text-right">
                    <v-btn to="/login_cadastro" width="14vw" height="5vh" class="ma-5 bg-white font-weight-bold"
                        color="indigo-accent-4" rounded="shaped" :elevation="1" prepend-icon="mdi-login">
                        Entrar / Cadastrar
                    </v-btn>
                </v-col>
            </v-col>
        </v-row>

    </v-app-bar>
</template>
  
<script>

export default {
    data() {
        return {

        }
    },
    methods: {

    }
}
</script>
  