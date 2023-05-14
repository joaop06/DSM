<template>
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

            <div class="d-flex mt-7">

                <!--INFORMAÇÕES PESSOAIS-->
                <div :style="{ 'width': '50%' }" class="ma-auto mt-5" align="center">

                    <v-card color="rgb(0,0,0,0)" elevation="0" max-width="25vw">

                        <v-row justify="space-between">
                            <v-col>
                                <v-text-field v-model="nome_completo" name="nome_completo" type="text" label="Nome Completo"
                                    class="mr-3" :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                    placeholder="Ex: João Silva">
                                </v-text-field>
                            </v-col>

                            <v-col>
                                <v-text-field v-model="celular" name="celular" label="Celular" :style="{ 'color': 'white' }"
                                    bg-color="rgb(255, 255, 255, 0.5)" placeholder="(__) _____-____">
                                </v-text-field>
                            </v-col>

                        </v-row>

                        <v-row justify="space-between" class="my-n8">
                            <v-col>
                                <v-text-field v-model="email" name="email" type="email" label="E-mail"
                                    :rules="[required, validEmail]" :style="{ 'color': 'white' }"
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
                                <v-text-field v-model="confirma_senha" @blur="validar_senha" name="confirma_senha"
                                    label="Confirmar Senha" :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                    :append-inner-icon="showPassword_confirmar ? 'mdi-eye-off' : 'mdi-eye'"
                                    @click:append-inner="showPassword_confirmar = !showPassword_confirmar"
                                    :type="showPassword_confirmar ? 'text' : 'password'" :hint="hint_verifica_senha"
                                    persistent-hint>
                                </v-text-field>
                            </v-col>

                        </v-row>
                    </v-card>
                </div>

                <!--INFORMAÇÕES DE ENDEREÇO-->
                <div :style="{ 'width': '50%' }" class="ma-auto mt-5" align="center">

                    <v-card color="rgb(0,0,0,0)" elevation="0" max-width="25vw">

                        <v-row justify="space-between">
                            <v-col cols="7">
                                <v-text-field v-model="infoEndereco.cep" name="cep" label="CEP"
                                    :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                    placeholder="_____-___">
                                </v-text-field>
                            </v-col>

                            <v-col cols="4">
                                <v-btn @click="validaCEP" class="text-subtitle-2 text-black"
                                    :style="{ 'width': '100%', 'align-content': 'center', 'justify-content': 'center' }"
                                    :elevation="1">
                                    Validar CEP
                                </v-btn>
                            </v-col>
                        </v-row>


                        <v-row justify="space-between" class="my-n8">
                            <v-col cols="8">
                                <v-text-field v-model="infoEndereco.cidade" name="cidade" label="Cidade"
                                    :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)">
                                </v-text-field>
                            </v-col>

                            <v-col cols="4">
                                <v-select :style="{ 'color': 'white' }" name="estado" bg-color="rgb(255, 255, 255, 0.5)"
                                    v-model="infoEndereco.estado" :items="UF" label="Estado" width="10em" valu="SP">
                                </v-select>
                            </v-col>
                        </v-row>

                        <v-row justify="space-between" class="my-n8">
                            <v-col cols="8">
                                <v-text-field v-model="infoEndereco.endereco" name="endereco" label="Endereço"
                                    :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)"
                                    placeholder="Ex: Rua João Silva">
                                </v-text-field>
                            </v-col>

                            <v-col cols="4">
                                <v-text-field v-model="infoEndereco.numero" name="numero" label="Número" type="number"
                                    :style="{ 'color': 'white' }" bg-color="rgb(255, 255, 255, 0.5)" placeholder="N° 0000">
                                </v-text-field>
                            </v-col>

                        </v-row>
                    </v-card>
                </div>
            </div>


            <v-row no-gutters justify="center" class="mt-12">
                <v-btn @click="cadastrar" color="red-accent-3" size="large" max-width="25%">
                    Cadastrar
                </v-btn>
            </v-row>
            <v-row no-gutters justify="center">
                <span class="text-subtitle-1 text-white mt-5">
                    Já possui cadastro?
                    <router-link to="/login" class="text-center text-decoration-none text-subtitle-1 text-red-accent-3">
                        Entre
                    </router-link>
                </span>
            </v-row>

        </v-sheet>
    </v-container>
</template>


<script>
import apiURL from '@/services/apiURL'
import apiViaCEP from '@/services/apiViaCEP'

export default {
    data() {
        return {
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

            erroCadastro: '',
            sucessCadastro: '',
            popupAlert: '',

            apiURL: apiURL
        }
    },
    methods: {
        validar_senha(value) {
            if (this.senha !== '' && this.confirma_senha !== '' && this.senha !== this.confirma_senha) {
                this.hint_verifica_senha = 'As senhas não coincidem!'
                return

            } else if (this.senha !== '' && this.confirma_senha !== '' && this.senha == this.confirma_senha) {
                this.hint_verifica_senha = 'Senha confirmada!'
            }
        },
        required(value) {
            return !!value || 'Este campo é obrigatório'
        },
        validEmail(value) {
            const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
            return pattern.test(value) || 'Endereço de e-mail inválido'
        },
        validaCEP() {

            this.infoEndereco.cep = this.infoEndereco.cep.replace('-', '').replace(' ', '').replace('.', '')
            if (this.infoEndereco.cep.length == 8) {
                apiViaCEP.get(`${this.infoEndereco.cep}/json`).then(response => {
                    this.infoEndereco.cidade = response.data.localidade
                    this.infoEndereco.estado = response.data.uf
                    this.infoEndereco.endereco = response.data.logradouro
                })
            } else {
                return alert('CEP inválido')
            }

        },


        async cadastrar() {
            try {
                if (
                    this.nome_completo === '' &&
                    this.celular === '' &&
                    this.email === '' &&
                    this.senha === '' &&
                    this.infoEndereco.cep === '' &&
                    this.infoEndereco.cidade === '' &&
                    this.infoEndereco.estado === '' &&
                    this.infoEndereco.endereco === '' &&
                    this.infoEndereco.numero
                ) {
                    this.erroCadastro = 'Preencha todos os campos!'
                } else {

                    const response = await fetch(`http://localhost:8080/cadastro`, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            nome_completo: this.nome_completo,
                            celular: this.celular,
                            email: this.email,
                            senha: this.senha,
                            cep: this.infoEndereco.cep,
                            cidade: this.infoEndereco.cidade,
                            estado: this.infoEndereco.estado,
                            endereco: this.infoEndereco.endereco,
                            numero: this.infoEndereco.numero
                        })
                    })
                        .then(response => {
                            console.log(response.data)
                        })
                    alert(this.sucessCadastro)
                }

            } catch (err) {
                console.log(err)
            }

        }
    },
}






/*
{
"logradouro": "Rua Joaquim Garcia de Souza",
"bairro": "Jardim Paraty",
"localidade": "Franca",
"uf": "SP",
}
*/


</script>


<style>
main {
    background-color: #BCAAA4;
    background-image: url(https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Logo_Rang-On.png?raw=true);
    background-size: contain;
    background-position: center;
}
</style>