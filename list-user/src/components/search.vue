<!--<template>-->
<!--  <div class="search-container">-->
<!--    <div class="input-wrapper">-->
<!--      <input-->
<!--          type="text"-->
<!--          v-model="searchQuery"-->
<!--          placeholder="Введите запрос..."-->
<!--          @input="onSearch"-->
<!--          @keyup.enter="performSearch"-->
<!--      />-->
<!--      <img-->
<!--          src="../assets/search.svg"-->
<!--      alt="Search"-->
<!--      class="search-icon"-->
<!--      @click="performSearch"-->
<!--      />-->
<!--    </div>-->
<!--    <p v-if="searchQuery">Вы ищете: {{ searchQuery }}</p>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--export default {-->
<!--  data() {-->
<!--    return {-->
<!--      searchQuery: ''-->
<!--    };-->
<!--  },-->
<!--  methods: {-->
<!--    onSearch() {-->
<!--      console.log('Поисковый запрос:', this.searchQuery);-->
<!--    },-->
<!--    performSearch() {-->
<!--      // Метод для выполнения поиска-->
<!--      console.log('Выполняем поиск:', this.searchQuery);-->
<!--      // Здесь можно добавить логику для отправки запроса на сервер-->
<!--    }-->
<!--  }-->
<!--};-->
<!--</script>-->

<!--<style scoped>-->
<!--.search-container {-->
<!--  max-width: 1120px;-->
<!--  margin: 0 auto;-->
<!--}-->

<!--.input-wrapper {-->
<!--  position: relative;-->
<!--  width: 1120px;-->
<!--}-->

<!--input {-->
<!--  border: 1px solid #D4DEFE;-->
<!--  width: 100%;-->
<!--  height: 48px;-->
<!--  padding: 0 50px 0 20px; /* Добавляем отступ справа для иконки */-->
<!--  font-size: 16px;-->
<!--  border-radius: 24px;-->
<!--  margin-top: 25px;-->
<!--  box-sizing: border-box;-->
<!--}-->

<!--.search-icon {-->
<!--  position: absolute;-->
<!--  right: 20px;-->
<!--  top: 67%;-->
<!--  transform: translateY(-50%);-->
<!--  width: 24px;-->
<!--  height: 24px;-->
<!--  cursor: pointer;-->
<!--}-->

<!--p {-->
<!--  margin-top: 10px;-->
<!--  font-size: 14px;-->
<!--  color: #666;-->
<!--}-->
<!--</style>-->

<template>
  <div class="search-container">
    <div class="input-wrapper">
      <input
          type="text"
          v-model="searchQuery"
          placeholder="Введите запрос..."
          @input="onSearch"
          @keyup.enter="performSearch"
      />
      <img
          src="../assets/search.svg"
          alt="Search"
          class="search-icon"
          @click="performSearch"
      />
    </div>
    <p v-if="searchQuery">Вы ищете: {{ searchQuery }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchQuery: ''
    };
  },
  methods: {
    onSearch() {
      console.log('Поисковый запрос:', this.searchQuery);
    },
    async performSearch() {
      if (this.searchQuery.trim()) {
        try {
          // Выполняем запрос к API
          const response = await fetch(
              `http://127.0.0.1:3000?term=${this.searchQuery}`
          );
          if (!response.ok) {
            throw new Error('Ошибка при загрузке данных');
          }
          const data = await response.json();

          // Передаем результаты в родительский компонент
          this.$emit('search-results', data);
        } catch (error) {
          console.error('Ошибка:', error);
          this.$emit('search-results', []); // Передаем пустой массив в случае ошибки
        }
      } else {
        console.log('Поле поиска пустое');
        this.$emit('search-results', []); // Передаем пустой массив, если запрос пустой
      }
    }
  }
};
</script>

<style scoped>
.search-container {
  max-width: 1120px;
  margin: 0 auto;
}

.input-wrapper {
  position: relative;
  width: 1120px;
}

input {
  border: 1px solid #D4DEFE;
  width: 100%;
  height: 48px;
  padding: 0 50px 0 20px;
  font-size: 16px;
  border-radius: 24px;
  margin-top: 25px;
  box-sizing: border-box;
}

.search-icon {
  position: absolute;
  right: 20px;
  top: 67%;
  transform: translateY(-50%);
  width: 24px;
  height: 24px;
  cursor: pointer;
}

p {
  margin-top: 10px;
  font-size: 14px;
  color: #666;
}
</style>