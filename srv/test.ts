import { ApplicationService,Request } from "@sap/cds";
class test extends ApplicationService{
    init(): Promise<void> {
        this.on('helloWorld',(req:Request)=>{
            req.reply("Hello World");
        })
        return super.init();
    }
}
export default test;