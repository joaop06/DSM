<template>
    <v-row>
        <v-col cols="6">
            <v-container>
                <v-sheet class="ma-auto mt-12 pa-12" color="blue-lighten-4" width="25vw" rounded="xl" :elevation="7">
                    <div>
                        <v-list-item-title class="text-center">
                            <span class="text-h4 text-indigo-accent-4 font-weight-bold">
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
                                    :rules="[requiredLogin, validEmail]" :style="{ 'color': 'white' }"
                                    bg-color="rgb(255, 255, 255, 0.5)" placeholder="E-mail">
                                </v-text-field>
                            </v-row>

                            <v-row class="ma-auto">
                                <v-text-field v-model="senha" name="senha" label="Senha" :rules="[requiredLogin]"
                                    :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                    :append-inner-icon="showPassword ? 'mdi-eye-off' : 'mdi-eye'"
                                    @click:append-inner="showPassword = !showPassword"
                                    :type="showPassword ? 'text' : 'password'" placeholder="Senha" hint="Digite sua senha">
                                </v-text-field>
                            </v-row>
                        </v-card>
                    </div>

                    <v-card align="center" width="100%" height="3vh" :elevation="0" color="rgb(0,0,0,0)">
                        <p v-if="erro_login" class="text-red-darken-4 text-h6">Dados incorretos ou não encontrados</p>
                    </v-card>


                    <v-row no-gutters justify="center" class="mt-6 d-flex flex-column">
                        <v-btn @click="fazerlogin()" color="red-accent-3" size="large" class="ma-auto" max-width="25%">
                            Login
                        </v-btn>

                        <span class="text-subtitle-1 text-white mt-5 text-center">
                            Ainda não possui cadastro?
                            <router-link to="/cadastro"
                                class="text-center text-decoration-none text-subtitle-1 text-red-accent-3">
                                Cadastre-se
                            </router-link>
                        </span>

                    </v-row>

                </v-sheet>
            </v-container>
        </v-col>




        <v-col cols="6">
            <v-container class="d-flex mt-12">

                <!--CARD DE CADASTRO-->
                <v-sheet id="login" class="ma-auto mt-12 pa-12" color="rgb(93, 64, 55, 0.8)" width="60vw" rounded="xl"
                    :elevation="7">

                    <!--TÍTULOS-->
                    <div>
                        <v-list-item-title class="text-center">
                            <span class="text-h4 text-red-accent-3 font-weight-bold" color="rgb(183, 28, 28)">
                                Cadastre-se
                            </span>
                        </v-list-item-title>

                        <v-list-item-title class="pb-5 text-center font-weight-bold">
                            <span class="text-subtitle-1 text-white font-weight-bold">
                                Junte-se a nós!
                            </span>
                        </v-list-item-title>
                    </div>

                    <v-row justify="space-around">
                        <v-list-item-title>
                            <span class="text-subtitle-1 text-white font-weight-bold">
                                Informações Pessoais
                            </span>
                        </v-list-item-title>

                        <v-list-item-title>
                            <span class="text-body-1 text-white font-weight-bold">
                                Informações de Endereço
                            </span>
                        </v-list-item-title>
                    </v-row>


                    <!--INFORMAÇÕES PESSOAIS-->
                    <div class="ma-auto mt-5" align="center">

                        <v-card color="rgb(0,0,0,0)" elevation="0" max-width="25vw">

                            <v-row justify="space-between">
                                <v-col>
                                    <v-text-field v-model="nome_completo" name="nome_completo" type="text"
                                        label="Nome Completo" class="mr-3" :style="{ 'color': 'white' }"
                                        bg-color="rgb(255, 255, 255, 0.5)" placeholder="Ex: João Silva">
                                    </v-text-field>
                                </v-col>

                                <v-col>
                                    <v-text-field v-model="celular" name="celular" label="Celular"
                                        :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                        placeholder="(__) _____-____">
                                    </v-text-field>
                                </v-col>

                            </v-row>

                            <v-row justify="space-between" class="my-n8">
                                <v-col>
                                    <v-text-field v-model="email" name="email" type="email" label="E-mail"
                                        :rules="[requiredCadastro, validEmail]" :style="{ 'color': 'white' }"
                                        bg-color="rgb(255, 255, 255, 0.5)" placeholder="Ex: joao_silva@gmail.com">
                                    </v-text-field>
                                </v-col>
                            </v-row>


                            <v-row justify="space-between" class="my-n8">
                                <v-col>
                                    <v-text-field v-model="senha" name="senha" label="Senha" :style="{ 'color': 'white' }"
                                        bg-color="rgb(255, 255, 255, 0.5)"
                                        :append-inner-icon="showPassword ? 'mdi-eye-off' : 'mdi-eye'"
                                        @click:append-inner="showPassword = !showPassword"
                                        :type="showPassword ? 'text' : 'password'" hint="Crie sua senha">
                                    </v-text-field>
                                </v-col>

                                <v-col>
                                    <v-text-field v-model="confirma_senha" @blur="validar_senha_Cadastro"
                                        name="confirma_senha" label="Confirmar Senha" :style="{ 'color': 'white' }"
                                        bg-color="rgb(255, 255, 255, 0.5)"
                                        :append-inner-icon="showPassword_confirmar ? 'mdi-eye-off' : 'mdi-eye'"
                                        @click:append-inner="showPassword_confirmar = !showPassword_confirmar"
                                        :type="showPassword_confirmar ? 'text' : 'password'" :hint="hint_verifica_senha"
                                        persistent-hint>
                                    </v-text-field>
                                </v-col>

                            </v-row>
                        </v-card>
                    </div>

                    <v-row no-gutters justify="center" class="mt-12">
                        <v-btn @click="cadastrar" color="red-accent-3" size="large" max-width="25%">
                            Cadastrar
                        </v-btn>
                    </v-row>
                    <v-row no-gutters justify="center">
                        <span class="text-subtitle-1 text-white mt-5">
                            Já possui cadastro?
                            <router-link to="/login"
                                class="text-center text-decoration-none text-subtitle-1 text-red-accent-3">
                                Entre
                            </router-link>
                        </span>
                    </v-row>

                </v-sheet>
            </v-container>
        </v-col>
    </v-row>
