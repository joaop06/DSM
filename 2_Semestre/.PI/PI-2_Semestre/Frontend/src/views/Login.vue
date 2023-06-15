<template>
    <v-container class="d-flex mt-12">

        <div class="text-center">
            <v-snackbar v-model="snackbar" :timeout="tempo">
                {{ }}
            </v-snackbar>
        </div>


        <!--CARD DE CADASTRO-->
        <v-sheet id="login" class="ma-auto mt-12 pa-12" color="rgb(93, 64, 55, 0.8)" width="25vw" rounded="xl"
            :elevation="7">

            <!--TÍTULOS-->
            <div>
                <v-list-item-title class="text-center">
                    <span class="text-h4 text-red-accent-3 font-weight-bold" color="rgb(183, 28, 28)">
                        Login
                    </span>
                </v-list-item-title>

                <v-list-item-title class="pb-5 text-center font-weight-bold">
                    <span class="text-subtitle-1 text-white font-weight-bold">
                        Bem vindo de volta!
                    </span>
                </v-list-item-title>
            </div>


            <div class="mt-7">

                <v-card color="rgb(0,0,0,0)" elevation="0" max-width="25vw">

                    <v-row class="ma-auto">
                        <v-text-field v-model="email" name="email" type="email" label="E-mail"
                            :rules="[required, validEmail]" :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                            placeholder="E-mail">
                        </v-text-field>


                    </v-row>

                    <v-row class="ma-auto">
                        <v-text-field v-model="senha" name="senha" label="Senha" :rules="[required]"
                            :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                            :append-inner-icon="showPassword ? 'mdi-eye-off' : 'mdi-eye'"
                            @click:append-inner="showPassword = !showPassword" :type="showPassword ? 'text' : 'password'"
                            placeholder="Senha" hint="Digite sua senha">
                        </v-text-field>
                    </v-row>
                </v-card>
            </div>


            <v-row no-gutters justify="center" class="mt-6 d-flex flex-column">
                <v-btn ref="botLogin" @click="login" color="red-accent-3" size="large" class="ma-auto" max-width="25%">
                    Login
                </v-btn>

                <span class="text-subtitle-1 text-white mt-5 text-center">
                    Ainda não possui cadastro?
                    <router-link to="/cadastro" class="text-center text-decoration-none text-subtitle-1 text-red-accent-3">
                        Cadastre-se
                    </router-link>
                </span>

            </v-row>

        </v-sheet>

        <v-snackbar v-model="snackbar" top>
            {{ textsnackbar }}

            <template v-slot:actions>
                <v-btn color="pink" variant="text" @click="snackbar = false">
                    Fechar
                </v-btn>
            </template>
        </v-snackbar>



        <Navbar ref="Navbar" />

    </v-container>
</template>

<script>
import apiURL from '@/services/apiURL';
import Navbar from '@/components/Navbar.vue'
import globalVariables from '@/controllers/globalVariables'
import axios from 'axios';

export default ({
    components: {
        Navbar
    },
    data() {
        return {
            password: '',
            showPassword: false,
            email: '',
            senha: '',
            bd_rangon: [],

            snackbar: false,
            textsnackbar: ''
        }
    },
    methods: {
        handleEnterKey(event) {
            if (event.key === 'Enter') {
                this.$refs.botLogin.$el.click()
            }
        },

        required(value) {
            return !!value || 'Este campo é obrigatório'
        },
        validEmail(value) {
            const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
            return pattern.test(value) || 'Endereço de e-mail inválido'
        },
        async login() {

            if (this.email !== '' || this.senha !== '') {

                const body = {
                    email: this.email,
                    senha: this.senha
                }

                await apiURL.post('/login', body).then(response => {
                    if (response.status == 200) {
                        globalVariables.sessaoLogin = true
                        globalVariables.clienteLogado = response.data.data
                        console.log(globalVariables.clienteLogado[0].id)
                        this.textsnackbar = response.data.message
                        this.snackbar = true
                        this.$router.push('/Home');

                    } else {
                        this.textsnackbar = 'Login e/ou senha inválidos!'
                        this.snackbar = true
                    }
                })

            } else {
                this.textsnackbar = 'Preencha todos os campos!'
                this.snackbar = true
            }
        }

    },
    mounted() {
        document.addEventListener('keyup', this.handleEnterKey)
    }
})


</script>


<style>
main {
    background-color: #BCAAA4;
    background-image: url(https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Logo_Rang-On.png?raw=true);
    background-size: contain;
    background-position: center;
}
</style>