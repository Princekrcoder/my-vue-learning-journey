<template>
    <div>
       <h3>Student data</h3>
       <h3>Student name is {{ name }} from {{ college }} college.</h3>
    </div>
</template>

<script>
    export default {
        name: 'StuDent',
        props: {
            name: String,
            college: String
        }
    }
</script>