# SqlDom

Концепция

```body>
    <div class="myClass">
        <div class="childClass"></div>    
        <div></div>
        <div class="childClass"></div>    
        <div></div>
    </div>
</body>```
SD('select * from div.myClass as selector
where selector>div.childClass')
