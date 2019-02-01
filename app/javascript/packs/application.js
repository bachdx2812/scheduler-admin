import Vue from 'vue/dist/vue.esm'

import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.min.css'
Vue.use(VueMaterial)

import TurbolinksAdapter from 'vue-turbolinks'
Vue.use(TurbolinksAdapter)

import './style/application.scss'

document.addEventListener('turbolinks:load', () => {
  const vue = new Vue({
    el: "#app",
    components: {
      App
    }
  });
});
