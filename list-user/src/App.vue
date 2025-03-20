<!--&lt;!&ndash;<template>&ndash;&gt;-->
<!--&lt;!&ndash;  <div id="app">&ndash;&gt;-->
<!--&lt;!&ndash;    &lt;!&ndash; Компонент поиска &ndash;&gt;&ndash;&gt;-->
<!--&lt;!&ndash;    <SearchComponent  @search-results="handleSearchResults" />&ndash;&gt;-->

<!--&lt;!&ndash;    &lt;!&ndash; Отображение карточек пользователей &ndash;&gt;&ndash;&gt;-->
<!--&lt;!&ndash;    <div class="user-cards-container">&ndash;&gt;-->
<!--&lt;!&ndash;      <UserCard&ndash;&gt;-->
<!--&lt;!&ndash;          v-for="user in users"&ndash;&gt;-->
<!--&lt;!&ndash;          :key="user.id"&ndash;&gt;-->
<!--&lt;!&ndash;          :name="user.name"&ndash;&gt;-->
<!--&lt;!&ndash;          :phone="user.phone"&ndash;&gt;-->
<!--&lt;!&ndash;          :email="user.email"&ndash;&gt;-->
<!--&lt;!&ndash;      />&ndash;&gt;-->
<!--&lt;!&ndash;    </div>&ndash;&gt;-->
<!--&lt;!&ndash;  </div>&ndash;&gt;-->
<!--&lt;!&ndash;</template>&ndash;&gt;-->

<!--&lt;!&ndash;<script>&ndash;&gt;-->
<!--&lt;!&ndash;import UserCard from './components/card.vue';&ndash;&gt;-->
<!--&lt;!&ndash;import SearchComponent from './components/search.vue';&ndash;&gt;-->

<!--&lt;!&ndash;export default {&ndash;&gt;-->
<!--&lt;!&ndash;  components: {&ndash;&gt;-->
<!--&lt;!&ndash;    SearchComponent,&ndash;&gt;-->
<!--&lt;!&ndash;    UserCard&ndash;&gt;-->
<!--&lt;!&ndash;  },&ndash;&gt;-->
<!--&lt;!&ndash;  data() {&ndash;&gt;-->
<!--&lt;!&ndash;    return {&ndash;&gt;-->
<!--&lt;!&ndash;      users: [] // Массив для хранения данных о пользователях&ndash;&gt;-->
<!--&lt;!&ndash;    };&ndash;&gt;-->
<!--&lt;!&ndash;  },&ndash;&gt;-->
<!--&lt;!&ndash;  async created() {&ndash;&gt;-->
<!--&lt;!&ndash;    // Загрузка данных с бэкенда при создании компонента&ndash;&gt;-->
<!--&lt;!&ndash;    await this.fetchUsers();&ndash;&gt;-->
<!--&lt;!&ndash;  },&ndash;&gt;-->
<!--&lt;!&ndash;  methods: {&ndash;&gt;-->
<!--&lt;!&ndash;    handleSearchResults(results) {&ndash;&gt;-->
<!--&lt;!&ndash;      // Обновляем массив пользователей&ndash;&gt;-->
<!--&lt;!&ndash;      this.users = results;&ndash;&gt;-->
<!--&lt;!&ndash;    },&ndash;&gt;-->
<!--&lt;!&ndash;    async fetchUsers() {&ndash;&gt;-->
<!--&lt;!&ndash;      try {&ndash;&gt;-->
<!--&lt;!&ndash;        // Пример запроса к API (замените на ваш URL)&ndash;&gt;-->
<!--&lt;!&ndash;        const response = await fetch('http://127.0.0.1:3000');&ndash;&gt;-->
<!--&lt;!&ndash;        if (!response.ok) {&ndash;&gt;-->
<!--&lt;!&ndash;          throw new Error('Ошибка при загрузке данных');&ndash;&gt;-->
<!--&lt;!&ndash;        }&ndash;&gt;-->
<!--&lt;!&ndash;        const data = await response.json();&ndash;&gt;-->

<!--&lt;!&ndash;        // Преобразуем данные в нужный формат (если необходимо)&ndash;&gt;-->
<!--&lt;!&ndash;        this.users = data.map(user => ({&ndash;&gt;-->
<!--&lt;!&ndash;          id: user.id,&ndash;&gt;-->
<!--&lt;!&ndash;          name: user.name,&ndash;&gt;-->
<!--&lt;!&ndash;          phone: user.phone,&ndash;&gt;-->
<!--&lt;!&ndash;          email: user.email&ndash;&gt;-->
<!--&lt;!&ndash;        }));&ndash;&gt;-->
<!--&lt;!&ndash;      } catch (error) {&ndash;&gt;-->
<!--&lt;!&ndash;        console.error('Ошибка:', error);&ndash;&gt;-->
<!--&lt;!&ndash;      }&ndash;&gt;-->
<!--&lt;!&ndash;    }&ndash;&gt;-->
<!--&lt;!&ndash;  }&ndash;&gt;-->
<!--&lt;!&ndash;};&ndash;&gt;-->
<!--&lt;!&ndash;</script>&ndash;&gt;-->

