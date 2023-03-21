const { createApp } = Vue;
createApp ({
    data(){
        return{
            isMsgAtiva: false,
            luz: false
        }
    },
    methods:{
        toggleMsg: function(){
            this.isMsgAtiva = !this.isMsgAtiva
        },

    },
}).mount("#app")


/*
toggleMsg: function(){
    cont++
    if (cont%2==0){
        this.isMsgAtiva = true
    } else{
        this.isMsgAtiva = false
    }
}

***************************************************

toggleMsg: function(){
    console.log("Antes" = this.isMsgAtiva)
    this.isMsgAtiva = this.isMsgAtiva;
    console.log("Depois" = this.isMsgAtiva)
    this.isMsgAtiva = this.isMsgAtiva;
}
*/