</template>


<script>
export default {
    data() {
        return {

            // Variáveis Login
            passwordLogin: '',
            showPasswordLogin: false,
            email: '',
            senha: '',
            erro_login: false,
            bd_rangon: [],



            // Variáveis Cadastro
            hint_verifica_senha: '',
            showPassword: false,
            showPassword_confirmar: false,
            selecionar_UF: null,
            UF: ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RR', 'RO', 'RJ', 'RN', 'RS', 'SC', 'SP', 'SE', 'TO'],

            /* Informações cadastro*/
            nome_completo: '',
            celular: '',
            email: '',
            senha: '',
            confirma_senha: '',
            infoEndereco: {
                cep: '',
                cidade: '',
                estado: '',
                endereco: '',
                numero: '',
            },

        }
    },
    methods: {

        // Funções Gerais
        validEmail(value) {
            const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
            return pattern.test(value) || 'Endereço de e-mail inválido'
        },



        // Funções Login
        requiredLogin(value) {
            return !!value || 'Este campo é obrigatório'
        },
        fazerlogin() {
            const user = bd_rangon.clientes.find(item => item.email == this.email && item.senha == this.senha);

            if (user) {
                globalVariables.sessao_login = !globalVariables.sessao_login
                this.$router.push('/');
            } else {
                this.erro_login = true;
            }

        },



        // Funções Cadastro
        requiredCadastro(value) {
            return !!value || 'Este campo é obrigatório'
        },
        validar_senha_Cadastro(value) {
            if (this.senha !== '' && this.confirma_senha !== '' && this.senha !== this.confirma_senha) {
                this.hint_verifica_senha = 'As senhas não coincidem!'
                return

            } else if (this.senha !== '' && this.confirma_senha !== '' && this.senha == this.confirma_senha) {
                this.hint_verifica_senha = 'Senha confirmada!'
            }
        },
    },
}


</script>

<style>
main{
  background-color: #9e1d1d;
}
</style>