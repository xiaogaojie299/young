<template>
  <div>
    <div class="top"><input v-model="checkall" @click="selectAll" type="checkbox"><span>全选</span></div>
    <div class="cart-item" v-for="(p,i) of list" :key=i>
      <img :src="p.pic" alt="">
      <div class="content">
        <div class="item">
          <span class="title">{{p.title}}</span>
          <span class="price">￥{{p.price.toFixed(2)}}</span>
          <div class="add">
            <mt-button class="btn" @click="sub" :data-num=i>-</mt-button>
            <span >{{p.count}}</span>  
            <mt-button class="btn" @click="sub" :data-num=i>+</mt-button>
          </div>  
        </div>
      </div>
       <div class="radio"><input type="checkbox"  @change="radio" v-model="p.cb"></div>
    </div>
    <div class="fixed-bottom">
      <div class="bottom">
      <mt-button class="b-btn1" @click="delAll">删除选中</mt-button>
      <span>合计：</span>
      <span>￥{{sum()}}.00</span>
      <mt-button class="b-btn" @click="unopen">结算</mt-button>
    </div>
    </div>
    
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: "",
      checkall: false,
      total: 0
    };
  },
  created() {
    this.load();
    //location.reload();
  },
  methods: {
    sum() {
      var total = 0;
      for (var item of this.list) {
        if (item.cb) {
          total += Math.floor(item.count) * Math.floor(item.price);
        }
      }
      return total;
    },
    sub(e) {
      var i = e.target.dataset.num;
      if (e.target.innerText == "+") {
        this.list[i].count++;
      } else if (e.target.innerText == "-") {
        if (this.list[i].count == 0) {
          this.list[i].count = 0;
        } else {
          this.list[i].count--;
        }
      }
    },
    load() {
      this.axios
        .get("/cart")
        .then(res => {
          var list = res.data;
          for (var item of list) {
            item.cb = false;
          }
          this.list = list;
        })
        .catch(err => {
          console.log(err);
        });
    },
    selectAll(e) {
      var cb = e.target.checked;
      var total = 0;
      for (var item of this.list) {
        item.cb = cb;
      }
    },
    radio() {
      for (var item of this.list) {
        if (!item.cb) {
          this.checkall = false;
          return;
        }
        if (item.cb) {
          this.checkall = true;
        }
      }
    },
    delAll() {
      var str = "";
      for (var item of this.list) {
        if (item.cb) {
          str += item.id + ",";
        }
      }
      if (str.length == 0) {
        this.$messagebox("请选择要删除的商品");
        return;
      }
      str = str.substring(0, str.length - 1);
      // console.log(str)
      this.$messagebox
        .confirm("是否要删除选中商品")
        .then(res => {
          this.axios
            .get("del", { params: { ids: str } })
            .then(res => {
              if (res.data.code == 1) {
                this.$toast("删除成功");
              }
              this.load();
            })
            .catch(err => {
              this.$toast("删除失败");
            });
        })
        .catch(err => {
          console.log(err);
        });
    },
    unopen() {
      this.$toast("暂未开放，敬请期待！");
    }
  }
};
</script>

<style scoped>
.top {
  display: fixed;
  display: flex;
  justify-items: space-between;
  align-items: center;
  margin: 5px 0 5px 2px;
}
img {
  width: 85px;
  height: 80px;
  border-radius: 5px;
  float: left;
}
.cart-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 5px;
}
.cart-item .content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.content .item {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-right: 150px;
}
.add {
  background: #ccc;
  border-radius: 5px;
}
.btn {
  height: 20px;
  background: #ccc;
}
.btn span {
  width: 40px;
}
.item .title {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 5px;
}
.fixed-bottom {
  position: fixed;
  right: 10px;
  bottom: 56px;
}
.bottom {
  margin-top: 10px;
  display: flex;
  justify-content: flex-start;
  align-items: center;
}
.b-btn {
  color: #fff;
  background: #e44a4a;
  margin-left: 5px;
}
.b-btn1 {
  color: #fff;
  background: #ee4444;
  margin-right: 10px;
}
</style>