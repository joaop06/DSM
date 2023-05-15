<template>
  <v-app>
    <v-main>
      <Navbar />
      <v-card class="d-flex" width="100%" height="100%">
        <MenuLateral v-if="!$route.path.includes('login_cadastro')" />
        <router-view />
      </v-card>

    </v-main>
  </v-app>
</template>

<script>
import Navbar from '@/components/Navbar.vue'
import MenuLateral from '@/components/MenuLateral.vue'

export default ({
  components: {
    Navbar,
    MenuLateral
  },
  data() {
    return {

    }
  },
  created() {
    // Importa o objeto $route do Vue Router
    const { $route } = this
    console.log($route.path) // Verifica o caminho da rota atual
  }
})
</script>


<style>
body{
  background-color: #BBDEFB;
}
</style>