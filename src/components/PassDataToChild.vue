<template>
  <div>
    <h1>Lecture - 15</h1>
    <h1>Pass Data To Child Component</h1>
    <h1>{{ us.name }}</h1>
    <h1>{{ name }}</h1>
    <button v-on:click="al()" type="button">Show Alert</button>

    
  </div>
</template>

<script>
export default {
  name: 'PassDataToChild',
  props: {
    name: String,
    us: Object,
    al: Function
  }
}
</script>