<!--&lt;!&ndash;<style>&ndash;&gt;-->
<!--&lt;!&ndash;body {&ndash;&gt;-->
<!--&lt;!&ndash;  margin: 0;&ndash;&gt;-->
<!--&lt;!&ndash;  padding: 0;&ndash;&gt;-->
<!--&lt;!&ndash;  background: white;&ndash;&gt;-->
<!--&lt;!&ndash;}&ndash;&gt;-->

<!--&lt;!&ndash;.user-cards-container {&ndash;&gt;-->
<!--&lt;!&ndash;  display: flex;&ndash;&gt;-->
<!--&lt;!&ndash;  flex-wrap: wrap;&ndash;&gt;-->
<!--&lt;!&ndash;  gap: 25px;&ndash;&gt;-->
<!--&lt;!&ndash;  padding: 20px;&ndash;&gt;-->
<!--&lt;!&ndash;  margin: 0 auto;&ndash;&gt;-->
<!--&lt;!&ndash;  justify-content: center;&ndash;&gt;-->
<!--&lt;!&ndash;  align-content: space-between;&ndash;&gt;-->
<!--&lt;!&ndash;}&ndash;&gt;-->
<!--&lt;!&ndash;</style>&ndash;&gt;-->


<!--<template>-->
<!--  <div id="app">-->
<!--    &lt;!&ndash; Компонент поиска &ndash;&gt;-->
<!--    <SearchComponent @search-results="handleSearchResults" />-->

<!--    &lt;!&ndash; Отображение карточек пользователей &ndash;&gt;-->
<!--    <div class="user-cards-container">-->
<!--      <UserCard-->
<!--          v-for="user in users"-->
<!--          :key="user.id"-->
<!--          :name="user.name"-->
<!--          :phone="user.phone"-->
<!--          :email="user.email"-->
<!--          @click="openModal(user)"-->
<!--      />-->
<!--    </div>-->

<!--    &lt;!&ndash; Модальное окно &ndash;&gt;-->
<!--    <div v-if="isModalOpen" class="modal-overlay" @click="closeModal">-->
<!--      <div class="modal-content" @click.stop>-->
<!--        <div class="block-cross">-->
<!--          <h2>{{ selectedUser.name }}</h2>-->
<!--          <img-->
<!--              @click="closeModal"-->
<!--              src="./assets/cross.svg"-->
<!--              alt="Search"-->
<!--              class="cross-icon"-->
<!--          />-->
<!--        </div>-->

<!--        &lt;!&ndash; Обертка для строк &ndash;&gt;-->
<!--        <div class="info-grid">-->
<!--          <p class="label fb">Телефон:</p>-->
<!--          <p class="value fg">{{ selectedUser.phone }}</p>-->

<!--          <p class="label fb">Почта:</p>-->
<!--          <p class="value fg">{{ selectedUser.email }}</p>-->

<!--          <p class="label fb">Дата приема:</p>-->
<!--          <p class="value fg">{{ selectedUser.hire_date }}</p>-->

<!--          <p class="label fb">Должность:</p>-->
<!--          <p class="value fg">{{ selectedUser.position_name }}</p>-->

<!--          <p class="label fb">Подразделение:</p>-->
<!--          <p class="value fg">{{ selectedUser.department }}</p>-->

