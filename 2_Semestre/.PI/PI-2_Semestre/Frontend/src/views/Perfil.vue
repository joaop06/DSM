<template>
  <v-container>
<v-card class="bg-brown-darken-2 mt-10" elevation="5" variant="outlined">
  <v-list class="bg-white">
    <v-list-item>
      
      <v-card class= "pa-5" variant="outlined">  

        <h1>{{ cliente.nome_completo }}</h1>
        <br>

        <h2>Informações pessoais</h2>
        <br>

        <v-list-item>
          <h3>Email: {{ cliente.email }}</h3> 
          <h3>Telefone: {{ cliente.celular }}</h3>
        </v-list-item>
        <br>

        <h2>Endereço</h2>
        <br>

        <v-list-item>
            <h3>Rua: {{ cliente.endereco }}</h3>
            <h3>Nº: {{ cliente.numero }}</h3>
            <h3>CEP: {{ cliente.cep }}</h3>
            <h3>Cidade: {{ cliente.cidade }}</h3>
            <h3>Estado: {{ cliente.estado }}</h3>
        </v-list-item>
      </v-card>
    </v-list-item>
  </v-list>

  <v-btn @click="eventActiveUpdtDataUser(cliente)" class="ma-5 bg-red-accent-3" rounded="lg">
    <v-icon class="mr-2">
      mdi-pencil
    </v-icon>
      Editar Perfil
    </v-btn>

</v-card>

<Updt_perfil ref="Updt_perfil"/>

</v-container>
</template>

<script>
import Updt_perfil from '@/components/Updt_perfil.vue';
import apiURL from '@/services/apiURL';
import globalVariables from '@/controllers/globalVariables';

export default {
  
  components: { Updt_perfil },
  
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
    eventActiveUpdtDataUser(){
      this.$refs.Updt_perfil.dialog = true;
      this.$refs.Updt_perfil.cliente.id = this.cliente.id,
      this.$refs.Updt_perfil.cliente.nome_completo = this.cliente.nome_completo,
      this.$refs.Updt_perfil.cliente.celular = this.cliente.celular,
      this.$refs.Updt_perfil.cliente.email = this.cliente.email,
      this.$refs.Updt_perfil.cliente.cidade = this.cliente.cidade,
      this.$refs.Updt_perfil.cliente.estado = this.cliente.estado,
      this.$refs.Updt_perfil.cliente.cep = this.cliente.cep,
      this.$refs.Updt_perfil.cliente.endereco = this.cliente.endereco,
      this.$refs.Updt_perfil.cliente.numero = this.cliente.numero
    }
  },
  mounted() {
  }
}
</script>