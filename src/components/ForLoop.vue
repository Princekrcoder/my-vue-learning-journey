<template>
<div>
    <h1>Lecture - 14</h1>
    <h1>For Loop Component</h1>
    <ul>
        <li v-for="i in techStack" :key="i"></li>
    </ul>

</div>
</template>

<script>
export default {
    name: 'ForLoop',
    data() {
        return {
            techStack: ['HTML', 'CSS', 'JavaScript', 'Vue.js', 'Node.js']
        }
    }
}
</script>