<!--        </div>-->
<!--        <div>-->
<!--          <p class="label fb">Дополнительная информация:</p>-->
<!--          <p class="value fg">{{ selectedUser.department }}</p>-->
<!--        </div>-->
<!--      </div>-->
<!--    </div>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--import UserCard from './components/card.vue';-->
<!--import SearchComponent from './components/search.vue';-->

<!--export default {-->
<!--  components: {-->
<!--    SearchComponent,-->
<!--    UserCard-->
<!--  },-->
<!--  data() {-->
<!--    return {-->
<!--      users: [], // Массив для хранения данных о пользователях-->
<!--      isModalOpen: false, // Состояние модального окна-->
<!--      selectedUser: null // Выбранный пользователь для отображения в модальном окне-->
<!--    };-->
<!--  },-->
<!--  async created() {-->
<!--    // Загрузка данных с бэкенда при создании компонента-->
<!--    await this.fetchUsers();-->
<!--  },-->
<!--  methods: {-->
<!--    handleSearchResults(results) {-->
<!--      // Обновляем массив пользователей-->
<!--      this.users = results;-->
<!--    },-->
<!--    async fetchUsers() {-->
<!--      try {-->
<!--        // Пример запроса к API (замените на ваш URL)-->
<!--        const response = await fetch('http://127.0.0.1:3000');-->
<!--        if (!response.ok) {-->
<!--          throw new Error('Ошибка при загрузке данных');-->
<!--        }-->
<!--        const data = await response.json();-->

<!--        // Преобразуем данные в нужный формат (если необходимо)-->
<!--        this.users = data.map(user => ({-->
<!--          name: user.name,-->
<!--          phone: user.phone,-->
<!--          email: user.email,-->
<!--          address: user.address,-->
<!--          position_name: user.position_name,-->
<!--          department: user.department,-->
<!--          hire_date: user.hire_date-->
<!--        }));-->
<!--      } catch (error) {-->
<!--        console.error('Ошибка:', error);-->
<!--      }-->
<!--    },-->
<!--    openModal(user) {-->
<!--      // Открываем модальное окно и передаем данные выбранного пользователя-->
<!--      this.selectedUser = user;-->
<!--      this.isModalOpen = true;-->
<!--    },-->
<!--    closeModal() {-->
<!--      // Закрываем модальное окно-->
<!--      this.isModalOpen = false;-->
<!--      this.selectedUser = null;-->
<!--    }-->
<!--  }-->
<!--};-->
<!--</script>-->

<!--<style>-->
<!--.user-cards-container {-->
<!--  display: flex;-->
<!--  flex-wrap: wrap;-->
<!--  gap: 25px;-->
<!--  padding: 20px;-->
<!--  margin: 0 auto;-->
<!--  justify-content: center;-->
<!--  align-content: space-between;-->
<!--}-->

<!--.modal-overlay {-->
<!--  position: fixed;-->
<!--  top: 0;-->
<!--  left: 0;-->
<!--  width: 100%;-->
<!--  height: 100%;-->
<!--  background: rgba(0, 0, 0, 0.5);-->
<!--  display: flex;-->
<!--  justify-content: center;-->
<!--  align-items: center;-->
<!--}-->

<!--.modal-content {-->
<!--  background: white;-->
<!--  padding: 24px;-->
<!--  border-radius: 10px;-->
<!--  max-width: 500px;-->
<!--  height: 468px;-->
<!--  width: 100%;-->
<!--  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);-->
<!--}-->

<!--.modal-content h2 {-->
<!--  margin-top: 0;-->
<!--}-->

<!--.modal-content button {-->
<!--  margin-top: 20px;-->
<!--  padding: 10px 20px;-->
<!--  background: #007bff;-->
<!--  color: white;-->
<!--  border: none;-->
<!--  border-radius: 5px;-->
<!--  cursor: pointer;-->
<!--}-->

<!--.modal-content button:hover {-->
<!--  background: #0056b3;-->
<!--}-->
<!--.block-cross{-->
<!--  display: flex;-->
<!--  justify-content: space-between;-->
<!--  align-items: baseline;-->
<!--}-->
<!--.cross-icon{-->
<!--  cursor: pointer;-->
<!--}-->

