<template>
<div>
    <HomeView />
    <TwoWayBinding />
    <GetInputFieldValue />
    <CheckBoxAndRadioButtonValue />
    <IfElseCondition />
    <ForLoop />
</div>
</template>

<script>
import HomeView from './components/Home.vue'
import TwoWayBinding from './components/TowWayBinding.vue'
import GetInputFieldValue from './components/getInputFieldValue.vue'
import CheckBoxAndRadioButtonValue from './components/CheckBoxAndRadioButtonValue.vue'
import IfElseCondition from './components/IfElseCondition.vue'
import ForLoop from './components/ForLoop.vue'

export default {
    name: 'App',

    components: {

        HomeView,
        TwoWayBinding,
        GetInputFieldValue,
        CheckBoxAndRadioButtonValue,
        IfElseCondition,
        ForLoop

    }
}
</script>

<style>

h1, h2, h3, h4, h5, h6 {
  color: #111;
  margin-bottom: 10px;
  font-weight: 600;
}


p {
  color: #555;
  line-height: 1.6;
  margin-bottom: 12px;
}


input, select, textarea {
  width: 100%;
  padding: 8px 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  margin-bottom: 10px;
  font-size: 14px;
}


button {
  padding: 10px 16px;
  border-radius: 6px;
  border: none;
  background: #2563eb;
  color: white;
  cursor: pointer;
  margin: 5px;
}

button:hover {
  background: #1e40af;
}

/* Unordered List */
ul {
  padding-left: 1.2rem;   /* left spacing */
  margin-bottom: 1rem;
  list-style: disc;       /* ● bullet */
  color: #444;            /* text color */
}

/* Ordered List */
ol {
  padding-left: 1.2rem;
  margin-bottom: 1rem;
  list-style: decimal;    /* 1, 2, 3 */
  color: #444;
}

/* List Items */
li {
  margin-bottom: 6px;     /* spacing between items */
  line-height: 1.6;
  font-size: 15px;
}

/* Nested lists (inside li) */
li ul, 
li ol {
  margin-top: 6px;
  margin-left: 1rem;
}

/* Optional: Beautiful custom bullet */
ul.custom-bullet {
  padding-left: 0;
  list-style: none;
}

ul.custom-bullet li {
  position: relative;
  padding-left: 1.2rem;
}

ul.custom-bullet li::before {
  content: "•";
  position: absolute;
  left: 0;
  color: #2563eb; /* blue bullet */
  font-size: 1.2rem;
}


</style>
