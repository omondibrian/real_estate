import { useState } from "react";
import { FileWithPath } from "react-dropzone";

export const getPreviewImage = (value: File | Array<File>) => {
  console.log("pre value = ", value);
  let images: Array<FileWithPath> = [];
  if (value) {
    images = Array.isArray(value)
      ? value.map((file) => ({ ...file,preview: URL.createObjectURL(file) }))
      : [{ ...value,preview: URL.createObjectURL(value) }];
  }
  return images;
};

export const useUploads = ({ onChange, defaultFiles }: any) => {
  const [files, setFiles] = useState<FileWithPath[]>(
    getPreviewImage(defaultFiles)
  );
  const [isLoading, setLoader] = useState(true);
  const handleSucessFullUpload = (data: any) => {
    if (onChange) {
      onChange(data);
      setFiles(getPreviewImage(data));
      console.log("handler =>", files);
      
    }
  };

  //perform image upload
  setTimeout(() => {
    setLoader(false);
  }, 1000);

  function handleSubmit(data: File[]) {
    handleSucessFullUpload(data);

    // upload(data);
  }

  return { handleSubmit, files, isLoading };
};
