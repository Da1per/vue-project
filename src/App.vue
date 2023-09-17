<script>
export default {
    data(){
            return{
                inText:'',
                outText:''
            }
    },
    methods:{
        add: function (){
            this.outText=this.inText
            this.inText=''
        },
        close: function(){
            this.outText=''
        }

    }
}
</script>

<template>
<main>
    <div>
        <h1>Task</h1>
        <div class="block_task">
            <div  v-if="this.outText" class="block_task_begin">
                {{this.outText}}
                <button class="block_task_begin_but" v-on:click="close">Delete</button>
            </div>
            <textarea class="block_task_text" v-model='inText' placeholder="task...." />
            <input :disabled="!this.inText" class="block_task_but" type="button" v-on:click='add' value="Add Task">
        </div>
        
    </div>
</main>

</template>

<style scoped>
    .block_task_begin{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-bottom: 10%;
        width: 350px;
        padding: 4% 2%;
        border: 1px black solid;
        border-radius: 20px;
    }
    .block_task_begin_but{
        border-radius: 20px;
        background-color: brown;
        color: aliceblue;
        transition: all 0.2s;
        
    }
    .block_task_begin_but:hover:active{
        height: 30px;
        width: 20%;
        background-color: black;
        color:#ffffff ;
    }
    .block_task_begin_but:hover{
        height: 25px;
        width: 18%;
        background-color: #5b0000;
    }
    .block_task{
        display: flex;

    }
    .block_task_text{
        margin: 0 0 10% 0;
        padding: 4% 2%;
        width: 350px;
        height: 80px;
        border-radius: 20px;

    }
    .block_task_but{
        height: 50px;
        width: 150px;
        font-size: 22px;
        font-weight: bold;
        border-radius: 20px;
        transition: all 0.1s;
    }
    .block_task_but:hover:active{
        height: 70px;
        width: 180px;
        border-radius: 30px;
        color: azure;
        font-size: 28px;
        background-color: rgb(20, 5, 137);   
    }
    .block_task_but:hover{
        height: 60px;
        width: 170px;
        background-color: #9f9d9d6b;
    }
    main{
        height: 40em;
        display:flex;
        justify-content: center;
        align-items: center;
    }
    div{
        display:flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
</style>
