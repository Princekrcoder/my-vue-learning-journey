<template>
    <div>
        <h1>Lecture - 20</h1>
        <h2>Understanding Props in Vue.js</h2>
        <StuDent name="Prince" />
        <TeaCher name/>

    </div>
</template>

<script>
    import StuDent from './student.vue'
    import TeaCher from './teacher.vue'
    export default {
        name: 'PropsUnderstand',
        components: {
            StuDent,
            TeaCher
        }
    }
</script>