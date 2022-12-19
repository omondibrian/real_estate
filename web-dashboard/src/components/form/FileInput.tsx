import React from "react";

import { Controller } from "react-hook-form";
import Uploader from "./Uploader";

interface FileInputProps {
  control: any;
  name: string;
  multiple?: boolean;
}

function FileInput({ control, name, multiple }: FileInputProps) {
  return (
    <Controller
      control={control}
      name={name}
      defaultValue={[]}
      render={({ field: { ref, ...rest } }) => (
        <Uploader {...rest}  multiple={multiple || false} />
      )}
    />
  );
}

export default FileInput;
