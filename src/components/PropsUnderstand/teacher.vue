<template>
    <div>
        <h3>teacher data</h3>
        <h3>Teacher name is {{ Name }} from {{ college }} college.
        
        </h3>
    </div>
</template>

<script>
    export default {
        name: 'teaCher',  
        props: {
            Name:String,
            college:String

        }
    }
</script>