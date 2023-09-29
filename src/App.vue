<script setup>
import { StarryDigitizer } from "starry-digitizer"
import { ref } from "vue";

//TODO: JSON取得してparse
const plotData = ref({
  axes: {
    coords: {
      x1: 0,
      y1: 0,
      x2: 300,
      y2: 150
    },
    values: {
      x1: 0,
      y1: 0,
      x2: 400,
      y1: 400
    }
  },
  datasets: [
    {
      id: 0,
      name: 'Sample 1',
      plotValues: [2.0, 3.0, 2.0, 4.0, 3.0, 6.0]
    }
  ]
})
</script>

<template>
  <div>
    <header>
      <h1>Starrydata3 x StarryDigitizer Demo</h1>
    </header>
    <div class="contents">
      <h3>Paper Title: Sample Paper</h3>
      <div class="flex-box">
        <div class="figure-data">
          <p>Property X: Charge capacity / Unit X: A*s/kg</p>
          <p>Property Y: Voltage / Unit Y: V</p>
          <p>Measurement Condition: hogehoge</p>
        </div>
        <div class="samples-data">
          <p>Target Samples:</p>
          <p v-for="dataset in plotData.datasets" :key="plotData.id">
            {{ dataset.name }}
          </p>
          + Add Target Sample
        </div>
      </div>
      <StarryDigitizer :initialGraphImagePath="'/graph.png'" :initialData="plotData"/>
    </div>

  </div>
</template>

<style scoped lang="scss">
header {
height: 50px;
background-color: aquamarine;
display: flex;
align-items: center;
padding: 0 20px;

  h1 {
    font-size: 20px;
    color: navy
  }
}

.contents {
  padding: 20px;
}

.flex-box {
  display: flex;
  gap: 40px;
  margin-bottom: 20px;
  font-size: 14px;
  line-height: 2;

  .figure-data, .samples-data {
    padding: 20px;
    background-color: #dddddd;
    width: 50%;

  }
}
</style>
