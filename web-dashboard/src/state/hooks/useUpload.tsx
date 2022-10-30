import { useState } from "react";
import { FileWithPath } from "react-dropzone";

export const getPreviewImage = (value: any) => {
  let images: any[] = [];
  if (value) {
    images = Array.isArray(value)
      ? value.map(({ thumbnail }) => ({ preview: thumbnail }))
      : [{ preview: value.thumbnail }];
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
      const dataAfterRemoveTypename = data?.map(
        ({ __typename, ...rest }: any) => rest
      );
      onChange(dataAfterRemoveTypename);
      setFiles(getPreviewImage(dataAfterRemoveTypename));
    }
  };
  
  //perform image upload
  setTimeout(() => {
    setLoader(false);
  }, 1000);
  
  function handleSubmit(data: File[]) {
    // upload(data);
  }

  return { handleSubmit, files, isLoading };
};
