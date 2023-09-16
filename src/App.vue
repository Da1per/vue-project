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
        }
    }
}
</script>

<template>
<main>
    <div>
        <h1>Task</h1>
        <div class="block_task">
            <div v-if="this.outText" class="block_task_begin">
                {{this.outText}}
            </div>
            <textarea class="block_task_text" v-model='inText' placeholder="task...." />
            <input class="block_task_but" type="button" v-on:click='add' value="Add Task">
        </div>
        
    </div>
</main>

</template>

<style scoped>
    .block_task_begin{
        margin-bottom: 10%;
        width: 350px;
        padding: 4% 2%;
        border: 1px black solid;
        border-radius: 20px;
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
    .block_task_but:active{
        height: 70px;
        width: 180px;
        border-radius: 30px;
        color: azure;
        font-size: 28px;
        background-color: rgb(142, 143, 143);
        
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
