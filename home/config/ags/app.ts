import app from "ags/gtk4/app"
import style from "./style.scss"
import Bar from "./widget/Bar"
import Box from "./widget/Box"

app.start({
  css: style,
  // main() {
  //   app.get_monitors().map(Bar)
  // },

  main() {
    Box(0)
  },

})