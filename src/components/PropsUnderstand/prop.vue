<template>
    <div>
        <h1>Lecture - 20</h1>
        <h2>Understanding Props in Vue.js</h2>
        <Student />
        <Teacher />

    </div>
</template>

<script>
    import StuCent from './student.vue'
    import TeaCher from './teacher.vue'
    export default {
        name: 'PropsUnderstand',
        components: {
            StuDent,
            TeaCher
        }
    }
</script>