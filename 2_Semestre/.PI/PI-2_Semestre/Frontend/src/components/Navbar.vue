<template>
  <v-app-bar color="brown-darken-2 pa-2" :elevation="5">

    <router-link to="/" tag="div">
      <v-img src="https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Logo_Rang-On.png?raw=true" width="80"
        height="80"></v-img>
    </router-link>


    <v-col v-if="clienteLogado" class="d-flex text-right justify-end">

      <v-btn to="/pedidos" @click="findUserLogado(clienteLogado[0].id)" width="7vw" height="5vh" class="ma-5 bg-red-accent-3" color="white" rounded="shaped"
        :elevation="2" icon>
        <v-icon class="mr-2">mdi-history</v-icon>
        <p class="text-subtitle-2">Pedidos</p>
      </v-btn>

      <v-btn to="/sobre" @click="findUserLogado(clienteLogado[0].id)" width="7vw" height="5vh" class="ma-5 bg-red-accent-3" color="white" rounded="shaped"
        :elevation="2" icon>
        <v-icon class="mr-2">mdi-information</v-icon>
        <p class="text-subtitle-2">Sobre</p>
      </v-btn>


      <v-menu location="bottom">
        <template v-slot:activator="{ props }">
          <v-btn @click="findUserLogado(clienteLogado[0].id)" width="7vw" height="5vh" class="ma-5 bg-red-accent-3" rounded="shaped" :elevation="2" v-bind="props">
            <div>
              <p class="text-subtitle-2 my-n1">Olá, {{ primeiroNome() }}!</p>
              <p class="text-subtitle-2 text-decoration-underline">Minha conta</p>
            </div>
          </v-btn>
        </template>

        <v-list>
          <v-list-item>
            <v-list-item-title>
              <v-btn to="/perfil" @click="findUserLogado(clienteLogado[0].id)" width="100%" color="rgb(0,0,0,0)" :elevation="0" rounded="lg" icon>
                <v-icon class="mr-2" color="red-accent-3">mdi-account-box</v-icon>
                <p class="text-subtitle-2">Perfil</p>
              </v-btn>
            </v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-title>
              <v-btn @click="deslogar" width="100%" color="rgb(0,0,0,0)" :elevation="0" rounded="lg" icon>
                <v-icon class="mr-2" color="red-accent-3">mdi-logout</v-icon>
                <p class="text-subtitle-2">Sair</p>
              </v-btn>
            </v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>




    </v-col>

    <v-col v-else class="text-right">
      <v-btn width="15%" height="5vh" class="ma-5 bg-white font-weight-bold" color="red-accent-3" rounded="shaped"
        :elevation="1" to="/login">
        Entrar
      </v-btn>

      <v-btn width="15%" height="5vh" class="ma-5 bg-white font-weight-bold" color="red-accent-3" rounded="shaped"
        :elevation="1" to="/cadastro">
        Cadastrar
      </v-btn>

    </v-col>
  </v-app-bar>
</template>

<script>
import globalVariables from '@/controllers/globalVariables'
import apiURL from '@/services/apiURL'

export default {
  props: {

  },
  data() {
    return {
      sessaoLogin: globalVariables.sessaoLogin,
      clienteLogado: globalVariables.clienteLogado,
      items: [
        { title: 'Perfil' },
        { title: 'Sair' },
      ],
      locations: [
        'top',
        'bottom',
        'start',
        'end',
        'center',
      ],
      location: 'end',
    }
  },
  methods: {
    deslogar() {
      this.$router.push('/')
      this.sessaoLogin = globalVariables.sessaoLogin = false
      location.reload()
    },
    primeiroNome() {
      if (!this.clienteLogado) {
        return ''
      } else {
        console.log(this.clienteLogado)
        const partsNome = this.clienteLogado[0].nome_completo.split(' ')

        const primeiroNome = partsNome[0]
        if (!primeiroNome) {
          return ''
        } else {
          return primeiroNome
        }
      }
    },
    async findUserLogado(id) {
      await apiURL.get(`/find-user?id=${id}`).then(response => {
        if (response.status !== 200) {
          globalVariables.sessaoLogin = false
          globalVariables.clienteLogado = null

        } else {
          globalVariables.clienteLogado = response.data.data
          this.clienteLogado = globalVariables.clienteLogado
          console.log(response.data.data)
        }
      })
    }
  },
  mounted() {
    this.primeiroNome()
  }
}
</script>
