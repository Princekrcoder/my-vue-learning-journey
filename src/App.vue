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
/* Headings */
h1, h2, h3, h4, h5, h6 {
  color: #111;
  margin-bottom: 10px;
  font-weight: 600;
}

/* Paragraph */
p {
  color: #555;
  line-height: 1.6;
  margin-bottom: 12px;
}

/* Form controls */
input, select, textarea {
  width: 100%;
  padding: 8px 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  margin-bottom: 10px;
  font-size: 14px;
}

/* Buttons */
button {
  padding: 10px 16px;
  border-radius: 6px;
  border: none;
  background: #2563eb;
  color: white;
  cursor: pointer;
}

button:hover {
  background: #1e40af;
}

</style>
