const { createApp } = Vue;

createApp({ 
    data(){
        return {
            display: "0",
            numeroAnterior: null,
            numeroAtual: null,
            operador: null
        }
    },
    methods: {
        handleButtonClick(valorBotao) {
            switch (valorBotao) {
                case "+":
                case "-":
                case "/":
                case "*":
                    this.handleOperator(valorBotao);
                    break;
                case ".":
                    this.handleDecimal();
                    break;
                case "=":
                    this.handleEquals();
                    break;

                default:
                    this.handleNumber(valorBotao);
                    break;
            }
        },

        handleNumber(numero){
            console.log("Está chamando o número" + numero); 
            if (this.display === "0") {
                this.display = numero.toString();
            } else {
                this.display += numero.toString();
            }
        },
        handleOperator(op){
            console.log("Está chamando o operador" + op);
            if (this.numeroAnterior !== null){ //! = = 
                this.handleEquals();
            }

            this.operador = op;
            this.numeroAnterior = parseFloat(this.display);
            this.display = "0";
        },
        handleDecimal(){
            console.log("Está chamando o ponto decimal");
            if (!this.display.includes(".")) {
                this.display += "."
            }
        },
        handleEquals(){
            console.log("Está chamando o igual");
            this.numeroAtual = parseFloat(this.display);
            console.log(this.numeroAtual);
            console.log(this.numeroAnterior);
            console.log(this.operador);
            if (this.numeroAnterior !== null && this.operador !== null) {
                switch (this.operador) {
                    case "+":
                        this.display = this.numeroAnterior + this.numeroAtual;
                        break;
                
                }

                this.operador = null;
                this.numeroAnterior = null;
            }
        }
    }
}).mount("#app");