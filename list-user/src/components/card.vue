<!--<template>-->
<!--  <div class="user-card">-->
<!--    <div class="user-info">-->
<!--      <h2 class="user-name">{{ name }}</h2>-->
<!--      <div class="contact-info">-->
<!--        <div class="contact-item">-->
<!--          <span class="icon">📞</span>-->
<!--          <span class="contact-detail">{{ phone }}</span>-->
<!--        </div>-->
<!--        <div class="contact-item">-->
<!--          <span class="icon">✉️</span>-->
<!--          <span class="contact-detail">{{ email }}</span>-->
<!--        </div>-->
<!--      </div>-->
<!--    </div>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--export default {-->
<!--  props: {-->
<!--    name: {-->
<!--      type: String,-->
<!--      required: true-->
<!--    },-->
<!--    phone: {-->
<!--      type: String,-->
<!--      required: true-->
<!--    },-->
<!--    email: {-->
<!--      type: String,-->
<!--      required: true-->
<!--    }-->
<!--  }-->
<!--};-->
<!--</script>-->

<!--<style scoped>-->
<!--.user-card {-->
<!--  cursor: pointer;-->
<!--  width: 370px;-->
<!--  height: 314px;-->
<!--  padding: 20px;-->
<!--  box-sizing: border-box;-->
<!--  border-radius: 15px;-->
<!--  background-color: #ffffff;-->
<!--  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);-->
<!--  transition: transform 0.2s, box-shadow 0.2s;-->
<!--}-->

<!--.user-card:hover {-->
<!--  transform: translateY(-5px);-->
<!--  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);-->
<!--}-->

<!--.user-info {-->
<!--  text-align: left;-->
<!--}-->

<!--.user-name {-->
<!--  margin: 0 0 15px 0;-->
<!--  font-size: 1.5em;-->
<!--  color: #333;-->
<!--}-->

<!--.contact-info {-->
<!--  width: 1120px;-->
<!--  margin: 0 auto;-->
<!--  display: flex;-->
<!--  flex-direction: column;-->
<!--  gap: 10px;-->
<!--}-->

<!--.contact-item {-->
<!--  display: flex;-->
<!--  align-items: center;-->
<!--  gap: 10px;-->
<!--}-->

<!--.icon {-->
<!--  font-size: 1.2em;-->
<!--}-->

<!--.contact-detail {-->
<!--  font-size: 1em;-->
<!--  color: #555;-->
<!--}-->
<!--</style>-->

<template>
  <div class="user-card" @click="$emit('click')">
    <div class="user-info">
      <h2 class="user-name">{{ name }}</h2>
      <div class="contact-info">
        <div class="contact-item">
          <img
              src="../assets/phon.svg"
              alt="phone"
              class="icon icon-phon"
          />
          <span class="fg contact-detail">{{ phone }}</span>
        </div>
        <div class="contact-item">
          <img
              src="../assets/letter.svg"
              alt="letter"
              class="icon"
          />
          <span class="fg contact-detail">{{ email }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    name: {
      type: String,
      required: true
    },
    phone: {
      type: String,
      required: true
    },
    email: {
      type: String,
      required: true
    }
  }
};
</script>

<style scoped>
.user-card {
  cursor: pointer;
  width: 357px;
  height: 314px;
  padding: 20px;
  box-sizing: border-box;
  border-radius: 15px;
  background-color: #ffffff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s, box-shadow 0.2s;
}

.user-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.user-info {
  text-align: left;
}

.user-name {
  margin: 0 0 15px 0;
}

.contact-info {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 10px;
}

.icon {
  font-size: 1.2em;
}

.contact-detail {
  font-size: 1em;
  color: #555;
}
.icon-phon{
  margin-left: 4px;
}
</style>