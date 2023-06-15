// Composables
import { createRouter, createWebHistory } from 'vue-router'

const routes = [

  // Rotas Cliente
  {
    path: '/',
    redirect: '/Home',
    component: () => import('@/views/Home.vue'),
  },
  {
    path: '/Home',
    name: 'Home',
    component: () => import('@/views/Home.vue'),
  },
  {
    path: '/pedidos',
    name: 'Pedidos',
    component: () => import('@/views/Pedidos.vue'),
  },
  {
    path: '/pedidosTeste',
    name: 'PedidosTeste',
    component: () => import('@/views/PedidosTeste.vue'),
  },
  {
    path: '/sobre',
    name: 'Sobre',
    component: () => import('@/views/Sobre.vue'),
  },
  {
    path: '/perfil',
    name: 'Perfil',
    component: () => import('@/views/Perfil.vue'),
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/Login.vue'),
  },
  {
    path: '/cadastro',
    name: 'Cadastro',
    component: () => import('@/views/Cadastro.vue'),
  },

  // Rotas Admin
  {
    path: '/admin',
    name: 'Admin_Login',
    component: () => import('@/views/admin/login.vue'),
  },
  {
    path: '/admin/pedidos-gerais',
    name: 'Admin_PedidosGerais',
    component: () => import('@/views/admin/PedidosGerais.vue')
  },
  {
    path: '/admin/Itens',
    name: 'Admin_Itens',
    component: () => import('@/views/admin/Itens.vue')
  },

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

export default router
