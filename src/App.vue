<template>
  <div>
    <HomeView />
  <TwoWayBinding />
  <GetInputFieldValue />
  </div>
</template>
  
<script>
import HomeView from './components/Home.vue'
import TwoWayBinding from './components/TowWayBinding.vue'
import GetInputFieldValue from './components/getInputFieldValue.vue'
export default {
  name: 'App',

  components: {
    
    HomeView,
    TwoWayBinding,
    GetInputFieldValue
    
  }
}
</script>

