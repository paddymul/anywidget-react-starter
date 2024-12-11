import * as React from "react";
import { createRender, useModelState } from "@anywidget/react";
import srt from "some-react-tsxlib";
import "./widget.css";

const unused = () => {
    	const [value, setValue] = useModelState<number>("value");
	return (
		<div className="anyw2_react">
			<button onClick={() => setValue(value + 1)}>
				count is {value}
			</button>
		</div>
	);
}
const render = createRender(() => {
    console.log("old render 17");
    return <srt.Counter />
});


export default { render };
