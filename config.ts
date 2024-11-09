import Memory from "./memory";
import App from "./page_object";
export default {
  defaultTimeout: 60000,
  paths: ["features/base_checks.feature"],
  require: ["step_definition/*.ts","node_modules/@qavajs/steps-playwright/index.js","node_modules/@qavajs/steps-memory/index.js"],
  requireModule: [],
  format: ["@qavajs/console-formatter","@qavajs/html-formatter:report/report.html"],
  memory: new Memory(),
  pageObject: new App(),
  browser: {
    screenshot: ["onFail"],
    capabilities: {
      browserName: "chromium",
      headless: true
    //args: ['--user-agent=Googlebot Desktop"']
    },
    timeout: {
                present: 10000,
                visible: 10000,
                page: 10000,
                value: 5000, // expect value timeout
                valueInterval: 500 //expect value interval  
            },
   //trace: {
           //event: ['onFail'], // Events to save trace. Possible values onFail or AfterScenario 
         //dir: 'report', // Dir to store traces. Default is traces/
         //attach: false // Define if trace need to be attached to cucumber report. Default false
      // }
  },
}
