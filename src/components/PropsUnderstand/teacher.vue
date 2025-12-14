<template>
    <div>
        <h3>teacher data</h3>
        <h3>Teacher name is {{ name }} from {{ college }} college.
        
        </h3>
    </div>
</template>

<script>
    export default {
        name: 'teaCher',  
        props: {
            name:String,
            college:String

        }
    }
</script>