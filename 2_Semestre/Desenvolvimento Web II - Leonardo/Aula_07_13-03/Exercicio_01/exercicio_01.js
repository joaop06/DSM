const { createApp } = Vue;
createApp ({
    data(){
        return{
            msg_alerta: ""
        }
    },
    methods:{
        alerta: function(){
            this.msg_alerta = "Alerta com VUE"
        }
    }
}).mount("#app")