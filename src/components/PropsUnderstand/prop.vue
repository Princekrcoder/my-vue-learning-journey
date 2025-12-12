<template>
    <div>
        <h1>Lecture - 20</h1>
        <h2>Understanding Props in Vue.js</h2>
        <Student />
        <Teacher />

    </div>
</template>

<script>
    import Student from './student.vue'
    import Teacher from './teacher.vue'
    export default {
        name: 'PropsUnderstand',
        components: {
            Student,
            Teacher
        }
    }
</script>