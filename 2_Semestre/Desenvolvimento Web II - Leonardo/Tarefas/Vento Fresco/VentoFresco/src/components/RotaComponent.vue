<template>
    <div>
      <h1>Componente Rota</h1>
      <p>Parâmetro: {{ parametro }}</p>
    </div>
  </template>
  
  <script>
  export default {
    name: 'RotaComponent',
    computed: {
      parametro() {
        return this.$route.params.parametro;
      }
    }
  };
  </script>