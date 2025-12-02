<template>
  <div>
    <h1>Lecture - 15</h1>
    <h1>Pass Data To Child Component</h1>
    <h1>{{ name }}</h1>

    
  </div>
</template>

<script>
export default {
  name: 'PassDataToChild',
  props: {
    name: String
    u: Object,
    al: Function
  }
}
</script>