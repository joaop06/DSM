<template>
  <v-container>
    <h1>PERFIL</h1>
    <p>{{ cliente }}</p>
  </v-container>
</template>

<script>
import apiURL from '@/services/apiURL';
import globalVariables from '@/controllers/globalVariables'

export default {
  data() {
    return {
      cliente: globalVariables.clienteLogado[0]
    }
  },
  methods: {
    findUserData() {
      const body = {
        id: globalVariables.clienteLogado[0].id
      }

      apiURL.get('/data-user', body).then(response => {
        this.cliente = response.data.data;
      })
    },
    updateDataUser(){
      const body = {
        id: this.cliente.id,
        nome_completo: this.cliente.nome_completo,
        celular: this.cliente.celular,
        email: this.cliente.email,

        cidade: this.cliente.cidade,
        estado: estado,
        cep: this.cliente.cep,
        endereco: this.cliente.endereco,
        numero: this.cliente.numero
      }

      apiURL.put('/update-data-user', body).then(response => {
        if(response.status != 200){
          console.log("Erro ao atualizar dados.")
        } else{
          alert("Dados atualizados com sucesso!")
        }
      })
    }
  },
  mounted() {
  }
}
</script>