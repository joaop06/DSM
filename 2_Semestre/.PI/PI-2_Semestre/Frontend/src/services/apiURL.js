import axios from "axios";

const apiURL = axios.create({
    baseURL: "http://localhost:8081",
})

export default apiURL;