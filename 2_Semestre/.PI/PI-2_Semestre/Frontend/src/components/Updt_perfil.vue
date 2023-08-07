<template>
    <v-dialog v-model="dialog" width="70vw" scrim="black">
        <v-card rounded="xl" class="pa-8">
            <v-row no-gutters justify="space-between">
                <h2 class="pl-3 pr-3 pa-2">Alterar informações</h2>
                <v-btn icon="mdi-close" variant="icon"  @click="close">
                </v-btn>
            </v-row>
            
            <h1>Informações pessoais</h1>
            <br>
            <h3 class="pl-3 pr-3">Nome</h3>
            <v-text-field class="my-custom-text-field pl-3 pr-3" v-model="cliente.nome_completo"></v-text-field>
            <h3 class="pl-3 pr-3 pt-4S">Celular</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.celular"></v-text-field>
            <h3 class="pl-3 pr-3">E-mail</h3>
            <v-text-field class="pl-3 pr-3" chips v-model="cliente.email"></v-text-field>
            <br>
            <h1>Endereço</h1>  
            <br>
            <h3 class="pl-3 pr-3">Cidade</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.cidade"></v-text-field>
            <h3 class="pl-3 pr-3">Estado</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.estado"></v-text-field>
            <h3 class="pl-3 pr-3">CEP</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.cep"></v-text-field>
            <h3 class="pl-3 pr-3">Endereco</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.endereco"></v-text-field>
            <h3 class="pl-3 pr-3">Número</h3>
            <v-text-field class="pl-3 pr-3" v-model="cliente.numero"></v-text-field>
            <div class="pl-3 pr-3 pb-4">
            <br>
                <v-btn class="popup-close bg-orange" @click="update()">
                    Editar Perfil
                </v-btn>
            </div>
        </v-card>
    </v-dialog>
</template>

<script>

import apiURL from '@/services/apiURL'

export default {
    props:{

    },
    data(){
        return{
            dialog: false,
            cliente: {
                nome_completo: '',
                celular: '',
                email: '',
                cidade: '',
                estado: '',
                cep: '',
                endereco: '',
                numero: '',
                id: null
            },
            novoCliente: {
                novoNome_completo: '',
                novoCelular: '',
                novoEmail: '',
                novoCidade: '',
                novoEstado: '',
                novoCep: '',
                novoEndereco: '',
                novoNumero: '',
                id: null
            }
        } 
    },
    methods: {
        update(){
            this.dialog = false
            this.novoCliente.novoNome_completo = this.cliente.nome_completo
            this.novoCliente.novoCelular = this.cliente.celular
            this.novoCliente.novoEmail = this.cliente.email
            this.novoCliente.novoCidade = this.cliente.cidade
            this.novoCliente.novoEstado = this.cliente.estado
            this.novoCliente.novoCep = this.cliente.cep
            this.novoCliente.novoEndereco = this.cliente.endereco
            this.novoCliente.novoNumero = this.cliente.numero
            this.novoCliente.id = this.cliente.id
            const body = {
                nome_completo: this.novoCliente.novoNome_completo,
                celular: this.novoCliente.novoCelular,
                email: this.novoCliente.novoEmail,
                cidade: this.novoCliente.novoCidade,
                estado: this.novoCliente.novoEstado,
                cep: this.novoCliente.novoCep,
                endereco: this.novoCliente.novoEndereco,
                numero: this.novoCliente.novoNumero,
                id: this.novoCliente.id
            }
            console.log(body, 'body')
            apiURL.put('/update-data-user', body).then(response => {
            if(response.status != 200){
            console.log("Erro ao atualizar dados.")
            } else{
            alert("Dados atualizados com sucesso!")
            }
      })
        },
        close(){
            this.dialog = false
        }   
    }
}
</script>
