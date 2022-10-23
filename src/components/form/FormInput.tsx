import React from "react";

interface InputProps {
  labelStr: string;
  placeHolder: string;
  name:string;
  error?: string;
  type: string;
  // handleChange: (e: React.ChangeEvent<HTMLInputElement>) => void;
}
const FormInput = React.forwardRef<HTMLInputElement, InputProps>(
  (props, ref) => {
    return (
      <div className="flex flex-wrap -mx-3  w-full mb-6">
        <div className="w-full px-3">
          <label
            className="block font-semibold text-sm mb-2"
            htmlFor={props.labelStr}
          >
            {props.labelStr}
          </label>
          <input
            ref={ref}
            type={props.type}
            id={props.name}
            name={props.name}
            placeholder={props.placeHolder}
            autoComplete="off"
            autoCorrect="off"
            autoCapitalize="off"
            spellCheck="false"
            aria-invalid={props.error ? "true" : "false"}
            className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
          />
          {props.error && (
            <p className="mt-2 text-xs text-red-500">{props.error}</p>
          )}
        </div>
      </div>
    );
  }
);

export default FormInput;

interface ITextAreaProps {
  handleReply: (data: any) => void;
  error?: string;
}

export const TextArea = React.forwardRef<HTMLTextAreaElement, ITextAreaProps>(
  (props, ref) => {
    const [reply, setReply] = React.useState("");
    return (
      <section className="mt-6 border rounded-xl bg-gray-50 mb-3">
        <textarea
          autoComplete="off"
          autoCorrect="off"
          autoCapitalize="off"
          spellCheck="false"
          ref={ref}
          className="w-full bg-gray-50 p-2 rounded-xl"
          placeholder="Type your reply here..."
          rows={3}
          onChange={(e) => setReply(e.target.value)}
        ></textarea>
        <div className="flex items-center justify-between p-2">
          <button
            className="bg-purple-600 text-white px-6 py-2 rounded-xl"
            onClick={() => props.handleReply(reply)}
          >
            Reply
          </button>
        </div>
        {props.error && (
            <p className="mt-2 text-xs text-red-500">{props.error}</p>
          )}
      </section>
    );
  }
);
