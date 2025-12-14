<template>
    <div>
        <h1>Lecture - 20</h1>
        <h2>Understanding Props in Vue.js</h2>
        <StuDent Name="Prince" college="college"/>
        <TeaCher Name="Alex" :college="college"/>

    </div>
</template>

<script>
    import StuDent from './student.vue'
    import TeaCher from './teacher.vue'
    export default {
        name: 'PropsUnderstand',
        data() {
            return {
                college: 'Cu Mohali'
            }
        },
        components: {
            StuDent,
            TeaCher
        }
    }
</script>