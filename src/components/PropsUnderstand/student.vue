<template>
    <div>
       <h3>Student data</h3>
       <h3>Student name is {{ Name }} from {{ college }} college.</h3>
    </div>
</template>

<script>
    export default {
        name: 'StuDent',
        props: {
            Name: String,
            college: String
        }
    }
</script>