<!--.info-grid {-->
<!--  display: grid;-->
<!--  grid-template-columns: 200px 1fr; /* Две колонки: первая 200px, вторая занимает оставшееся пространство */-->
<!--  gap: 10px; /* Отступ между строками и колонками */-->
<!--  align-items: center; /* Выравнивание по вертикали */-->
<!--}-->
<!--</style>-->

<template>
  <div id="app">
    <SearchComponent @search-results="handleSearchResults" />

    <div class="user-cards-container">
      <UserCard
          v-for="user in users"
          :key="user.id"
          :name="user.name"
          :phone="user.phone"
          :email="user.email"
          @click="openModal(user)"
      />
    </div>
    <div v-if="isModalOpen" class="modal-overlay" @click="closeModal">
      <div class="modal-content" @click.stop>
        <div class="block-cross">
          <h2>{{ selectedUser.name }}</h2>
          <img
              @click="closeModal"
              src="./assets/cross.svg"
              alt="Search"
              class="cross-icon"
          />
        </div>
        <div class="info-grid">
          <div class="info-row">
            <p class="label fb">Телефон:</p>
            <p class="value fg">{{ selectedUser.phone }}</p>
          </div>
          <div class="info-row">
            <p class="label fb">Почта:</p>
            <p class="value fg">{{ selectedUser.email }}</p>
          </div>
          <div class="info-row">
            <p class="label fb">Дата приема:</p>
            <p class="value fg">{{ selectedUser.hire_date }}</p>
          </div>
          <div class="info-row">
            <p class="label fb">Должность:</p>
            <p class="value fg">{{ selectedUser.position_name }}</p>
          </div>
          <div class="info-row">
            <p class="label fb">Подразделение:</p>
            <p class="value fg">{{ selectedUser.department }}</p>
          </div>
        </div>
        <div class="other-info">
          <p class="label fb">Дополнительная информация:</p>
          <p class="value fg">{{ selectedUser.department }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import UserCard from './components/card.vue';
import SearchComponent from './components/search.vue';

export default {
  components: {
    SearchComponent,
    UserCard
  },
  data() {
    return {
      users: [],
      isModalOpen: false,
      selectedUser: null
    };
  },
  async created() {
    await this.fetchUsers();
  },
  methods: {
    handleSearchResults(results) {
      this.users = results;
    },
    async fetchUsers() {
      try {
        const response = await fetch('http://127.0.0.1:3000');
        if (!response.ok) {
          throw new Error('Ошибка при загрузке данных');
        }
        const data = await response.json();

        this.users = data.map(user => ({
          name: user.name,
          phone: user.phone,
          email: user.email,
          address: user.address,
          position_name: user.position_name,
          department: user.department,
          hire_date: user.hire_date
        }));
      } catch (error) {
        console.error('Ошибка:', error);
      }
    },
    openModal(user) {
      this.selectedUser = user;
      this.isModalOpen = true;
    },
    closeModal() {
      this.isModalOpen = false;
      this.selectedUser = null;
    }
  }
};
</script>

<style>
.user-cards-container {
  display: flex;
  flex-wrap: wrap;
  gap: 25px;
  padding: 20px;
  margin: 0 auto;
  justify-content: center;
  align-content: space-between;
}

.modal-overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal-content {
  background: white;
  padding: 24px;
  border-radius: 10px;
  max-width: 500px;
  height: 468px;
  width: 100%;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.modal-content h2 {
  margin-top: 0;
}

.modal-content button {
  margin-top: 20px;
  padding: 10px 20px;
  background: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.modal-content button:hover {
  background: #0056b3;
}

.block-cross {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
}

.cross-icon {
  cursor: pointer;
}

.info-grid {
  margin-top: 25px;
  display: flex;
  flex-direction: column;
  gap: 20px; /* Отступ между строками */
}

.info-row {
  display: flex;
  align-items: start;
}

.info-row .label {
  flex: 0 0 200px;
}

.info-row .value {
  flex: 1;
}
.other-info{
  margin-top: 35px;
}
.other-info .value{
  margin-top: 15px !important;
}
</style>